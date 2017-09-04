#Codebook

activity - Factor. Data combined from the y_test.txt and y_train.txt. Descriptive  values are merged from the activity_labels.txt.
subjectID - Factor. Data combined from the subject_test.txt and subject_train.txt. 

All remaining variables descriptions are taken from the features_info.txt.  
To make them more readable, I chose to reorder the variable names, which originally took  the format of Signal, Measure, and Dimension, and I changed it to  Signal, Dimension, and then Measure. I removed any non-letter symbols, and added  an "M" at the start denote that it was a mean for all readings grouped by  activity and subjectID.  

These variables all store numeric values between [-1,1]
MtBodyAccXMean
MtBodyAccYMean
MtBodyAccZMean
MtBodyAccXStd
MtBodyAccYStd
MtBodyAccZStd
MtGravityAccXMean
MtGravityAccYMean
MtGravityAccZMean
MtGravityAccXStd
MtGravityAccYStd
MtGravityAccZStd
MtBodyAccJerkXMean
MtBodyAccJerkYMean
MtBodyAccJerkZMean
MtBodyAccJerkXStd
MtBodyAccJerkYStd
MtBodyAccJerkZStd
MtBodyGyroXMean
MtBodyGyroYMean
MtBodyGyroZMean
MtBodyGyroXStd
MtBodyGyroYStd
MtBodyGyroZStd
MtBodyGyroJerkXMean
MtBodyGyroJerkYMean
MtBodyGyroJerkZMean
MtBodyGyroJerkXStd
MtBodyGyroJerkYStd
MtBodyGyroJerkZStd
MtBodyAccMagMean
MtBodyAccMagStd
MtGravityAccMagMean
MtGravityAccMagStd
MtBodyAccJerkMagMean
MtBodyAccJerkMagStd
MtBodyGyroMagMean
MtBodyGyroMagStd
MtBodyGyroJerkMagMean
MtBodyGyroJerkMagStd
MfBodyAccXMean
MfBodyAccYMean
MfBodyAccZMean
MfBodyAccXStd
MfBodyAccYStd
MfBodyAccZStd
MfBodyAccXMeanFreq
MfBodyAccYMeanFreq
MfBodyAccZMeanFreq
MfBodyAccJerkXMean
MfBodyAccJerkYMean
MfBodyAccJerkZMean
MfBodyAccJerkXStd
MfBodyAccJerkYStd
MfBodyAccJerkZStd
MfBodyAccJerkXMeanFreq
MfBodyAccJerkYMeanFreq
MfBodyAccJerkZMeanFreq
MfBodyGyroXMean
MfBodyGyroYMean
MfBodyGyroZMean
MfBodyGyroXStd
MfBodyGyroYStd
MfBodyGyroZStd
MfBodyGyroXMeanFreq
MfBodyGyroYMeanFreq
MfBodyGyroZMeanFreq
MfBodyAccMagMean
MfBodyAccMagStd
MfBodyAccMagMeanFreq
MfBodyBodyAccJerkMagMean
MfBodyBodyAccJerkMagStd
MfBodyBodyAccJerkMagMeanFreq
MfBodyBodyGyroMagMean
MfBodyBodyGyroMagStd
MfBodyBodyGyroMagMeanFreq
MfBodyBodyGyroJerkMagMean
MfBodyBodyGyroJerkMagStd
MfBodyBodyGyroJerkMagMeanFreq