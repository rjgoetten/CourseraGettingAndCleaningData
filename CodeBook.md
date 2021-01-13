# CodeBook
author: Rubia Goetten 

date: 07/19/2016

This CodeBook explains the tidy dataset produced by run_analysis.R
## Project Description

## Study design and data processing

### Collection of the raw data

The raw data for the execution of this project was obtained from the following website: 
https://d396qusza40orc.cloudfront.net/getdata%2Fprojectfiles%2FUCI%20HAR%20Dataset.zip
A README.txt is included in the zip file for further information.

## Creating the tidy datafile

### Guide to create the tidy data file

Refer to README.txt for greater details about how the tidy dataset was created.

## Description of the variables in the tiny_data.txt file

Dimensions of the dataset: 180 observations (30 subjects x 6 activities) of 66 variables

### Subject
ID of the 30 volunteers who performed the activity. Its range is from 1 to 30

### Activity
Describes the activity type each of the 30 subjects performed:

1. WALKING

2. WALKING_UPSTAIRS

3. WALKING_DOWNSTAIRS

4. SITTING

5. STANDING

6. LAYING

### Features
The features selected for this database come from the accelerometer and gyroscope 3-axial raw signals tAcc-XYZ and tGyro-XYZ. These time domain signals (prefix 't' to denote time) were captured at a constant rate of 50 Hz. Then they were filtered using a median filter and a 3rd order low pass Butterworth filter with a corner frequency of 20 Hz to remove noise. Similarly, the acceleration signal was then separated into body and gravity acceleration signals (tBodyAcc-XYZ and tGravityAcc-XYZ) using another low pass Butterworth filter with a corner frequency of 0.3 Hz. 

Subsequently, the body linear acceleration and angular velocity were derived in time to obtain Jerk signals (tBodyAccJerk-XYZ and tBodyGyroJerk-XYZ). Also the magnitude of these three-dimensional signals were calculated using the Euclidean norm (tBodyAccMag, tGravityAccMag, tBodyAccJerkMag, tBodyGyroMag, tBodyGyroJerkMag). 

Finally a Fast Fourier Transform (FFT) was applied to some of these signals producing fBodyAcc-XYZ, fBodyAccJerk-XYZ, fBodyGyro-XYZ, fBodyAccJerkMag, fBodyGyroMag, fBodyGyroJerkMag. (Note the 'f' to indicate frequency domain signals). 

These signals were used to estimate variables of the feature vector for each pattern:  
'-XYZ' is used to denote 3-axial signals in the X, Y and Z directions.

 [3] "TimeBodyAccelerometer.mean.X"                             
 [4] "TimeBodyAccelerometer.mean.Y"                             
 [5] "TimeBodyAccelerometer.mean.Z"                             
 [6] "TimeBodyAccelerometerStandard.Deviation.X"                
 [7] "TimeBodyAccelerometerStandard.Deviation.Y"                
 [8] "TimeBodyAccelerometerStandard.Deviation.Z"                
 [9] "TimeGravityAccelerometer.mean.X"                          
[10] "TimeGravityAccelerometer.mean.Y"                          
[11] "TimeGravityAccelerometer.mean.Z"                          
[12] "TimeGravityAccelerometerStandard.Deviation.X"             
[13] "TimeGravityAccelerometerStandard.Deviation.Y"             
[14] "TimeGravityAccelerometerStandard.Deviation.Z"             
[15] "TimeBodyAccelerometerJerk.mean.X"                         
[16] "TimeBodyAccelerometerJerk.mean.Y"                         
[17] "TimeBodyAccelerometerJerk.mean.Z"                         
[18] "TimeBodyAccelerometerJerkStandard.Deviation.X"            
[19] "TimeBodyAccelerometerJerkStandard.Deviation.Y"            
[20] "TimeBodyAccelerometerJerkStandard.Deviation.Z"            
[21] "TimeBodyGyroscope.mean.X"                                 
[22] "TimeBodyGyroscope.mean.Y"                                 
[23] "TimeBodyGyroscope.mean.Z"                                 
[24] "TimeBodyGyroscopeStandard.Deviation.X"                    
[25] "TimeBodyGyroscopeStandard.Deviation.Y"                    
[26] "TimeBodyGyroscopeStandard.Deviation.Z"                    
[27] "TimeBodyGyroscopeJerk.mean.X"                             
[28] "TimeBodyGyroscopeJerk.mean.Y"                             
[29] "TimeBodyGyroscopeJerk.mean.Z"                             
[30] "TimeBodyGyroscopeJerkStandard.Deviation.X"                
[31] "TimeBodyGyroscopeJerkStandard.Deviation.Y"                
[32] "TimeBodyGyroscopeJerkStandard.Deviation.Z"                
[33] "TimeBodyAccelerometerMagnitude.mean"                      
[34] "TimeBodyAccelerometerMagnitudeStandard.Deviation"         
[35] "TimeGravityAccelerometerMagnitude.mean"                   
[36] "TimeGravityAccelerometerMagnitudeStandard.Deviation"      
[37] "TimeBodyAccelerometerJerkMagnitude.mean"                  
[38] "TimeBodyAccelerometerJerkMagnitudeStandard.Deviation"     
[39] "TimeBodyGyroscopeMagnitude.mean"                          
[40] "TimeBodyGyroscopeMagnitudeStandard.Deviation"             
[41] "TimeBodyGyroscopeJerkMagnitude.mean"                      
[42] "TimeBodyGyroscopeJerkMagnitudeStandard.Deviation"         
[43] "FrequencyBodyAccelerometer.mean.X"                        
[44] "FrequencyBodyAccelerometer.mean.Y"                        
[45] "FrequencyBodyAccelerometer.mean.Z"                        
[46] "FrequencyBodyAccelerometerStandard.Deviation.X"           
[47] "FrequencyBodyAccelerometerStandard.Deviation.Y"           
[48] "FrequencyBodyAccelerometerStandard.Deviation.Z"           
[49] "FrequencyBodyAccelerometerJerk.mean.X"                    
[50] "FrequencyBodyAccelerometerJerk.mean.Y"                    
[51] "FrequencyBodyAccelerometerJerk.mean.Z"                    
[52] "FrequencyBodyAccelerometerJerkStandard.Deviation.X"       
[53] "FrequencyBodyAccelerometerJerkStandard.Deviation.Y"       
[54] "FrequencyBodyAccelerometerJerkStandard.Deviation.Z"       
[55] "FrequencyBodyGyroscope.mean.X"                            
[56] "FrequencyBodyGyroscope.mean.Y"                            
[57] "FrequencyBodyGyroscope.mean.Z"                            
[58] "FrequencyBodyGyroscopeStandard.Deviation.X"               
[59] "FrequencyBodyGyroscopeStandard.Deviation.Y"               
[60] "FrequencyBodyGyroscopeStandard.Deviation.Z"               
[61] "FrequencyBodyAccelerometerMagnitude.mean"                 
[62] "FrequencyBodyAccelerometerMagnitudeStandard.Deviation"    
[63] "FrequencyBodyAccelerometerJerkMagnitude.mean"             
[64] "FrequencyBodyAccelerometerJerkMagnitudeStandard.Deviation"
[65] "FrequencyBodyGyroscopeMagnitude.mean"                     
[66] "FrequencyBodyGyroscopeMagnitudeStandard.Deviation"        
[67] "FrequencyBodyGyroscopeJerkMagnitude.mean"                 
[68] "FrequencyBodyGyroscopeJerkMagnitudeStandard.Deviation" 

## Sources
https://gist.github.com/JorisSchut/dbc1fc0402f28cad9b41

https://thoughtfulbloke.wordpress.com/2015/09/09/getting-and-cleaning-the-assignment/
