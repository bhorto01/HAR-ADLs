##download files into working directory
##packages: utils{read.table, }; base{cbind, rbind, sapply, names, gsub, grep, }; 
  ##reshape{melt, }; dplyr{summarise_each, group_by, funs, }


##1 Merge the training and the test sets to create one data set
xtest <- read.table("test/X_test.txt")  ##reads in the test features data
ytest <- read.table("test/y_test.txt")  ##reads in the test activity data
xytest <- cbind(xtest, ytest) ##combine test files into a single data frame
features <- read.table("features.txt") ##read features file into R, this contains column headers for x_test data (aka variable names)
FeatureVars <- features$V2 ##this creates vector of variable names
FeatureVars <- sapply(FeatureVars, as.character) ##this sets class of variable names to characters
names(xytest) <- FeatureVars ##changes generic column names (variable names) to given feature names in test data set
names(xytest)[562] <- "Activity" ##changes last column header Activity
subj_test <- read.table("test/subject_test.txt") ##reads in subject values for test data set
xytest <- cbind(xytest, subj_test) ##binds together previous test data to include the subject column
names(xytest)[563] <- "Subject"  ##names the column just added
xtrain <- read.table("train/X_train.txt") ##reads in the train features data
ytrain <- read.table("train/y_train.txt") ##reads in the train activity data
xytrain <- cbind(xtrain, ytrain) ##combine train files into a single data frame
names(xytrain) <- FeatureVars ##changes generic column names (variable names) to given feature names in train data set
names(xytrain)[562] <- "Activity"
subj_train <- read.table("train/subject_train.txt") ##reads in subject values for train data set
xytrain <- cbind(xytrain, subj_train) ##binds together previous train data to include the subject column
names(xytrain)[563] <- "Subject"  ##names the column just added
dat <- rbind(xytest,xytrain) ##merge test and train data complete
##2 Extract only the measurements on the mean and standard deviation for each measurement 
data <- dat[,c(grep("mean", names(dat), value = TRUE), grep("std", names(dat), value = TRUE), "Activity", "Subject")] 
activity_labels <- read.table("activity_labels.txt")  ##run to reference the mapping of activity label code to text
##3 Use descriptive activity names to name the activities in the data set
data[,80] <- sapply(data[,80], function(x) gsub(1, "WALKING", x))
data[,80] <- sapply(data[,80], function(x) gsub(2, "WALKING_UPSTAIRS", x))
data[,80] <- sapply(data[,80], function(x) gsub(3, "WALKING_DOWNSTAIRS", x))
data[,80] <- sapply(data[,80], function(x) gsub(4, "SITTING", x))
data[,80] <- sapply(data[,80], function(x) gsub(5, "STANDING", x))
data[,80] <- sapply(data[,80], function(x) gsub(6, "LAYING", x))
dataMelt <- melt(data, id=c("Activity", "Subject"), measure.vars = 1:79) ##reshape data into a more suitable form (long, tidy data)
names(dataMelt)[c(1:4)] <- c("subject", "activity", "feature", "average") ##Appropriately labels the data set with descriptive variable names##install and run package "dplyr"
dataGroup <- group_by(dataMelt, subject, activity, feature) ##group subject, activity and features columns together to perform mean operation in next step
dataAvg <- summarise_each(dataGroup, funs(mean))
