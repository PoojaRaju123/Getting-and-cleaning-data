---
title: "README"
output: html_document


Code Procedure

1. After setting the directory, read necessary files
2. Then add new column named "activity" to the two dataframes form train ane    test folders.
3. Selected the columns from two files having either mean or standard       
   deviation on them.
4. Merged two data sets.
5. Redefining the names of activities as "walking","standing",etc.
6. Redefining the column names of the dataframe.
7. Then using dplyr function to get the mean of each variable for each subject and activity

step 1 and  step 2

  Columns corresponding to mean values and standard deviation values from train dataset and test data set are taken. 
  Columns named "activity" and "subject" are included to the new dataset.
  
step 3

  The activities were represented in numbers. Primarily this is changed to activities like "walking" etc.
  
step 4

  The column names of dataframe are then converted in to more descriptive form.
  Like, t was converted into time
  f was converted into frequency ...
  
step 5

  Then the mean for each variable with respect to each activity and subject are calculated.

The experiments have been carried out with a group of 30 volunteers within an age bracket of 19-48 years. Each person performed six activities (WALKING, WALKING_UPSTAIRS, WALKING_DOWNSTAIRS, SITTING, STANDING, LAYING) wearing a smartphone (Samsung Galaxy S II) on the waist. Using its embedded accelerometer and gyroscope, we captured 3-axial linear acceleration and 3-axial angular velocity at a constant rate of 50Hz. The experiments have been video-recorded to label the data manually. The obtained dataset has been randomly partitioned into two sets, where 70% of the volunteers was selected for generating the training data and 30% the test data. 

The sensor signals (accelerometer and gyroscope) were pre-processed by applying noise filters and then sampled in fixed-width sliding windows of 2.56 sec and 50% overlap (128 readings/window). The sensor acceleration signal, which has gravitational and body motion components, was separated using a Butterworth low-pass filter into body acceleration and gravity. The gravitational force is assumed to have only low frequency components, therefore a filter with 0.3 Hz cutoff frequency was used. From each window, a vector of features was obtained by calculating variable
