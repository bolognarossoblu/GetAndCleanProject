Introduction:
=============
Codebook prepared for the course project tidy data set. The tidy data set is entirely built from data from the following publication [1]:

[1] Davide Anguita, Alessandro Ghio, Luca Oneto, Xavier Parra and Jorge L. Reyes-Ortiz. Human Activity Recognition on Smartphones using a Multiclass Hardware-Friendly Support Vector Machine. International Workshop of Ambient Assisted Living (IWAAL 2012). Vitoria-Gasteiz, Spain. Dec 2012

The tidy data set contains 180 observations (rows) of 81 variables (columns).


Tidy data set:
==============
The resulting data set from the script fulfills the tiny data concept by:
- Having clear column names that allow the variables to be identified
- Having only one variable per column
- Having only one column per variable

Variables:
==========
There are 81 variables:

1.
Variable Name: "Activity"
Variable Type: character
Explanation: one of six activities (WALKING, WALKING_UPSTAIRS, WALKING_DOWNSTAIRS, SITTING, STANDING, LAYING) performed by Subject 

2.
Variable Name: "Subject"
Variable Type: integer
Explanation: id of one of 30 volunteers

3-81. (Summarized for simplicity)
Variable Names:
[3]  "tBodAcc.mean.X"             "tBodAcc.mean.Y"            
[5]  "tBodAcc.mean.Z"             "tBodAcc.std.X"              "tBodAcc.std.Y"              "tBodAcc.std.Z"             
[9]  "tGravityAcc.mean.X"         "tGravityAcc.mean.Y"         "tGravityAcc.mean.Z"         "tGravityAcc.std.X"         
[13] "tGravityAcc.std.Y"          "tGravityAcc.std.Z"          "tBodAccJerk.mean.X"         "tBodAccJerk.mean.Y"        
[17] "tBodAccJerk.mean.Z"         "tBodAccJerk.std.X"          "tBodAccJerk.std.Y"          "tBodAccJerk.std.Z"         
[21] "tBodGyro.mean.X"            "tBodGyro.mean.Y"            "tBodGyro.mean.Z"            "tBodGyro.std.X"            
[25] "tBodGyro.std.Y"             "tBodGyro.std.Z"             "tBodGyroJerk.mean.X"        "tBodGyroJerk.mean.Y"       
[29] "tBodGyroJerk.mean.Z"        "tBodGyroJerk.std.X"         "tBodGyroJerk.std.Y"         "tBodGyroJerk.std.Z"        
[33] "tBodAccMag.mean"            "tBodAccMag.std"             "tGravityAccMag.mean"        "tGravityAccMag.std"        
[37] "tBodAccJerkMag.mean"        "tBodAccJerkMag.std"         "tBodGyroMag.mean"           "tBodGyroMag.std"           
[41] "tBodGyroJerkMag.mean"       "tBodGyroJerkMag.std"        "fBodAcc.mean.X"             "fBodAcc.mean.Y"            
[45] "fBodAcc.mean.Z"             "fBodAcc.std.X"              "fBodAcc.std.Y"              "fBodAcc.std.Z"             
[49] "fBodAcc.meanreq.X"          "fBodAcc.meanreq.Y"          "fBodAcc.meanreq.Z"          "fBodAccJerk.mean.X"        
[53] "fBodAccJerk.mean.Y"         "fBodAccJerk.mean.Z"         "fBodAccJerk.std.X"          "fBodAccJerk.std.Y"         
[57] "fBodAccJerk.std.Z"          "fBodAccJerk.meanreq.X"      "fBodAccJerk.meanreq.Y"      "fBodAccJerk.meanreq.Z"     
[61] "fBodGyro.mean.X"            "fBodGyro.mean.Y"            "fBodGyro.mean.Z"            "fBodGyro.std.X"            
[65] "fBodGyro.std.Y"             "fBodGyro.std.Z"             "fBodGyro.meanreq.X"         "fBodGyro.meanreq.Y"        
[69] "fBodGyro.meanreq.Z"         "fBodAccMag.mean"            "fBodAccMag.std"             "fBodAccMag.meanreq"        
[73] "fBodBodAccJerkMag.mean"     "fBodBodAccJerkMag.std"      "fBodBodAccJerkMag.meanreq"  "fBodBodGyroMag.mean"       
[77] "fBodBodGyroMag.std"         "fBodBodGyroMag.meanreq"     "fBodBodGyroJerkMag.mean"    "fBodBodGyroJerkMag.std"    
[81] "fBodBodGyroJerkMag.meanreq"
Variable Type: double
Explanation: an explanation of these variables can be found in the features_info.txt file included in the data set getdata-projectfiles-UCI HAR Dataset.zip.





