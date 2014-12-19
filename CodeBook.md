Background on the data being used can be found in ReadMe.md in this repository. This CodeBook contains the descriptions of the data, variables and summarizes the work performed to clean up the data from the original study into a tidy form for future analysis. 

The background of the data can be found here: http://archive.ics.uci.edu/ml/datasets/Human+Activity+Recognition+Using+Smartphones
And the data can be downloaded here: 
https://d396qusza40orc.cloudfront.net/getdata%2Fprojectfiles%2FUCI%20HAR%20Dataset.zip
The downloadable file above also includes additional background on the data. This will also be summarized in the read me.

Using the original data, download and unzip the following files to your working directory:
"activity_labels.txt"
"features.txt"
And from of the Train and Test folders use the subject_, x_, and y_ files (ending in train.txt or test.txt)

run_analysis.R performs the following steps:
- Merge the training and test sets to create one data set 
- Extracts only the measurements on the mean and standard deviation for each measurement: 
- Uses descriptive activity names to name the activities in the data set
- Appropriately labels the data set with descriptive variable names. 
- From the data set in step 4, creates a second, independent tidy data set with the average of each variable for each activity and each subject.
Specifics of how/when these steps were carried out are noted in the run_analysis.txt file in this repository.

Running run_analysis.R results in a long-tidy data.frame of dimensions (14,220x4). I used the long data form for this data set because it was easier to view in the R console and since "The goal is to prepare tidy data that can be used for later analysis", I felt the long version provided better options to carry out later analysis.

The 4 column variables are: subject, activity, feature, average:

subject: each individual participating in the study was assigned a unique identifying number 1-30

activity: each subject was measured performing one of six activities 1 - WALKING, 2 - WALKING_UPSTAIRS, 3 - WALKING_DOWNSTAIRS, 4 - SITTING, 5 - STANDING, 6 -

feature: each activity was measured by one of these features. The best descriptions of these features are found in the original data set downloadable at the top of this document in the "features_info.txt" and also summarized in the Read.Me in this repository. It should be noted that the original data contained 561 features. For this project, the features were melted into a single column and reduced to 79 levels containing only those features which included mean and standard deviation (std) measurements. There were 7 levels containing the word Mean that were excluded because they were not appropriate feature types
"tBodyAcc.meanX"
"tBodyAcc.meanY"
"tBodyAcc.meanZ"
"tGravityAcc.meanX"
"tGravityAcc.meanY"
"tGravityAcc.meanZ"
"tBodyAccJerk.meanX"
"tBodyAccJerk.meanY"
"tBodyAccJerk.meanZ"
"tBodyGyro.meanX"
"tBodyGyro.meanY"
"tBodyGyro.meanZ"
"tBodyGyroJerk.meanX"
"tBodyGyroJerk.meanY"
"tBodyGyroJerk.meanZ"
"tBodyAccMag.mean"
"tGravityAccMag.mean"
"tBodyAccJerkMag.mean"
"tBodyGyroMag.mean"
"tBodyGyroJerkMag.mean"
"fBodyAcc.meanX"
"fBodyAcc.meanY"
"fBodyAcc.meanZ"
"fBodyAcc.meanFreqX"
"fBodyAcc.meanFreqY"
"fBodyAcc.meanFreqZ"
"fBodyAccJerk.meanX"
"fBodyAccJerk.meanY"
"fBodyAccJerk.meanZ"
"fBodyAccJerk.meanFreqX"
"fBodyAccJerk.meanFreqY"
"fBodyAccJerk.meanFreqZ"
"fBodyGyro.meanX"
"fBodyGyro.meanY"
"fBodyGyro.meanZ"
"fBodyGyro.meanFreqX"
"fBodyGyro.meanFreqY"
"fBodyGyro.meanFreqZ"
"fBodyAccMag.mean"
"fBodyAccMag.meanFreq"
"fBodyAccJerkMag.mean"
"fBodyAccJerkMag.meanFreq"
"fBodyGyroMag.mean"
"fBodyGyroMag.meanFreq"
"fBodyGyroJerkMag.mean"
"fBodyGyroJerkMag.meanFreq"
"tBodyAcc.stdX"
"tBodyAcc.stdY"
"tBodyAcc.stdZ"
"tGravityAcc.stdX"
"tGravityAcc.stdY"
"tGravityAcc.stdZ"
"tBodyAccJerk.stdX"
"tBodyAccJerk.stdY"
"tBodyAccJerk.stdZ"
"tBodyGyro.stdX"
"tBodyGyro.stdY"
"tBodyGyro.stdZ"
"tBodyGyroJerk.stdX"
"tBodyGyroJerk.stdY"
"tBodyGyroJerk.stdZ"
"tBodyAccMag.std"
"tGravityAccMag.std"
"tBodyAccJerkMag.std"
"tBodyGyroMag.std"
"tBodyGyroJerkMag.std"
"fBodyAcc.stdX"
"fBodyAcc.stdY"
"fBodyAcc.stdZ"
"fBodyAccJerk.stdX"
"fBodyAccJerk.stdY"
"fBodyAccJerk.stdZ"
"fBodyGyro.stdX"
"fBodyGyro.stdY"
"fBodyGyro.stdZ"
"fBodyAccMag.std"
"fBodyAccJerkMag.std"
"fBodyGyroMag.std"
"fBodyGyroJerkMag.std". 

averages: this value shows the average calculated from the original data of the specific feature measurement, for a specific subject, performing a specific activity. In other words, with 30 subjects, performing 6 activities, calculating the averages for 79 different feature measurements, you end up with your 14,220 rows (30 subj x 6 activities x 79 feat meas = 14,220)
