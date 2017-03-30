# Getting and Cleaning Data Final Project (Code Book)

Junda Zhu, 03/29/2017

# Background
This code book illustrate the process of the data cleaning. The majority of the explnation is also available for review the the code itself. This document brieftly covers the variable created by the author.

# Caution
The work directory at the beginning of the code has been set as the author's local directory. When run this code, the reviewer should change the directory to the local directory where UCI HAR Dataset is.

# Variables

* train_label: imported raw training data label;
* x_train_dat: imported raw training dataset for x;
* y_train_dat: imported raw training dataset for y;
* test_label: imported raw testing data label;
* x_test_dat: imported raw testing dataset for x;
* y_test_dat: imported raw testing dataset for y;
* x_dat: combined raw dataset for both training and testing data for x;
* y_dat: combined raw dataset for both training and testing data for y;
* sub_label: combined raw dataset label for both training and testing data;
* features: imported raw feature table;
* filt_idx: the index of the ones contains mean or std in the imported feature table;
* x_dat_filt: filtered x dataset using filt_idx, which contains the column that have either mean or std in the feature's name;
* activity_lib: the reference library for activities, translate number to expression;
* cbd_dat: combined dataset of all the previous cleaning;
* tidy_dat: tidied dataset based on the requirement.;

# Cleaning Procedure Description

* Setting working directory root drive
* Specify the libraries needed for the rest of the code
* Clear work space of any variable from previous executions
* Raw data import
* Imported data verification
* Extracts only the measurements on the mean and standard deviation for each measurement
  * find the idex of the items with mean and std within the variable name
  * make sure that there is no variable name with both mean and std in it
  * filter the data based on the index
  * name the features extracted
* Use descriptive activity names to name the activities in the data set
  * getting the library for numer to expression conversion
  * efficiently convert y from vector to expression list
  * name the converted y_dat
* Appropriately label the data set with descriptive activity names
* Organizing and combining all data sets into single one
* Defining descriptive names for all variables
* Creates a second, independent tidy data set with the average of each variable for each activity and each subject
* Export the finished txt file
