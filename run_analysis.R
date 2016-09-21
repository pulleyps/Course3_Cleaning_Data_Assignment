# Course Assignment, Getting and Cleaning Data
# P. Pulley

library(dplyr)

# Download and extract zip files;  Load tables.  Stitch together "test" and "train" tables.
if(!file.exists("./Assign")){dir.create("./Assign")}
fileUrl <- "https://d396qusza40orc.cloudfront.net/getdata%2Fprojectfiles%2FUCI%20HAR%20Dataset.zip"
download.file(fileUrl, "./Assign/zipdata.zip", method = "curl", mode = "wb")
unzip("./Assign/zipdata.zip", exdir = "./Assign")

subjtest <- read.table("./UCI HAR Dataset/test/subject_test.txt")
ytest <- read.table("./UCI HAR Dataset/test/y_test.txt")
xtest <- read.table("./UCI HAR Dataset/test/X_test.txt")
test <- cbind(subjtest, ytest, xtest)

subjtrain <- read.table("./UCI HAR Dataset/train/subject_train.txt")
ytrain <- read.table("./UCI HAR Dataset/train/y_train.txt")
xtrain <- read.table("./UCI HAR Dataset/train/X_train.txt")
train <- cbind(subjtrain, ytrain, xtrain)

# Stitch "train" and "test" tables together to form large raw data frame
datastitch <- rbind(train, test)

# Add features to raw data as a header.  Add column names for subject (person) and activity
features <- read.table("./UCI HAR Dataset/features.txt")
header <- c("person","activity", as.character(features$V2))
colnames(datastitch) <- header

# Transform person and activity columns to categorical "factor" variables
datastitch$person <- factor(datastitch$person)
actlabs <- read.table("./UCI HAR Dataset/activity_labels.txt")
datastitch$activity <- factor(datastitch$activity, labels = tolower(as.character(actlabs$V2)))

# Extract variables that have only "mean()" or "std()" in the header; Subset the data frame
names <- names(datastitch)
namesextract <- names[grep("mean\\(\\)|std\\(\\)", names)]
datatrim <- datastitch[,c("person", "activity", namesextract)] 

# Calculate the mean of each mean/std column, grouped by person and activity 
summ <- datatrim %>% group_by(person, activity) %>% summarize_each(funs(mean))
summ
