## README FILE:  Course 3- Getting & Cleaning Data Assignment
### This Readme file discusses the run_analysis.R script and the tidyness of the "summ" dataset submitted.

The script was developed to stitch together raw data and tidy it up for analysis, creating a summary dataset ("summ") that provides the mean values of mean() and std() columns, grouped by person (subject) and then by activity.   Further information about the data is found in CodeBook.md.

<BR>

KEY STEPS TAKEN:

1. Load the dplyr package

2. Download the source zip file;  Unzip the file, assigning a specific directory to store the files

3. Read the test files (subject ID, activity labels, and measurement values) and stitch them together, naming the dataset "test"

4. Read the train files (subject ID, activity labels, and measurement values) and stitch them together, naming the dataset "train"

5. Stitch "test" and "train" together into raw dataset "datastitch";  dim(datastitch)--> 10299 obs by 563 variables

6. Read the features.txt file and concatenate descriptive titles "person" for subject and "activity" in dataset "header", and append to "datastitch"

7. Factorize "person" and "activity" columns to enable grouping by these columns; Made "activity" column lower case to make it easier to read

8. Extract all columns in "datastitch" with "mean()" or "std()" resulting in a new, subsetted dataset "datatrim"; dim(datatrim) --> 10299 obs by 68 variables

9. Group by "person" and "activity" and take the mean value of each subsequent mean() and std() column; store the result in dataset "summ";  dim(summ) --> 180 obs by 68 variables

10. View "summ" dataset

<BR>

"summ" is a wide, tidy dataset.  According to Hadley Wickham[^1], the general criteria for a tidy dataset are:

1. Each variable forms a column.  (And no column duplication.)
2. Each observation forms a row.
3. Each type of observational unit forms a table.

The caveat above is that the type or degree of tidyness to apply really depends on the problem or analysis goal at hand.

Theoretically, "summ" variables could be modified to fit Wickham's criteria, such as re-casting the dataframe with new variables: "person", "activity", "domain" (time or frequency), "type" (body acceleration, gravity acceleration, gyroscopic angular velocity), "jerk" (yes/no), "magnitude" (yes/no), "statistic" (mean/std), "dimension" (x/y/z).  Unfortunately, the nature of the problem does not require doing any of this because the goal is to calculate means of the columns as they already stand. In addition, there are no NAs in the dataset and manipulating the columns would easily add NAs making data analysis difficult or error prone.

~~~
> table(is.na(datatrim))
 FALSE 
 700332 
~~~
<BR>

The following code was used to write the "summ" dataset to summ.txt:

~~~
write.table(summ, "./summ.txt", row.names = FALSE)
~~~

Therefore, the following code should read in the code adequately: 

~~~
summ <- read.table("./summ.txt", header = TRUE)
~~~

<BR>

[^1]: Reference: "Tidy Data" by Hadley Wickham, Journal of Statistical Software; 
http://vita.had.co.nz/papers/tidy-data.pdf