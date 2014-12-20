#Tidy Data Script | run_analysis.R | README | Coursera Getting and Cleaning Data Course Project
  The way the run_analysis.R script works is:
  
##Original Data
  It takes already existing data from this website: 
  - http://archive.ics.uci.edu/ml/datasets/Human+Activity+Recognition+Using+Smartphones
Original data is downable from here:
  - https://d396qusza40orc.cloudfront.net/getdata%2Fprojectfiles%2FUCI%20HAR%20Dataset.zip

##Goal
The goal of the script is to prepare tidy data that can be used for later analysis.

##Background on Original Data
To better understand the data being cleaned, download the data using the link above and review the following files:
  - README.txt
  - features_info.txt
  
###Brief Summary
The experiments have been carried out with a group of 30 volunteers within an age bracket of 19-48 years. Each person performed six activities (WALKING, WALKING_UPSTAIRS, WALKING_DOWNSTAIRS, SITTING, STANDING, LAYING) wearing a smartphone (Samsung Galaxy S II) on the waist. Using its embedded accelerometer and gyroscope, we captured 3-axial linear acceleration and 3-axial angular velocity at a constant rate of 50Hz. The experiments have been video-recorded to label the data manually. The obtained dataset has been randomly partitioned into two sets, where 70% of the volunteers was selected for generating the training data and 30% the test data. 
source: http://archive.ics.uci.edu/ml/datasets/Human+Activity+Recognition+Using+Smartphones

##Data
For this script, the following data files are used from the original data set: "features.txt", "activity_labels.txt" and within the "test" and "train" folders the files named "subject_", "x_", "y_", with either a test.txt or train.txt ending depending on which folder they are in.

##Packages
Please make sure you have installed and run the following packages in your R console prior to running the script. Also listed are the specific functions used from that package:
- base - cbind, rbind, sapply, names, gsub, grep
- utils - read.table
- reshape - melt
- dplyr - summarise_each, group_by, funs

##Code steps
The run_analysis.R code meets the requirements layed out below (not necessarily in this order, with the only requirement being the last bullet be carried out last):
- Merges the training and the test sets to create one data set
- Extracts only the measurements on the mean and standard deviation for each measurement
- Uses descriptive activity names to name the activities in the data set
- Appropriately labels the data set with descriptive variable names 
- Lastly, creates a second, independent tidy data set with the average of each variable for each activity and each subject

Additional comments are available explaining each line of code in run_analysis.R

####Before continuing, please be sure to review the original data README.txt and feature_info.txt which is downloadable at the top of this document
####Further information about the tidy data set it's variables is available in the CodeBook.md
