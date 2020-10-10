require(dplyr)
require(stringr)
# 0.- Load Data
# To save bandwidth I am assuming you already have downloaded the zip file from:
# https://d396qusza40orc.cloudfront.net/getdata%2Fprojectfiles%2FUCI%20HAR%20Dataset.zip
# Please make sure to download the data and extract it to the current Folder.

features <- read.table("features.txt")
activity_labels <- read.table("activity_labels.txt")
# name the columns for easy access later
colnames(features) <- c("id", "feature")
colnames(activity_labels) <- c("id", "activity")

test_x <- read.table("test/X_test.txt")
test_y <- read.table("test/Y_test.txt")
test_subject <- read.table("test/subject_test.txt")
train_x <- read.table("train/X_train.txt")
train_y <- read.table("train/Y_train.txt")
train_subject <- read.table("train/subject_train.txt")

# 1.- Merge the training and the test sets to create one data set.
# X are features, Y are activities. 
merged_x <- rbind(test_x, train_x)
merged_y <- rbind(test_y, train_y)
merged_subject <- rbind(test_subject, train_subject)
colnames(merged_x) <- features$feature

# 2.- Extract only the measurements on the mean and standard deviation for each
#     measurement.

merged_x <- merged_x[, append(grep("mean", colnames(merged_x)),grep("std", colnames(merged_x)))]

# 3.- Uses descriptive activity names to name the activities in the data set

merged_y <- merge(x=merged_y, y=activity_labels,
                  by.x = "V1", by.y = "id")

# 4.- Appropriately labels the data set with descriptive variable names.

colnames(merged_y) <- c('activityId', 'activity')
colnames(merged_subject) <- "subjectId"
colnames(merged_x) <- str_replace(colnames(merged_x), "\\(\\)", "")
colnames(merged_x) <- str_replace(colnames(merged_x), "-", "_")

# 5.- From the data set in step 4, create a second, independent tidy data set
#     with the average of each variable for each activity and each subject.

#first merge all data
full_dataset <- cbind(merged_subject, merged_y, merged_x)
tidy_dataset <- full_dataset %>%
  group_by(subjectId, activityId, activity) %>%
  summarise_all(list(mean))

write.table(tidy_dataset, "./Export/tidy_data.txt", row.name=FALSE)

#6.- Always clean up after ourselves, we will not use the variables, but the 
#    tidy_dataset, so let's remove all the other ones:
rm(list = c(
  "features",
  "activity_labels",
  "test_x",
  "test_y",
  "test_subject",
  "train_x",
  "train_y",
  "train_subject",
  "merged_x",
  "merged_y",
  "merged_subject",
  "full_dataset"
))