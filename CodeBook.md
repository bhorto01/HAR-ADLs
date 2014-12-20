####Please refer to the ReadMe.md in this repository prior to proceeding with this CodeBook. There you will find resources which further explain the background of the project and where the data comes from.

code book describing the variables.
##Tidy Data
Running the run_analysis.R code results in a tidy data set. The goal of this tidy data set was to clean up the original data (see ReadMe.md for original data info) into a tidy form for future analysis. 

I chose to approach the tidy data using a long (vs. wide) tidy data set because I felt it 1) provided an easier view in the R console and 2) allows the most flexibility for future analysis.

##Variables
The result of the run_analysis.R was a tidy data form with four columns (variable): 'subject', 'activity', 'feature' and 'average'

- subject - this variable is a unique identifier, 1-30, given to the 30 participants of the original study

- activity - this variable includes one of the six possible activities a subject performed for the study: WALKING, WALKING_UPSTAIRS, WALKING_DOWNSTAIRS, SITTING, STANDING, LAYING

- feature - a feature was originally one of 561 "raw signals" (from "features.txt" in origianl data) as explained in the "feature_info.txt" in the original dataset. As mentioned in the ReadMe.md in this repository, the run_analysis.R instructions called for extracting only those feature measurements that were measurements of mean or standard deviation.
  - It should be noted that certain mean measurements existed within an angle measurement and for the purposes of run_analysis.R these were excluded from the resulting tidy data set.
  - It should also be noted that within the features data there were measurements that only differed by an X,Y, or Z ending. As expained in the "features_info.txt" file in the original data, X,Y,Z represent "3-axial signals in the X, Y and Z directions". For the purposes of run_analysis.R, I left the X,Y,Z direction measurements as seperate levels within the feature variable.
  - As a result my feature column ended up with 79 unique mean and std measurement features (down from the original data of 561 feature measurements). The entire list of 79 measurements is provided at the bottom of this document

- average - this variable is an average calculation computed from the original data for each subject, activity, feature grouping. For example, subject #1, had x "tBodyAcc.meanX" measurements taken performing the LAYING activity. The value in the corresponding average column shows the average of the x measurements of subject 1, performing the LAYING activity.

##Results
As a result, the run_analysis.R code creates a long, tidy data form of dimensions 14,220x4. The rows can be explained by the computed averages of 30 subjects, performing 6 activities, measured in 79 feature measurements (180x6x79 = 14,220).

####Features
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

