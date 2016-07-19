#CodeBook
author: Rubia Goetten 

date: 07/19/2016

This CodeBook explains the tidy dataset produced by run_analysis.R
##Project Description

##Study design and data processing

###Collection of the raw data

The raw data for the execution of this project was obtained from the following website: 
https://d396qusza40orc.cloudfront.net/getdata%2Fprojectfiles%2FUCI%20HAR%20Dataset.zip
A README.txt is included in the zip file for further information.

##Creating the tidy datafile

###Guide to create the tidy data file

Refer to README.txt for greater details about how the tidy dataset was created.

##Description of the variables in the tiny_data.txt file

Dimensions of the dataset: 180 observations (30 subjects x 6 activities) of 66 variables

###Subject
ID of the 30 volunteers who performed the activity. Its range is from 1 to 30

###Activity
Describes the activity type each of the 30 subjects performed:

1. WALKING

2. WALKING_UPSTAIRS

3. WALKING_DOWNSTAIRS

4. SITTING

5. STANDING

6. LAYING

###Features

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

##Sources
https://gist.github.com/JorisSchut/dbc1fc0402f28cad9b41

https://thoughtfulbloke.wordpress.com/2015/09/09/getting-and-cleaning-the-assignment/
