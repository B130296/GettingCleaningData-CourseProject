# Code Book

 
## Data

The data linked to from the course website represent data collected from the accelerometers from the Samsung Galaxy S smartphone and it was obtained from:

https://d396qusza40orc.cloudfront.net/getdata%2Fprojectfiles%2FUCI%20HAR%20Dataset.zip

For a full description refer to the site where the original data was obtained:

http://archive.ics.uci.edu/ml/datasets/Human+Activity+Recognition+Using+Smartphones

 
### Features

The features selected for this database come from the accelerometer and gyroscope 3-axial raw signals. X, Y and Z data inertial signals are provided into separate files inside a directory of the same name. Signals and data are described into the file `features_info.txt`. The complete list of variables of each feature vector is available in 'features.txt'.  


### Test and Train data sets

Data is divided in two classes: test and train, and a directory for each one contains files with X, Y, subject and inertial signals.


## Procedure and reproducibility

Right into the working directory expand the archived data file. An "UCI HAR Dataset" directory should be created with all data files and subdirectories inside of it. All file paths are based on this location.


## run_analysis.R

The script *run_analysis.R* performs the 5 steps outlined in the course project's description. 

At the R console type:

   > source("run_analysis.R")

   to load and run the R program.

A short description of what this program do is as follows:

1. Training and test data are loaded from their relative location into tables . There are three files to load for each data type: 
   `X_test.txt`      : X axis sensor values from performed tests.
   `Y_test.txt`      : Y axis sensor values from performed tests.
   `subject_test.txt`: Subject identification.

   `X_train.txt`      : X axis sensor values from performed training.
   `Y_train.txt`      : Y axis sensor values from performed training.
   `subject_train.txt`: Subject identification.

   Data is merged using the *rbind()* function int three variables: `x_data`, `y_data` and `subject_data`.

2. Features are extracted from `features.txt` file and the mean and standard deviation measures are taken using the *grep()* function and a regular expression. After extracting, they are given the correct names.

3. Descriptive activity labels are taken from `activity_labels.txt`. Activities are named in the data set.

4. Descriptive variable names are assigned using subject data. 

5. Finally, a tidy dataset with all the average measures for each subject and activity is created into the workinng directory relative root. This script use `ddply()` from the *plyr* package, to apply `colMeans()`.


### Variables used

|   Variable    |  Description |
|---------------|--------------|
| x_train       | X values from training data set.
| y_train       | Y values form training data set.
| subject_train | Subject identification value.
| x_test        | X values from test data set.
| y_test        | Y values from test data set.
| subject_test  | Subject identification value.
| x_data        | Merged X values from loaded data sets.
| y_data        | Merged Y values from loaded data sets.
| subject_data  | Merged subject data from loaded data sets.
| features      | Correct names for the `x_data` dataset.
| mean_std      | Subset of `features` data.
| activities    | Activity names.
| tidy_data     | `x_data`, `y_data` and `subject_data` merged in a big dataset.
| averages_data | Averages which will be later stored in `tidy_data.txt` file.


###### History

April 26, 2016. Revision and description enhanced.
April 12, 2015. Creation.
