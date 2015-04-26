# Code Book

## run_analysis.R

The script *run_analysis.R* performs the 5 steps outlined in the course project's description. This script use `ddply()` from the plyr package, to apply `colMeans()`.

### Procedure
1. Training and test data are loaded into tables from their relative location. There are three files to load for each data type: X, Y and subject values. Data is merged using the *rbind()* function. 
2. Features are extracted from features.txt file and the mean and standard deviation measures are taken using grep function and a regular expression. After extracting, they are given the correct names.
3. From activity_labels.txt activities are named in the data set.
4. Descriptive variable names are assigned using subject data. 
5. A new, tidy dataset with all the average measures for each subject and activity is created. 

### Variables

|   Variable    |  Description |
|---------------|--------------|
| x_train       | X values from training data set.
| y_train       | Y Values form training data set.
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
| averages_data | Averages which will be later stored in a `.txt` file.
