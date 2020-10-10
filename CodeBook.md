The following description has been taken from the original CodeBook of the original Dataset. Please refet to the Readme to review the original Codebook.

The features selected for this database come from the accelerometer and gyroscope 3-axial raw signals tAcc-XYZ and tGyro-XYZ. These time domain signals (prefix 't' to denote time) were captured at a constant rate of 50 Hz. Then they were filtered using a median filter and a 3rd order low pass Butterworth filter with a corner frequency of 20 Hz to remove noise. Similarly, the acceleration signal was then separated into body and gravity acceleration signals (tBodyAcc-XYZ and tGravityAcc-XYZ) using another low pass Butterworth filter with a corner frequency of 0.3 Hz.

Subsequently, the body linear acceleration and angular velocity were derived in time to obtain Jerk signals (tBodyAccJerk-XYZ and tBodyGyroJerk-XYZ). Also the magnitude of these three-dimensional signals were calculated using the Euclidean norm (tBodyAccMag, tGravityAccMag, tBodyAccJerkMag, tBodyGyroMag, tBodyGyroJerkMag).

Finally a Fast Fourier Transform (FFT) was applied to some of these signals producing fBodyAcc-XYZ, fBodyAccJerk-XYZ, fBodyGyro-XYZ, fBodyAccJerkMag, fBodyGyroMag, fBodyGyroJerkMag. (Note the 'f' to indicate frequency domain signals).

These signals were used to estimate variables of the feature vector for each pattern:  
'-XYZ' is used to denote 3-axial signals in the X, Y and Z directions.

**Data Set**

As part of the cleaning process, we removed the parenthesys and the hyphens from variable names, but kept the original naming for each variable to preserve part of the original codebook. Accordind to some sources, a further analysis and tidy up on the names could be applied.

subjectId: Ranged variable from 1 to 30 that represent the subject the reading was taken from..
activityId: id of the activity performed.
activity: Name of the activity performed.

The next columns are the mean and std values calculated by axis. They follow the previous description of data, segmented by canculation and axis.

- tBodyAcc-[std|mean|meanFreq]-[X|Y|Z]
- tGravityAcc-[std|mean|meanFreq]-[X|Y|Z]
- tBodyAccJerk-[std|mean|meanFreq]-[X|Y|Z]
- tBodyGyro-[std|mean|meanFreq]-[X|Y|Z]
- tBodyGyroJerk-[std|mean|meanFreq]-[X|Y|Z]
- tBodyAccMag-[std|mean|meanFreq]
- tGravityAccMag-[std|mean|meanFreq]
- tBodyAccJerkMag-[std|mean|meanFreq]
- tBodyGyroMag-[std|mean|meanFreq]
- tBodyGyroJerkMag-[std|mean|meanFreq]
- fBodyAcc-[std|mean|meanFreq]-[X|Y|Z]
- fBodyAccJerk-[std|mean|meanFreq]-[X|Y|Z]
- fBodyGyro-[std|mean|meanFreq]-[X|Y|Z]
- fBodyAccMag-[std|mean|meanFreq]
- fBodyAccJerkMag-[std|mean|meanFreq]
- fBodyGyroMag-[std|mean|meanFreq]
- fBodyGyroJerkMag-[std|mean|meanFreq]
