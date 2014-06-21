# This script reads in the "Human Activity Recognition Using Smartphones"
# and outputs two clean data sets. One with the mean and standard deviation measurements (tidy_set.csv)
# and anther with the average of the measurements in the first data set organized by activity (avg_tdidy_data_set.csv).
# Link: https://d396qusza40orc.cloudfront.net/getdata%2Fprojectfiles%2FUCI%20HAR%20Dataset.zip

library(base)
library(data.table)

format_txt_file <- function(prefix, type) {
  return(paste(paste(prefix, type, sep='_'), '.txt', sep=''))
}

# Create data set from directory. Also add Subject and Activity columns.
build_data_set <- function(feature_names, directory, type) {
  subject_table <- read.table(paste(directory, format_txt_file('subject', type), sep='/'))
  features_table <- read.table(paste(directory, format_txt_file('X', type), sep='/'))
  colnames(features_table) <- feature_names
  labels_table <- read.table(paste(directory, format_txt_file('y', type), sep='/'))
  features_table[, "Subject"] <- subject_table[[1]]
  features_table[, 'Activity'] <- labels_table[[1]]
  feature_names <- colnames(features_table)
  filtered_features_names <- append(feature_names[grepl("(mean|std)", feature_names)], c('Subject', 'Activity'))
  return(features_table[, filtered_features_names])
}

# Set activity names to human-readable strings.
set_activity_names <- function(data_frame, directory) {
  activity_labels <- read.table(paste(directory, 'activity_labels.txt', sep='/'), sep=' ')
  activities <- activity_labels[[2]]
  replace_activity_id <- function(id) {
    return(activities[id])
  }
  data_frame['Activity'] <- lapply(data_frame['Activity'], replace_activity_id)
  return(data_frame)
}

# Merge train and test data sets and perform cleanup procedure.
merge_sets <- function (directory) {
  feature_names_table <- read.table(paste(directory, 'features.txt', sep='/'), sep=' ')
  feature_names <- lapply(feature_names_table[[2]], as.character)
  feature_names <- gsub("-", "_", feature_names)
  feature_names <- gsub("()", "", feature_names, fixed=TRUE)

  test_data_frame <- build_data_set(feature_names, paste(directory, 'test', sep='/'), 'test')
  train_data_frame <- build_data_set(feature_names, paste(directory, 'train', sep='/'), 'train')
  full_df <- rbind(test_data_frame, train_data_frame)
  full_df <- set_activity_names(full_df, directory)
}

tidy_set <- merge_sets("UCI HAR Dataset")
full_dt <- as.data.table(tidy_set)
avg_tidy_set <- full_dt[, lapply(.SD, mean),by=c("Activity", "Subject")]

write.table(tidy_set, "tidy_set.csv")
write.table(avg_tidy_set, "avg_tidy_set.csv")