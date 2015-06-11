# Author: Bijay Kuwar; Date: June 10, 2015
# Objective: To collect, transform and clean smartphone data set. 

 library(plyr)

 #Do not download if the file already exists in the working directory
 if (!file.exists("data.zip")){
    fileSource <- "https://d396qusza40orc.cloudfront.net/getdata%2Fprojectfiles%2FUCI%20HAR%20Dataset.zip"
    fileDest <- "data.zip"
    download.file(fileSource,fileDest, method = "curl")
    dataDownloaded <- date()
    unzip("data.zip")
 }

 #Read all files 
 trainData <- read.table("./UCI HAR Dataset/train/X_train.txt")
 trainActivity <- read.table("./UCI HAR Dataset/train/Y_train.txt")
 trainSubject <- read.table("./UCI HAR Dataset/train/subject_train.txt")
 testData <- read.table("./UCI HAR Dataset/test/X_test.txt")
 testActivity <- read.table("./UCI HAR Dataset/test/Y_test.txt")
 testSubject <- read.table("./UCI HAR Dataset/test/subject_test.txt")
 actLabel <- read.table("./UCI HAR Dataset/activity_labels.txt")
 features <- read.table("./UCI HAR Dataset/features.txt")

 #Merge train and test data. Set column names. 
 mergedData <- rbind(trainData, testData)
 names(mergedData) <- features[,2]

 #Merge train and test activities.  Set column name.
 mergedActivity <- rbind(trainActivity, testActivity)
 names(mergedActivity) <- "Activity"
 
 #Merge train and test subjects.  Set column name.
 mergedSubject <- rbind(trainSubject, testSubject)
 names(mergedSubject) <- "Subject"
 
 ##Transform data 
 #Filter out columns other than mean and std dev in narrowMergedData  
 matches <- grep("(mean|std)\\(\\)", names(mergedData))
 narrowMergedData <- mergedData[, matches]
 
 #Clean up variable names
 names(narrowMergedData) <- gsub("mean\\(\\)", "Mean", names(narrowMergedData))
 names(narrowMergedData) <- gsub("std\\(\\)", "StdDev", names(narrowMergedData))
 names(narrowMergedData) <- gsub("BodyBody", "Body", names(narrowMergedData))
 
 #Replace activity code with description 
 activityLabel <- sub("_", " ",actLabel[,2])
 mergedActivity$Activity <- mapvalues(mergedActivity$Activity, 
                                        from = levels(factor(mergedActivity$Activity)), 
                                        to = activityLabel)
 
 #Bind subject, activity and data into one DF
 combinedData = cbind(mergedSubject, mergedActivity, narrowMergedData)
 
 #Create independent tidy data set with the average of each variable for each activity and each subject
 tidyData <- ddply(combinedData,c("Subject","Activity"),numcolwise(mean))
 
 #Adjust column names accordingly
 names(tidyData)[-c(1,2)] <- paste(names(tidyData)[-c(1,2)],"-Mean",sep="")  
 
 #write to a file
 write.table(file = "tidyData.txt", x = tidyData, row.names = FALSE) 