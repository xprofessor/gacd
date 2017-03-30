
## Setting working directory root drive
setwd("C:/Users/Junda Zhu/Desktop/R depository/clearning data class/UCI HAR Dataset/")

## Specify the libraries needed for the rest of the code
library(dplyr)
library(data.table)

## clear work space of any variable from previous executions
rm(list=ls())

## Data import
train_label = read.table('./train/subject_train.txt',header=FALSE)
x_train_dat = read.table('./train/x_train.txt',header=FALSE)
y_train_dat = read.table('./train/y_train.txt',header=FALSE)

test_label = read.table('./test/subject_test.txt',header=FALSE)
x_test_dat = read.table('./test/x_test.txt',header=FALSE)
y_test_dat = read.table('./test/y_test.txt',header=FALSE)

x_dat <- rbind(x_train_dat, x_test_dat)
y_dat <- rbind(y_train_dat, y_test_dat)
sub_label <- rbind(train_label, test_label)

if(dim(x_dat)[1]==dim(y_dat)[1] & dim(sub_label)[1]==dim(y_dat)[1]){
  
  message("Import Data Verified and organized...")
}else{
  message("Import Data Size Unmatch, Please re-verify...")
  break
}

## Extracts only the measurements on the mean and standard deviation for each measurement
features <- read.table("features.txt")[, 2]
filt_idx <- sort(c(grep("mean", features),grep("std", features))) ## find the idex of the items with mean and std within the variable name
filt_idx <- unique(filt_idx) ## make sure that there is no variable name with both mean and std in it
x_dat_filt <- x_dat[,filt_idx] ## filter the data based on the index
names(x_dat_filt) <- features[filt_idx] ##name the features extracted

## 03/27/2017

## Use descriptive activity names to name the activities in the data set
activity_lib <- read.table("activity_labels.txt") ## getting the library for numer to expression conversion
y_dat[, 1] <- activity_lib[y_dat[, 1], 2] ## efficiently convert y from vector to expression list
names(y_dat) <- "Activity" ##name the converted y_dat

## Appropriately label the data set with descriptive activity names
names(sub_label) <- "Subject"
##summary(sub_label)

# Organizing and combining all data sets into single one.

cbd_dat <- cbind(x_dat_filt, y_dat, sub_label)

# Defining descriptive names for all variables.
names(cbd_dat) <- make.names(names(cbd_dat))
names(cbd_dat) <- gsub('Acc',"Acceleration",names(cbd_dat))
names(cbd_dat) <- gsub('GyroJerk',"Angular.Acceleration",names(cbd_dat))
names(cbd_dat) <- gsub('Gyro',"Angular.Speed",names(cbd_dat))
names(cbd_dat) <- gsub('Mag',"Magnitude",names(cbd_dat))
names(cbd_dat) <- gsub('^t',"Time.Domain.",names(cbd_dat))
names(cbd_dat) <- gsub('^f',"Frequency.Domain.",names(cbd_dat))
##names(cbd_dat) <- gsub('\\.mean',".Mean",names(cbd_dat))
##names(cbd_dat) <- gsub('\\.std',".StandardDeviation",names(cbd_dat))
names(cbd_dat) <- gsub('Freq\\.',"Frequency.",names(cbd_dat))
names(cbd_dat) <- gsub('Freq$',"Frequency",names(cbd_dat))
##View(cbd_dat)

## Creates a second, independent tidy data set with the average of each variable for each activity and each subject

##names(cbd_dat)
tidy_dat<-aggregate(. ~Subject + Activity, cbd_dat, mean)
tidy_dat<-tidy_dat[order(tidy_dat$Subject,tidy_dat$Activity),]
write.table(tidy_dat, file = "tidydata.txt",row.name=FALSE)
