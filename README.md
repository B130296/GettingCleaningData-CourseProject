# JHU - Getting and Cleaning Data. Course Project

This repository hosts documentation and R source code for the course project of the Data Science Specialisation’s track course "Getting and Cleaning data" at Coursera.

## About this project

### Purpose of the exercise

The purpose of this project is to demonstrate the student ability to collect, work with, and clean a data set. The goal is to prepare tidy data that can be used for later analysis. 

### Expected results

Deliverables of this project are:

1. A tidy data set as main goal.
2. A link to a Github repository with the script for performing the analysis.
3. A code book that describes the variables, the data, and any transformations or work that was performed to clean up the data called CodeBook.md.
4. A README.md file explaining how all of the scripts work and how they are connected. 

## Description

One of the most exciting areas in all of data science right now is wearable computing. Companies like Fitbit, Nike, and Jawbone Up are racing to develop the most advanced algorithms to attract new users.  A full description is available at the site where the data was obtained:

http://archive.ics.uci.edu/ml/datasets/Human+Activity+Recognition+Using+Smartphones

The data linked represent data collected from the accelerometers from the Samsung Galaxy S smartphone:

https://d396qusza40orc.cloudfront.net/getdata%2Fprojectfiles%2FUCI%20HAR%20Dataset.zip

### Guide

One R script called run_analysis.R should be created which does the following: 

1. Merges the training and the test sets to create one data set.
2. Extracts only the measurements on the mean and standard deviation for each measurement. 
3. Uses descriptive activity names to name the activities in the data set
4. Appropriately labels the data set with descriptive variable names. 
5. From the data set in step 4, creates a second, independent tidy data set with the average of each variable for each activity and each subject.


## Development

Data file was downloaded and expanded in a separate directory, without names altered. The requested R script was developed using this path as working directory. So relative paths were used to access the uncompressed files.

Requested files are described:

*CodeBook.md* Describes data, variables, and actions performed to clean the data and main results.

*run_analysis.R* Contains all the code to perform the analyses described in the 5 steps. They can be launched in R by just importing the file (*source* command). Embeded (hard coded) path to files should be reviewed.

*averages_data.txt* The output of the 5th step of the guide presented before. 

*README.md* This document.
