# Course Project 2

library(gdata)
library(plyr)
library(dplyr)
library(reshape)

# load test data
subject_test <- data.frame(read.table("getdata-projectfiles-UCI HAR Dataset/UCI HAR Dataset/test/subject_test.txt", stringsAsFactors=FALSE))
x_test <- data.frame(read.table("getdata-projectfiles-UCI HAR Dataset/UCI HAR Dataset/test/X_test.txt", stringsAsFactors=FALSE))
y_test <- data.frame(read.table("getdata-projectfiles-UCI HAR Dataset/UCI HAR Dataset/test/y_test.txt", stringsAsFactors=FALSE))

# load train data
subject_train <- data.frame(read.table("getdata-projectfiles-UCI HAR Dataset/UCI HAR Dataset/train/subject_train.txt", stringsAsFactors=FALSE))
x_train <- data.frame(read.table("getdata-projectfiles-UCI HAR Dataset/UCI HAR Dataset/train/X_train.txt", stringsAsFactors=FALSE))
y_train <- data.frame(read.table("getdata-projectfiles-UCI HAR Dataset/UCI HAR Dataset/train/y_train.txt", stringsAsFactors=FALSE))

# load column names and activity labels data
features <- data.frame(read.table("getdata-projectfiles-UCI HAR Dataset/UCI HAR Dataset/features.txt", stringsAsFactors=FALSE))
activity <- data.frame(read.table("getdata-projectfiles-UCI HAR Dataset/UCI HAR Dataset/activity_labels.txt", stringsAsFactors=FALSE)) 

# assign column names from activity_labels.txt
colnames(x_test) <- features[, 2]
colnames(x_train) <- features[, 2]

# only keep columns with substring "mean" and "std" (standard deviation) in their name
x_test <- x_test[,grepl("-mean|-std", colnames(x_test))]
x_train <- x_train[,grepl("-mean|-std", colnames(x_train))]

# horizontally merge test and train files
merged_test <- cbind(subject_test, x_test, y_test)
merged_train <- cbind(subject_train, x_train, y_train)

# vertically merge test and train files
merged_test_train <- rbind(merged_test, merged_train)

# join the merged file with the activity labels
colnames(merged_test_train)[81] <- "Activity"
colnames(activity)[1] <- "Activity"
merged_test_train <- join(merged_test_train, activity, by = "Activity")

# delete Activity numbers in order to only keep Activity labels
merged_test_train <- merged_test_train[,!(colnames(merged_test_train) == "Activity")]
colnames(merged_test_train)[81] <- "Activity"
colnames(merged_test_train)[1] <- "Subject"

# group by Activity and Subject and get means of rest of the columns
merged_test_train <- merged_test_train %>% group_by(Activity,Subject) %>% summarise_each(funs(mean))

# clean column names as per tidy data set principles
colnames(merged_test_train) <- gsub("\\()", ".", colnames(merged_test_train))
colnames(merged_test_train) <- gsub("d.", "d", colnames(merged_test_train))
colnames(merged_test_train) <- gsub("q.", "q", colnames(merged_test_train))
colnames(merged_test_train) <- gsub("n.", "n", colnames(merged_test_train))
colnames(merged_test_train) <- gsub("-", ".", colnames(merged_test_train))

# write output
write.table(merged_test_train, "tidy_data_set.txt", row.names = FALSE)