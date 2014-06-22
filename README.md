Clean UCI HAR Dataset
=====================

This repository contains files used to clean the HAR dataset. 

Link: https://d396qusza40orc.cloudfront.net/getdata%2Fprojectfiles%2FUCI%20HAR%20Dataset.zip

It requires the the data be unzipped in the working directory under the name "UCI HAR Dataset"

##How to run:
- Unzip the data.
- Load run_analysis.R
- Call generate_sets() function

##Analysis Walkthrough
The analysis performs the following to create a tidy data set.

1. Merge the training and test group sets into a single data frame. Create columns for subject, activity, and each variable.
2. Filters out the columns that are not mean or standard deviation measurements. 
3. Reads the activity names from activity_labels.txt and replaces the ids in the activity column with the activity name.
4. Removes '-' and '()' characters in the variable names to make them easy to subset.
5. Create a new data set with the average of each variable for each activity and subject.
