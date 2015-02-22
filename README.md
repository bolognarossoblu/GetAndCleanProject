================
README
Course Project
February 22, 2015
================

The script only includes one file:
==================================
- run_analysis.R

Other files:
============
- CodeBook.md, the code book
- tidy_data_set.txt, which is the output of the script
- tidy_data_set_screenshot.png, this is a screenshot of R studio's view of tidy_data_set.txt for a better view of the file.

Note:
=====
In order the run the script, unzip the project file (getdata-projectfiles-UCI HAR Dataset.zip) in the same directory of the script. Leave the folder names unchanged.

How the script works:
=====================

The script implements the following steps as stated in the project description:
"1. Merges the training and the test sets to create one data set.
2. Extracts only the measurements on the mean and standard deviation for each measurement. 
3. Uses descriptive activity names to name the activities in the data set
4. Appropriately labels the data set with descriptive variable names. 
5. From the data set in step 4, creates a second, independent tidy data set with the average of each variable for each activity and each subject."

The following are the descriptions of the actions I took that were up to the student:
1. For X_train and X_test, included all columns that contain substrings "mean" or "std":
A general approach was taken and all appearances of "mean" and "std" were included. This cut the number of columns in X_train and X_test from 561 to 79.
The number of columns could have been lower if instances of "meanreq", for example, were removed. However, since the requirements were open, I decided to keep it simple as described above.
2. Used the wide form of tidy data:
In order to summarize the final data set, the group_by() and summarise_each() functions from package dplyr were used. This kept the number of columns unaltered and the number of observations lowered from 10299 to 180.
3. Appropriately named variables:
	a. The "Activity" and "Subject" variables were labeled. 
	b. The name of the variables for the measurements were cleaned as follows:
		i. "()"s were replaced with "."s
		ii. "-"s were replaced with "."
		iii. "."s at the end of the name were removed
4.The script creates "tidy_data_set.txt", which is an output of the tidy data set after Step 5 of the project requirements.

