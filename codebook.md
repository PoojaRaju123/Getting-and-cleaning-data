---
title: "codebook"
output: html_document
---
This is a code book which describes the variables used in the dataset.
The features selected for this database come from the accelerometer and gyroscope 3-axial raw signals tAcc-XYZ and tGyro-XYZ.
These time domain signals were captured at a constant rate of 50 Hz. 
Then they were filtered using a median filter and a 3rd order low pass Butterworth filter with a corner frequency of 20 Hz to remove noise.

Similarly, the acceleration signal was then separated into body and gravity acceleration signals (timeBodyAcc-XYZ and timeGravityAcc-XYZ) using another low pass Butterworth filter with a corner frequency of 0.3 Hz. 
Subsequently, the body linear acceleration and angular velocity were derived in time to obtain Jerk signals.

The original dataset contains 68 columns.
The column names and their description is as follows:

Column name                 Description

subject                     The dataset is centered on 30 subjects         
                            altogether. Further details is not available.
                            
activity                    There are 6 activities.
                            1. walking
                            2. walking-upstairs
                            3. walking-downstairs
                            4. sitting
                            5. standing
                            6. laying

timeBodyAccMean             Mean of time on body acceleration is taken as                              a variable. The values for X,Y and Z axis is 
                            considered.

timeBodyAccStd              Standard deviation of the same variable is also                             considered. Similar to the above case, values 
                            corresponding to X,Y and Z axis are taken as 
                            separate variables.

timeGravityAccMean          Considering gravity as a factor instead of the 
                            body, another three variables emerged for X,Y 
                            and Z axis respectively.Mean for these 
                            variables are considered here.
 

timeGravityAccStd           Standard deviation for the above variables are 
                            also taken as variables in this database. 
                            Values for X,Y and Z axis are taken.

timeBodyAccJerkMean         Along with the above parameters jerk signals 
                            are also considered for X,Y and Z axis. Mean of                             the three variables are taken here.
    
timeBodyAccJerkStd          Standard deviation for the above three 
                            variables in the position of means are     
                            considered here.  

timeBodyGyroMean            Values through gyroscope are taken along with 
                            the time signals through body. Mean of these 
                            variables along with the three axis are 
                            considered here
                            
timeBodyGyroStd             Standard deviation for the above three 
                            variables instead of mean values are considered
                            here.         

timeBodyGyroJerkMean        Mean values for the three axis of above 
                            variable along with jerk signals are the 
                            characteristics of these variables.

timeBodyGyroJerkStd         Standard deviation instead of mean values for 
                            the above variables are taken here. The values 
                            for all three axis are considered here. 

timeBodyAccMagMean          Eucledian norm is used to calculate these type 
                            of variables. Mean for them are taken 
                            here.

timeBodyAccMagStd           Standard deviation instead of mean is taken 
                            here. 

timeGravityAccMagMean      Mean of magnitude of time-gravity-acceleration 
                           is taken here.

timeGravityAccMagStd       Standard deviation instead of mean is taken 
                           here. 

timeBodyAccJerkMagMean     Addition to the above variables jerk signals are                            also considered here for taking the mean values. 

timeBodyAccJerkMagStd      Standard deviation instead of mean is taken 
                           here.  

timeBodyGyroMagMean        Mean values corresponding to gyroscope for 
                           time-body values are taken here.

timeBodyGyroMagStd         Standard deviation instead of mean is taken 
                           here.  

timeBodyGyroJerkMagMean    Mean values for the above variables with jerk 
                           signals are also included.

timeBodyGyroJerkMagStd     Standard deviation instead of mean values for 
                           the above variables are taken here.  

Finally a Fast Fourier Transform (FFT) was applied to some of these signals producing the following variables:

frequencyBodyAccMean      - for X,Y and Z axis.  

frequencyBodyAccStd       - for X,Y and Z axis.      

frequencyBodyAccJerkMean  - for X,Y and Z axis.

frequencyBodyAccJerkStd   - for X,Y and Z axis.

frequencyBodyGyroMean     - for X,Y and Z axis.

frequencyBodyGyroStd      - for X,Y and Z axis.

frequencyBodyAccMagMean     

frequencyBodyAccMagStd       

frequencyBodyAccJerkMagMean 

frequencyBodyAccJerkMagStd   

frequencyBodyGyroMagMean    

frequencyBodyGyroMagStd      

frequencyBodyGyroJerkMagMean

frequencyBodyGyroJerkMagStd





