Code Book for Cleaned UCI HAR Dataset
=====================================

## Study Design and Variables Excluded

For information on study design please refer to the following links.

- [description](http://archive.ics.uci.edu/ml/datasets/Human+Activity+Recognition+Using+Smartphones)
- [source data](https://d396qusza40orc.cloudfront.net/getdata%2Fprojectfiles%2FUCI%20HAR%20Dataset.zip)


## Summary Choices

This data set only looks at the mean and standard deviation measurements included in the source data set.
It also provides and average calculation for each measurement organized by activity.

## Code Book for tidy_set.csv
The subject id for the measurements.

"Subject"                      

The activity performed during the measurement collection.

"Activity"           

tBodyAcc are the body measurements taken from the accelerometer. The mean and standard deviations are calculated across the x, y, and  z axes.

"tBodyAcc_mean_X" "tBodyAcc_mean_Y" "tBodyAcc_mean_Z"               
"tBodyAcc_std_X" "tBodyAcc_std_Y" "tBodyAcc_std_Z"               

tGravityAcc are the gravity measurements taken from the accelerometer. The mean and standard deviations are calculated across the x, y, and  z axes.

"tGravityAcc_mean_X" "tGravityAcc_mean_Y" "tGravityAcc_mean_Z" 
"tGravityAcc_std_X" "tGravityAcc_std_Y" "tGravityAcc_std_Z" 

tBodyAccJerk are the body jerk signal measurements taken from the accelerometer. They were calculated from the linear acceleration and angular velocity. The mean and standard deviations are calculated across the x, y, and  z axes. 

"tBodyAccJerk_mean_X"           "tBodyAccJerk_mean_Y"          
"tBodyAccJerk_mean_Z"           "tBodyAccJerk_std_X"           
"tBodyAccJerk_std_Y"            "tBodyAccJerk_std_Z"           

tBodyGyro are the body measurements taken from the gyroscope. The mean and standard deviations are calculated across the x, y, and  z axes.

"tBodyGyro_mean_X"              "tBodyGyro_mean_Y"             
"tBodyGyro_mean_Z"              "tBodyGyro_std_X"              
"tBodyGyro_std_Y"               "tBodyGyro_std_Z"              

tBodyGyroJerk are the body jerk signal measurements taken from the gyroscope. They were calculated from the linear acceleration and angular velocity. The mean and standard deviations are calculated across the x, y, and  z axes. 

"tBodyGyroJerk_mean_X"          "tBodyGyroJerk_mean_Y"         
"tBodyGyroJerk_mean_Z"          "tBodyGyroJerk_std_X"          
"tBodyGyroJerk_std_Y"           "tBodyGyroJerk_std_Z"          

tBodyAccMag  are the body measurements taken from the accelerometer. The three-dimensional signals were calculated using the Euclidean norm. 

"tBodyAccMag_mean"              "tBodyAccMag_std"              

tGravityAccMag  are the gravity  measurements taken from the accelerometer. The three-dimensional signals were calculated using the Euclidean norm. 

"tGravityAccMag_mean"           "tGravityAccMag_std"           

tBodyAccJerkMag are the body jerk measurements taken from the accelerometer. They were calculated from the linear acceleration and angular velocity. The three-dimensional signals were calculated using the Euclidean norm. 

"tBodyAccJerkMag_mean"          "tBodyAccJerkMag_std"          

tBodyGyroMag  are the body measurements taken from the gyroscope. The three-dimensional signals were calculated using the Euclidean norm. 

"tBodyGyroMag_mean"             "tBodyGyroMag_std"             

tBodyGyroJerkMag are the body jerk measurements taken from the gyroscope. They were calculated from the linear acceleration and angular velocity. The three-dimensional signals were calculated using the Euclidean norm. 

"tBodyGyroJerkMag_mean"         "tBodyGyroJerkMag_std"         

fBodyAcc is the same as tBodyAcc but with a Fast Fourier Transform applied.

"fBodyAcc_mean_X"               "fBodyAcc_mean_Y"              
"fBodyAcc_mean_Z"               "fBodyAcc_std_X"               
"fBodyAcc_std_Y"                "fBodyAcc_std_Z"               

Weighted average of the frequency component for fBodyAcc.

"fBodyAcc_meanFreq_X"           "fBodyAcc_meanFreq_Y"          
"fBodyAcc_meanFreq_Z"           

fBodyAccJerk is the same as tBodyAccJerk with a Fast Fourier Transform applied.

"fBodyAccJerk_mean_X"          "fBodyAccJerk_mean_Y"
"fBodyAccJerk_mean_Z"          
"fBodyAccJerk_std_X"            "fBodyAccJerk_std_Y"           
"fBodyAccJerk_std_Z"            

Weighted average of the frequency component of fBodyAccJerk.

"fBodyAccJerk_meanFreq_X"      "fBodyAccJerk_meanFreq_Y"       
"fBodyAccJerk_meanFreq_Z"      

fBodyGyro is the same as tBodyGyro but with a Fast Fourier Transform applied.

"fBodyGyro_mean_X"              "fBodyGyro_mean_Y"             
"fBodyGyro_mean_Z"              
"fBodyGyro_std_X"              "fBodyGyro_std_Y"               
"fBodyGyro_std_Z"              

Weighted average of the frequency component of fBodyGyro.

"fBodyGyro_meanFreq_X"          "fBodyGyro_meanFreq_Y"         
"fBodyGyro_meanFreq_Z"          

fBodyAccMag is the same as tBodyAccMag but with a Fast Fourier Transform applied.

"fBodyAccMag_mean"             "fBodyAccMag_std"               

fBodyAccMag is the same as tBodyAccMag but with a Fast Fourier Transform applied.

"fBodyAccMag_meanFreq"         

fBodyBodyAccJerkMag is the body accelerometer magnitude measurement.

"fBodyBodyAccJerkMag_mean"      "fBodyBodyAccJerkMag_std"      

Weighted average of the frequency component of fBodyBodyAccJerkMag.

"fBodyBodyAccJerkMag_meanFreq"  

fBodyBodyGyroMag is the body gyroscope magnitude measurement.

"fBodyBodyGyroMag_mean"        "fBodyBodyGyroMag_std"        

Weighted average of the frequency component of fBodyBodyGyroMag.  

"fBodyBodyGyroMag_meanFreq"    

fBodyBodyGyroJerkMag is the body gyroscope jerk magnitude measurement.

"fBodyBodyGyroJerkMag_mean"     "fBodyBodyGyroJerkMag_std"     

Weighted average of the frequency component of fBodyBodyGyroJerkMag.

"fBodyBodyGyroJerkMag_meanFreq" 

## Code Book for avg_tidy_set.csv
The variables here are an average of the variables in tidy_set.csv grouped by activity and subject. 
