# Getting and Cleaning Data Final Project (Code Book)

Junda Zhu

CodeBook

The dataset is a version of the Human Activity Recognition Using Smartphones Dataset which has been cleaned and summarized for analysis along the instructions of the Getting and Cleaning Data Course Project.

Features

The features selected for this dataset come from the accelerometer and gyroscope 3-axial raw signals tAcc-XYZ and tGyro-XYZ and were filtered and split into distinct signals by the original researchers. Note the prefix 't' to denote time domain signals and the 'f' to indicate frequency domain signals.

These signals were used to estimate variables of the feature vector for each pattern:
'-XYZ' is used to denote 3-axial signals in the X, Y and Z directions.

tBodyAcc-XYZ
tGravityAcc-XYZ
tBodyAccJerk-XYZ
tBodyGyro-XYZ
tBodyGyroJerk-XYZ
tBodyAccMag
tGravityAccMag
tBodyAccJerkMag
tBodyGyroMag
tBodyGyroJerkMag
fBodyAcc-XYZ
fBodyAccJerk-XYZ
fBodyGyro-XYZ
fBodyAccMag
fBodyAccJerkMag
fBodyGyroMag
fBodyGyroJerkMag
Units: Note that the features are normalized and bounded within [-1,1], based on initial measurements in Hz.

Variables

The original researchers estimated the mean and standard deviation of these features for each observation, applying the suffixes 'mean' and 'std' respectively to each feature name to denote these measurements. 'Tidy_dataset.txt' is a table of the average of observations of each variable aggregated by subject and activity.

Data cleaning process

First, the measurements were associated with the corresponding subject and activity ids, as well as variable labels, which were provided in separate tables in the original UCI HAR dataset. Then, the test and training datasets were combined into one data frame including all observations. Next, the data frame was subsetted to include only the mean and standard deviation measurements for each feature. Descriptive labels were applied to the activity ids, which were stored as a factor. Finally, the data were aggregated as the average of each variable for each activity/subject pair.
