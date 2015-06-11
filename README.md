# Getting and Cleaning Data Course Project

## Introduction:    
This repository was created for the course project of Getting and Cleaning Data module of Data Science specialization series offered by the Johns Hopkins University.  The assignment checks the student's ability to download, transform and create new tidy data sets.  

Here are the links to the original data source:  
 **Data Set Information**:   
 [http://archive.ics.uci.edu/ml/datasets/Human+Activity+Recognition+Using+Smartphones](http://archive.ics.uci.edu/ml/datasets/Human+Activity+Recognition+Using+Smartphones).   
**Actual Data**:   
[https://d396qusza40orc.cloudfront.net/getdata%2Fprojectfiles%2FUCI%20HAR%20Dataset.zip](https://d396qusza40orc.cloudfront.net/getdata%2Fprojectfiles%2FUCI%20HAR%20Dataset.zip)   

## Project Work:    
The code to download file, transform data and create new tidy data set is include in file "run_analysis.R".     
Here are the steps:
* Download files from the original source and load into R data frame objects
* Merge --train-- and --test-- data for Subject, Activities and Data (measurements)  
* Transform data:
  * Transform "Data" data frame
    * Assigning labels to variable 
    * Filtering only mean and std dev attributes in Measurement data frame
    * Clean up label names
  * Transform "Activity" data frame
    * Using descriptive activity name in the Activity data frame  
* Merge Subject, Activity and Data data frames  
* Create new tidy data frame containing average values of all variables by subject and activity
* Write tidy data frame to file "tidyData.txt" 
* Create codebook "CodeBook.md" for data file "tidyData.txt"
* Modify README.md to 


