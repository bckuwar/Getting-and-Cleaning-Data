# Getting and Cleaning Data Course Project

## Introduction:    
This repo was created for Getting and Cleaning Data course project. The assignment checks the student ability to download, transform and create new tidy data sets.  

Here are the links to the original data source:  
 **Data Set Information**:   
 [http://archive.ics.uci.edu/ml/datasets/Human+Activity+Recognition+Using+Smartphones](http://archive.ics.uci.edu/ml/datasets/Human+Activity+Recognition+Using+Smartphones).   
**Actual Data**:   
[https://d396qusza40orc.cloudfront.net/getdata%2Fprojectfiles%2FUCI%20HAR%20Dataset.zip](https://d396qusza40orc.cloudfront.net/getdata%2Fprojectfiles%2FUCI%20HAR%20Dataset.zip)   

## Repo Contents:    

###run_analysis.R
It includes R code to download files, transform data and to create a new tidy data set.     
Steps involved:
* Download files from the original source and load into R data frame objects
* Merge *train* and *test* data for Subject, Activities and Data (measurements)  
* Transform Data:
  * Transform "Data" data frame
    * Assign labels to variables 
    * Filter in only mean and standard deviation attributes
    * Clean up label names
  * Transform "Activity" data frame
    * Replace activity number with descriptive activity name  
* Merge Subject, Activity and Data data frames  
* Create new tidy data frame containing average values of all variables by subject and activity
* Write tidy data frame to file "tidyData.txt" 

###tidyData.txt
This file contains the transformed tidy data.

###CodeBook.md
This file describes the variables and data in file "tidyData.txt".  


