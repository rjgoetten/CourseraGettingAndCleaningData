# 0) Download, unzip & read raw data

library(data.table)

if (!file.exists("data")){dir.create("data")}
fileUrl <- "https://d396qusza40orc.cloudfront.net/getdata%2Fprojectfiles%2FUCI%20HAR%20Dataset.zip"
download.file(fileUrl, destfile = "./data/Dataset.zip", method = "curl")

dataZip <- unzip("Dataset.zip", exdir = "./data", unzip = "internal", overwrite = TRUE)

dataZip

testX <- read.table("./data/UCI HAR Dataset/train/X_train.txt")
testX <- read.table("./data/UCI HAR Dataset/test/X_test.txt")
testY <- read.table("./data/UCI HAR Dataset/test/y_test.txt")
testSubject <- read.table("./data/UCI HAR Dataset/test/subject_test.txt")
trainX <- read.table("./data/UCI HAR Dataset/train/X_train.txt")
trainY <- read.table("./data/UCI HAR Dataset/train/y_train.txt")
trainSubject <- read.table("./data/UCI HAR Dataset/train/subject_train.txt")

View(testX)
View(testY)
View(testSubject)
View(trainX)
View(trainY)
View(trainSubject)

## 1) Merges the training and the test sets to create one data set.
dim(testX)
dim(testY)
dim(testSubject)
dim(trainX)
dim(trainY)
dim(trainSubject)

dataTest <- cbind(testSubject, testY, testX)
dataTrain <- cbind(trainSubject, trainY, trainX)
mergedData <- rbind(dataTrain, dataTest)
View(mergedData)

## 2) Extracts only the measurements on the mean and standard deviation for each measurement.
features <- read.table("./data/UCI HAR Dataset/features.txt", stringsAsFactors = FALSE)[,2]
subFeatures <- grep(("mean\\(\\)|std\\(\\)"), features)
finalData <- mergedData[, c(1, 2, subFeatures+2)]
colnames(finalData) <- c("subject", "activity", features[subFeatures])
View(finalData)


## 3) Uses descriptive activity names to name the activities in the data set
activities <- read.table("./data/UCI HAR Dataset/activity_labels.txt")
finalData$activity <- factor(finalData$activity, levels = activities[,1], labels = activities[,2])
View(finalData)


## 4) Appropriately labels the data set with descriptive variable names.
names(finalData) <- gsub("\\()", "", names(finalData))
names(finalData) <- gsub("^t", "Time", names(finalData))
names(finalData) <- gsub("^f", "Frequency", names(finalData))
names(finalData) <- gsub("Acc", "Accelerometer", names(finalData))
names(finalData) <- gsub("Gyro", "Gyroscope", names(finalData))
names(finalData) <- gsub("Mag", "Magnitude", names(finalData))
names(finalData) <- gsub("BodyBody", "Body", names(finalData))
names(finalData) <- gsub("-std", "Standard Deviation", names(finalData))
View(finalData)
                           
## 5) From the data set in step 4, 
#creates a second, independent tidy data set with the average of each variable for each activity and each subject.
library(dplyr)
groupData <- finalData %>%
                group_by(subject, activity) %>%
                summarise_each(funs(mean))
write.table(groupData, "./average_tidyData.txt", row.names = FALSE)