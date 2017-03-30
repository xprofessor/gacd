# Getting and Cleaning Data Final Project (Code Book)

Junda Zhu, 03/29/2017

# Background
This code book illustrate the process of the data cleaning. The majority of the explnation is also available for review the the code itself. This document brieftly covers the variable created by the author.

# Caution
The work directory at the beginning of the code has been set as the author's local directory. When run this code, the reviewer should change the directory to the local directory where UCI HAR Dataset is.

# Variables
*train_label: imported raw training data label
*x_train_dat: imported raw training dataset for x
*y_train_dat: imported raw training dataset for y
test_label: imported raw testing data label
x_test_dat: imported raw testing dataset for x
y_test_dat: imported raw testing dataset for y
x_dat: combined raw dataset for both training and testing data for x
y_dat: combined raw dataset for both training and testing data for y
sub_label: combined raw dataset label for both training and testing data
features: imported raw feature table
filt_idx: the index of the ones contains mean or std in the imported feature table
x_dat_filt: filtered x dataset using filt_idx, which contains the column that have either mean or std in the feature's name
activity_lib: the reference library for activities, translate number to expression
cbd_dat: combined dataset of all the previous cleaning
tidy_dat: tidied dataset based on the requirement.

# Clearning Procedure Description


