library(dplyr)
library(tidyr)
fileURL <- "https://d396qusza40orc.cloudfront.net/getdata%2Fprojectfiles%2FUCI%20HAR%20Dataset.zip"

## Read data in.
act_labels <- read.table("UCI HAR Dataset/activity_labels.txt", colClasses=c("numeric","character"))
features <- read.table("UCI HAR Dataset/features.txt",colClasses=c("numeric","character"))
subTest <- read.table("UCI HAR Dataset/test/subject_test.txt")
X.test <- read.table("UCI HAR Dataset/test/X_test.txt")
Y.test <- read.table("UCI HAR Dataset/test/y_test.txt")
subTrain <- read.table("UCI HAR Dataset/train/subject_train.txt")
X.train <- read.table("UCI HAR Dataset/train/X_train.txt")
Y.train <- read.table("UCI HAR Dataset/train/y_train.txt")

## Convert activity values into descriptive text
Y.test <- merge(Y.test,act_labels,by="V1")
Y.train <- merge(Y.train,act_labels,by="V1")

## Merges the training and the test sets to create one data set.
X <- tbl_df(rbind(X.test,X.train))
Y <- rbind(Y.test,Y.train)

## Extracts only the measurements using mean and standard deviation out of list of features
bodyDF1 <- select(X,grep('mean|std',features$V2)) 

## Appropriately labels the data set with descriptive variable names.     
featDF <- tbl_df(data.frame(feature = features$V2[grep('mean|std',features$V2)], stringsAsFactors = FALSE))

##Converts Features into Signal (e.g. tBodyAccJerk,tBodyAcc, etc), Variable measured from these readings (e.g. mean(), std()), and the dimension (X,Y,Z)
featDF <- separate(featDF,feature, into = c("signal","measure", "d"), sep = "-")

featDF$measure <- gsub("[()]","", featDF$measure)
featDF$measure <- gsub("mean","Mean", featDF$measure)
featDF$measure <- gsub("std","Std", featDF$measure)
names(bodyDF1) <- paste(featDF$signal,ifelse(is.na(featDF$d),"",featDF$d),featDF$measure,sep="")

## Attaches subjectID and activity vectors to the bodyDF1 DF
bodyDF1 <- mutate(bodyDF1, subjectID = factor(c(subTest$V1,subTrain$V1),levels=1:30),activity=factor(Y$V2,levels = act_labels$V2))

## Creates second dataset and groups by activity and subject
bodyDF2 <- group_by(bodyDF1, activity, subjectID) 
bodyDF3 <- summarize(bodyDF2, mean(get(names(bodyDF2)[1])))
bodyDF4 <- bodyDF3
for (i in 1:(ncol(bodyDF1))) {
        bodyDF3 <- summarize(bodyDF2, mean(get(names(bodyDF2)[i])))
        bodyDF4[,i+2] <- bodyDF3[,3]
}
names(bodyDF4) <- c("activity","subjectID",paste0("M",names(bodyDF1)))
bodyDF4 <- select(bodyDF4, -MsubjectID:Mactivity)
write.table(bodyDF4, file = "DS3-CourseProject.csv", sep = ",", row.names = FALSE)