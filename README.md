# CourseraGettingAndCleaningData

This is my own project for Coursera "Getting and Cleaning Data" course. The code is written in R; the source code is run_analysis.R.

##run_analysis.R

This script does the following:

###0) Download, unzip & read raw data

  - Load the data.table package
  - Create a "data" directory in order to download the raw data that is found on the following link: https://d396qusza40orc.cloudfront.net/getdata%2Fprojectfiles%2FUCI%20HAR%20Dataset.zip
  - Unzip the file using the function unzip()
  - List all the files of the dataset
  - Read the data (UCI HAR Dataset/train/X_train.txt, UCI HAR Dataset/train/y_train.txt, UCI HAR Dataset/train/subject_train.txt, UCI HAR Dataset/test/X_test.txt, UCI HAR Dataset/test/y_test.txt, UCI HAR Dataset/test/subject_test.txt) and store them in trainX, trainY, trainSubject, testX, testY, testSubject.
  - Check if data was loaded correctly (View())

###1) Merges the training and the test sets to create one data set.

  - Check the dimension of each variable
  - Concatenate by columns the test data(testX, testY, testSubject)
  - Concatenate by columns the train data(trainX, trainY, trainSubject)
  - Merge train and test data using rbind()
  - Check if data is merged correctly (View())

###2) Extracts only the measurements on the mean and standard deviation for each measurement.

  - Load feature data into R
  - Extract mean and standard deviation measurements using the function grep(). Does not include "mean frequency".
  - Store the data in finalData
  - Name the columns on the finalData table(subject, activty and features names)
  - Check if finalData is correctly

###3) Uses descriptive activity names to name the activities in the data set

  - Read the activity label data (UCI HAR Dataset/activity_labels.txt) and store it in a variable
  - Switch the numbers name by its correspondent label
  - Check if finalData is correctly

###4) Appropriately labels the data set with descriptive variable names.

  - Subsitute the variable names by using the function gsub(). The names will be as following:
  
  "\()" to ""

  "^t" to “Time"
  
  "^f" to “Frequency”
  
  "Acc" to "Accelerometer"
  
  "Gyro" to "Gyroscope"
  
  "Mag" to "Magnitude"
  
  "BodyBody" to "Body"
  
  "-mean" to "Mean"
  
  "-std" to "Standard Deviation"
  
  - Check if everything is labeled correctly (View())

###5) From the data set in step 4, creates a second, independent tidy data set with the average of each variable for each activity and each subject.

  - Load the dplyr package
  - Create a new dataset by calculating the mean value of each variable for each activity and subject.
  - Generate a final file using the function write.table
  
output file is: average_tidyData.txt (180 observations - 30 subjects x 6 activities - of 66 variables)

##CodeBook

This file explains the specific details of the tidy data file.
