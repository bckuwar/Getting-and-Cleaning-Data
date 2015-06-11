#Codebook for Human Activity Recognition Using Smartphone Data Set

# Introduction:
This codebook describes the data file “tidyData.txt” that was generated from data obtained from UCI Machine Learning Repository.  Here are the links to the source:
Data Information: http://archive.ics.uci.edu/ml/datasets/Human+Activity+Recognition+Using+Smartphones.  
Actual Data: https://d396qusza40orc.cloudfront.net/getdata%2Fprojectfiles%2FUCI%20HAR%20Dataset.zip 

Companies like Nike, Fitbit and Jawbone Up are racing to develop advanced algorithm for their wearable fitness gadgets. This data set contains human activity measurements from Samsung Galaxy S smartphone. 
Please refer to link above for more information.  

Key Characteristics of “tidyData.txt”:
* Data Characteristics:  Multi-variate, Axial
* Number of Instances: 180
* Number of Attributes:  68

## Data Dictionary:
* Subject (Identifier for subject performing the activity)
..* Data Type = Integer
..* Values = 1:30  
* Activity
..* Data Type = Character 	
..* Values = WALKING, WALKING_UPSTAIRS, WALKING_DOWNSTAIRS, SITTING, STANDING, LAYING

### All remaining attributes below  and they represent measurements from accelerometer and gyroscope, which is averaged for each subject and activity. The following abbreviation map could be used to interpret the type of measurement:  t – Time Domain; f – Frequency Domain; Acc – Accelerometer Data; Gyro – Gyroscope Data; Body – Body Data; Gravity – Gravity Data; Jerk – Jerk Data; Mag – Magnitude; X, Y, Z – Measurements along X, Y & Z axis
*tBodyAcc-Mean-X-Mean 
*tBodyAcc-Mean-Y-Mean 
*tBodyAcc-Mean-Z-Mean 
*tBodyAcc-StdDev-X-Mean 
*tBodyAcc-StdDev-Y-Mean 
*tBodyAcc-StdDev-Z-Mean 
*tGravityAcc-Mean-X-Mean 
*tGravityAcc-Mean-Y-Mean 
*tGravityAcc-Mean-Z-Mean 
*tGravityAcc-StdDev-X-Mean 
*tGravityAcc-StdDev-Y-Mean 
*tGravityAcc-StdDev-Z-Mean 
*tBodyAccJerk-Mean-X-Mean 
*tBodyAccJerk-Mean-Y-Mean 
*tBodyAccJerk-Mean-Z-Mean 
*tBodyAccJerk-StdDev-X-Mean 
*tBodyAccJerk-StdDev-Y-Mean 
*tBodyAccJerk-StdDev-Z-Mean 
*tBodyGyro-Mean-X-Mean 
*tBodyGyro-Mean-Y-Mean 
*tBodyGyro-Mean-Z-Mean 
*tBodyGyro-StdDev-X-Mean 
*tBodyGyro-StdDev-Y-Mean 
*tBodyGyro-StdDev-Z-Mean 
*tBodyGyroJerk-Mean-X-Mean 
*tBodyGyroJerk-Mean-Y-Mean 
*tBodyGyroJerk-Mean-Z-Mean 
*tBodyGyroJerk-StdDev-X-Mean 
*tBodyGyroJerk-StdDev-Y-Mean 
*tBodyGyroJerk-StdDev-Z-Mean 
*tBodyAccMag-Mean-Mean 
*tBodyAccMag-StdDev-Mean 
*tGravityAccMag-Mean-Mean 
*tGravityAccMag-StdDev-Mean 
*tBodyAccJerkMag-Mean-Mean 
*tBodyAccJerkMag-StdDev-Mean 
*tBodyGyroMag-Mean-Mean 
*tBodyGyroMag-StdDev-Mean 
*tBodyGyroJerkMag-Mean-Mean 
*tBodyGyroJerkMag-StdDev-Mean 
*fBodyAcc-Mean-X-Mean 
*fBodyAcc-Mean-Y-Mean 
*fBodyAcc-Mean-Z-Mean 
*fBodyAcc-StdDev-X-Mean 
*fBodyAcc-StdDev-Y-Mean 
*fBodyAcc-StdDev-Z-Mean 
*fBodyAccJerk-Mean-X-Mean 
*fBodyAccJerk-Mean-Y-Mean 
*fBodyAccJerk-Mean-Z-Mean 
*fBodyAccJerk-StdDev-X-Mean 
*fBodyAccJerk-StdDev-Y-Mean 
*fBodyAccJerk-StdDev-Z-Mean 
*fBodyGyro-Mean-X-Mean 
*fBodyGyro-Mean-Y-Mean 
*fBodyGyro-Mean-Z-Mean 
*fBodyGyro-StdDev-X-Mean 
*fBodyGyro-StdDev-Y-Mean 
*fBodyGyro-StdDev-Z-Mean 
*fBodyAccMag-Mean-Mean 
*fBodyAccMag-StdDev-Mean 
*fBodyAccJerkMag-Mean-Mean 
*fBodyAccJerkMag-StdDev-Mean 
*fBodyGyroMag-Mean-Mean 
*fBodyGyroMag-StdDev-Mean 
*fBodyGyroJerkMag-Mean-Mean 
*fBodyGyroJerkMag-StdDev-Mean
