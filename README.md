#Background/Original Data
The way the run_analysis script works is we were given an original data set, descriped here: source: http://archive.ics.uci.edu/ml/datasets/Human+Activity+Recognition+Using+Smartphones)
The experiments have been carried out with a group of 30 volunteers within an age bracket of 19-48 years. Each person performed six activities (WALKING, WALKING_UPSTAIRS, WALKING_DOWNSTAIRS, SITTING, STANDING, LAYING) wearing a smartphone (Samsung Galaxy S II) on the waist. Using its embedded accelerometer and gyroscope, we captured 3-axial linear acceleration and 3-axial angular velocity at a constant rate of 50Hz. The experiments have been video-recorded to label the data manually. The obtained dataset has been randomly partitioned into two sets, where 70% of the volunteers was selected for generating the training data and 30% the test data. 

source: source: http://archive.ics.uci.edu/ml/datasets/Human+Activity+Recognition+Using+Smartphones

For this assignment, it is suggested you also familiarize yourself with descriptions of the features.txt. This will also be useful in understanding the CodeBook.md in this repository:



The goal of this assignment was to take an original dataset and prepare tidy data that can be used for later analysis. A description of the original data

The following packages will be needed to run this code in R:
-Name of Package/Functions Used:
  - utils/read.table
  - base/cbind, rbind, sapply, names, gsub, grep
  - reshape/melt
  - dplyr/summarise_each, group_by, funs
  - 
