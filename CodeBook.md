## Code Book:  Course 3- Getting & Cleaning Data Assignment
### This data dictionary describes the variables in the "summ" dataset, created by the run_analysis.R script

The data is derived from experiments for the Human Activity Recognition Using Smartphones Project.  Further project detail can be found at http://archive.ics.uci.edu/ml/datasets/Human+Activity+Recognition+Using+Smartphones#

The dataset, "summ", is a subset of measurement calculations taken during the HAR Project.  This subset summarizes the data by calculating the mean of samples taken within a 2.56-second window (up to 128 samples per window).  Each sample or observation was used to calculate the mean ( mean() ) and standard deviation ( std() ) values previous to the "summ" dataset. 

The "person" ID was maintained as a categorical variable in numeric form to enable grouping.  It was originally named "subject" but this term was not descriptive enough.  The numeric "activity" variable was also factorized to allow subgrouping of mean() and std().  It was relabeled with terms that more accurately describe the type of subjects' physical activity than no numbers.

All 66 variables listed beyond "person" and "activity" contain the **MEAN VALUE** of these samples' mean() and std().  Columns with variable names including "MeanFreq()" and those ending in "Mean" were not included in "summ" because they represent calculations of mean sub-frequencies for one reading only whereas mean() covers multiple observations per time window, as requested.   

Two electrical components in the smartphone were used to take readings:  1)  Accelerometer and 2) Gyroscope.
Each component's motion during the activity can be measured in terms of a "time domain" or its alternative "frequency domain."  Both perspectives were calculated from Accelerometer and Gyroscope outputs.  Tri-axial readings were also measured (X, Y, Z direction).  Accelerometer readings have two components superimposed:  the action of the person wearing the device ("body"), and the effect of the Earth's gravity ("gravity").  These components are split out into separate variables.  "Mag"nitude and body "jerk" measurements were also taken.

Further information is found in the accompanying README.md file.

<br>

**Variables List Format:**

* Variable Name
	+ Description
	+ Unit (if applicable)
	+ Values (if applicable)	

	<br> 

**Variables:**

*  person
	+ The subject who participated in the experiment
	+ Values: ID, range of 1-30

	<br>
	
*  activity
	+ Physical activities performed by the subject
	+ Values:
		- walking
		- walking_upstairs
		- walking_downstairs
		- sitting
		- standing
		- laying

		<br>
	
*  tBodyAcc-mean()(-X, -Y, -Z coordinate direction of motion)
	+ Time domain, body acceleration, mean of samples
	+ Unit:  g's (standard gravity unit)

	<br>

*  tBodyAcc-std()(-X, -Y, -Z coordinate direction of motion)
	+ Time domain, body acceleration, std dev of samples
	+ Unit:  g's (standard gravity unit)

	<br>
	
*  tGravityAcc-mean()(-X, -Y, -Z coordinate direction of motion)
	+ Time domain, gravity acceleration, mean of samples
	+ Unit:  g's (standard gravity unit)

	<br>

*  tGravityAcc-std()(-X, -Y, -Z coordinate direction of motion)
	+ Time domain, gravity acceleration, std dev of samples
	+ Unit:  g's (standard gravity unit)

	<br>

*  tBodyAccJerk-mean()(-X, -Y, -Z coordinate direction of motion)
	+ Time domain, body acceleration, being jerked, mean of samples
	+ Unit:  g's (standard gravity unit)

	<br>

*  tBodyAccJerk-std()(-X, -Y, -Z coordinate direction of motion)
	+ Time domain, body acceleration, being jerked, std dev of samples
	+ Unit:  g's (standard gravity unit)

	<br>

*  tBodyGyro-mean()(-X, -Y, -Z coordinate direction of motion)
	+ Time domain, gyroscope angular velocity of body, mean of samples
	+ Unit:  radians/second

	<br>

*  tBodyGyro-std()(-X, -Y, -Z coordinate direction of motion)
	+ Time domain, gyroscope angular velocity of body, std dev of samples
	+ Unit:  radians/second

	<br>

*  tBodyGyroJerk-mean()(-X, -Y, -Z coordinate direction of motion)
	+ Time domain, gyroscope angular velocity of body, being jerked, mean of samples
	+ Unit:  radians/second

	<br>

*  tBodyGyroJerk-std()(-X, -Y, -Z coordinate direction of motion)
	+ Time domain, gyroscope angular velocity of body, being jerked, std dev of samples
	+ Unit:  radians/second

	<br>

*  tBodyAccMag-mean()
	+ Time domain, body acceleration, magnitude, mean of samples
	+ Unit:  g's (standard gravity unit)

	<br>

*  tBodyAccMag-std()
	+ Time domain, body acceleration, magnitude, std dev of samples
	+ Unit:  g's (standard gravity unit)

	<br>

*  tGravityAccMag-mean()
	+ Time domain, gravity acceleration, magnitude, mean of samples
	+ Unit:  g's (standard gravity unit)

	<br>

*  tGravityAccMag-std()
	+ Time domain, gravity acceleration, magnitude, std dev of samples
	+ Unit:  g's (standard gravity unit)

	<br>

*  tBodyAccJerkMag-mean()
	+ Time domain, body acceleration, being jerked, magnitude, mean of samples
	+ Unit:  g's (standard gravity unit)

	<br>

*  tBodyAccJerkMag-std()
	+ Time domain, body acceleration, being jerked, magnitude, std dev of samples
	+ Unit:  g's (standard gravity unit)

	<br>
		
*  tBodyGyroMag-mean()
	+ Time domain, gyroscope angular velocity of body, magnitude, mean of samples
	+ Unit:  radians/second

	<br>
		
*  tBodyGyroMag-std()
	+ Time domain, gyroscope angular velocity of body, magnitude, std dev of samples
	+ Unit:  radians/second

	<br>
		
*  tBodyGyroJerkMag-mean()
	+ Time domain, gyroscope angular velocity of body, being jerked, magnitude, mean of samples
	+ Unit:  radians/second

	<br>
		
*  tBodyGyroJerkMag-std()
	+ Time domain, gyroscope angular velocity of body, being jerked, magnitude, std dev of samples
	+ Unit:  radians/second

	<br>
		
*  fBodyAcc-mean()(-X, -Y, -Z coordinate direction of motion)
	+ Frequency domain, body acceleration, mean of samples
	+ Unit:  g's (standard gravity unit)

	<br>

*  fBodyAcc-std()(-X, -Y, -Z coordinate direction of motion)
	+ Frequency domain, body acceleration, std dev of samples
	+ Unit:  g's (standard gravity unit)

	<br>

*  fBodyAccJerk-mean()(-X, -Y, -Z coordinate direction of motion)
	+ Frequency domain, body acceleration, being jerked, mean of samples
	+ Unit:  g's (standard gravity unit)

	<br>

*  fBodyAccJerk-std()(-X, -Y, -Z coordinate direction of motion)
	+ Frequency domain, body acceleration, being jerked, std dev of samples
	+ Unit:  g's (standard gravity unit)

	<br>

*  fBodyGyro-mean()(-X, -Y, -Z coordinate direction of motion)
	+ Frequency domain, gyroscope angular velocity of body, mean of samples
	+ Unit:  radians/second

	<br>

*  fBodyGyro-std()(-X, -Y, -Z coordinate direction of motion)
	+ Frequency domain, gyroscope angular velocity of body, std dev of samples
	+ Unit:  radians/second

	<br>

*  fBodyAccMag-mean()
	+ Frequency domain, body acceleration, magnitude, mean of samples
	+ Unit:  g's (standard gravity unit)

	<br>
		
*  fBodyAccMag-std()
	+ Frequency domain, body acceleration, magnitude, std dev of samples
	+ Unit:  g's (standard gravity unit)

	<br>
		
*  fBodyBodyAccJerkMag-mean()
	+ Frequency domain, body-to-body acceleration, being jerked, magnitude, mean of samples
	+ Unit:  g's (standard gravity unit)
	
	<br>

*  fBodyBodyAccJerkMag-std()
	+ Frequency domain, body-to-body acceleration, being jerked, magnitude, std dev of samples
	+ Unit:  g's (standard gravity unit)
	
	<br>

*  fBodyBodyGyroMag-mean()
	+ Frequency domain, gyroscope angular velocity of body-to-body, magnitude, mean of samples
	+ Unit:  radians/second
	
	<br>

*  fBodyBodyGyroMag-std()
	+ Frequency domain, gyroscope angular velocity of body-to-body, magnitude, std dev of samples
	+ Unit:  radians/second
	
	<br>

*  fBodyBodyGyroJerkMag-mean()
	+ Frequency domain, gyroscope angular velocity of body-to-body, being jerked, magnitude, mean of samples
	+ Unit:  radians/second
	
	<br>

*  fBodyBodyGyroJerkMag-std()
	+ Frequency domain, gyroscope angular velocity of body-to-body, being jerked, magnitude, std dev of samples
	+ Unit:  radians/second
	
	<br>
