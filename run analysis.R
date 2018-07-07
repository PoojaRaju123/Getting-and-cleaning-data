
##setting the directory
setwd("C:\\Users\\DELL\\Desktop\\POOJAA\\Getting-and-cleaning-data")
## Reading the necessary data
test_X <- read.table("C:\\Users\\DELL\\Desktop\\POOJAA\\Getting-and-cleaning-data\\test\\X_test.txt")
train_Y<- read.table("C:\\Users\\DELL\\Desktop\\POOJAA\\Getting-and-cleaning-data\\train\\X_train.txt")
test1<-read.table("C:\\Users\\DELL\\Desktop\\POOJAA\\Getting-and-cleaning-data\\test\\y_test.txt")
test2<-read.table("C:\\Users\\DELL\\Desktop\\POOJAA\\Getting-and-cleaning-data\\activity_labels.txt")
feature<-read.table("C:\\Users\\DELL\\Desktop\\POOJAA\\Getting-and-cleaning-data\\features.txt")
train1<-read.table("C:\\Users\\DELL\\Desktop\\POOJAA\\Getting-and-cleaning-data\\train\\y_train.txt")

## Including new column on the new dataframe as "activity"
test_X$activity<-test1$V1

test3<-read.table("C:\\Users\\DELL\\Desktop\\POOJAA\\Getting-and-cleaning-data\\test\\subject_test.txt")
train2<-read.table("C:\\Users\\DELL\\Desktop\\POOJAA\\Getting-and-cleaning-data\\train\\subject_train.txt")

## step1 : merging of two dataframe
df1<-rbind(test3,train2)
test_x_new<-test_X[,c(562,1:6,41:46,81:86,121:126,161:166,201,202,214,215,227,228,240,241,253,254,266:271,345:350,424,425:429,503,504,516,517,529,530,542,543)]
train_Y$activity<-train1$V1
train_Y_new<-train_Y[,c(562,1:6,41:46,81:86,121:126,161:166,201,202,214,215,227,228,240,241,253,254,266:271,345:350,424,425:429,503,504,516,517,529,530,542,543)]

##step2 : selecting the columns having mean and standard deviation values
newdf1<-rbind(test_x_new,train_Y_new)
subject<-df1$V1
newdf1<-cbind(subject,newdf1)
newdf1$activity<-as.character(newdf1$activity)

## redefining the names of activities
newdf1$activity[newdf1$activity=="1"]<-"walking"
newdf1$activity[newdf1$activity=="2"]<-"walking-upstairs"
newdf1$activity[newdf1$activity=="3"]<-"walking-downstairs"
newdf1$activity[newdf1$activity=="4"]<-"sitting"
newdf1$activity[newdf1$activity=="5"]<-"standing"
newdf1$activity[newdf1$activity=="6"]<-"laying"

## Starting the process for changing the column names to descriptive ones
f<-feature$V2
f<-f[c(1:6,41:46,81:86,121:126,161:166,201,202,214,215,227,228,240,241,253,254,266:271,345:350,424,425:429,503,504,516,517,529,530,542,543)]
d<-as.vector(f)
g<-gsub("^t", "time", d)
h<-gsub("-", "", g)
i<-gsub("X", "Xaxis", h)
j<-gsub("Y", "Yaxis", i)
k<-gsub("Z", "Zaxis", j)
l<-gsub("\\()", "", k)
m<-gsub("f", "frequency", l)
n<-gsub("BodyBody", "Body", m)
o<-gsub("mean", "Mean", n)
p<-gsub("std", "Std", o)
a<-colnames(newdf1[,-c(1,2)])
a<-p
colnames(newdf1)<-c("subject","activity",p)
