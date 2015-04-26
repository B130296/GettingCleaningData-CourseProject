library(plyr)

###############################################################################
# 1.- Merges the training and the test sets to create one data set.

x_train <- read.table("UCI HAR Dataset/train/X_train.txt")
y_train <- read.table("UCI HAR Dataset/train/y_train.txt")
subject_train <- read.table("UCI HAR Dataset/train/subject_train.txt")


x_test <- read.table("UCI HAR Dataset/test/X_test.txt")
y_test <- read.table("UCI HAR Dataset/test/y_test.txt")
subject_test <- read.table("UCI HAR Dataset/test/subject_test.txt")


x_data <- rbind(x_train, x_test)
y_data <- rbind(y_train, y_test)
subject_data <- rbind(subject_train, subject_test)


###############################################################################
# 2. Extracts only the measurements on the mean and standard deviation for each measurement. 

features <- read.table("UCI HAR Dataset/features.txt")
mean_std <- grep("-(mean|std)\\(\\)", features[, 2])
x_data <- x_data[, mean_std]
names(x_data) <- features[mean_std, 2]



###############################################################################
# 3. Use descriptive activity names to name the activities in the data set

activities <- read.table("UCI HAR Dataset/activity_labels.txt")
y_data[, 1] <- activities[y_data[, 1], 2]
names(y_data) <- "activity"

###############################################################################
# 4. Appropriately labels the data set with descriptive variable names. 

names(subject_data) <- "subject"

###############################################################################
# 5. From the data set in step 4, creates a second, independent tidy data set with the average of each variable for each activity and each subject.

tidy_data <- cbind(x_data, y_data, subject_data)
averages_data <- ddply(tidy_data, .(subject, activity), function(x) colMeans(x[, 1:66]))
write.table(averages_data, "tidy_data.txt", row.name=FALSE)
