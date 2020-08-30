library(dplyr)                
        ## reads the .txt files from wd /data
        train_ds <- read.table("X_train.txt")
        test_ds <- read.table("X_test.txt")
        train_labels <- read.table("y_train.txt")
        test_labels <-read.table("y_test.txt")
        train_subjects <- read.table("subject_train.txt")
        test_subjects <- read.table("subject_test.txt")
        ## merges the primary test and train data sets
        ds_df <- rbind(test_ds, train_ds)
        ## merges the activity labels
        activities_col <- rbind(test_labels, train_labels)
        ## names the activities column
        activities_col <- rename(activities_col, activity = V1)
        ## merges the subjects
        subjects_col<- rbind(test_subjects, train_subjects)
        ## names the subjects column
        subjects_col <- rename(subjects_col, subject = V1)
        ## merges the subject and labels columns together
        sub_act_df <- cbind(subjects_col, activities_col)
        ## reads the features file
        feat_df <- read.table("features.txt")
        ## uses regular expressions to filter the std and mean data labels and column number 
        old_names_df <- feat_df[grep('[Ss]td\\(\\)|[Mm]ean\\(\\)', feat_df$V2),]
        ##subsets test and train primary dataset to the columns contains mean and std data
        ds_sub <- ds_df[, old_names_df$V1]
        ## creates a df containing subjects, activity and primary data columns
        raw_mge_df <- cbind(sub_act_df, ds_sub)
        ## codes for the activities variables
        raw_mge_df$activity <- recode(raw_mge_df$activity, "1" = "walking", 
        "2" = "walkingUpstairs", "3" = "walkingDownstairs", "4" = "sitting", 
        "5" = "standing", "6" = "laying" )
        ## renames 66 mean and std column variables
        raw_mge_df <- rename(raw_mge_df, timeBodyAccelerationXaxisMean = V1, 
                             timeBodyAccelerationYaxisMean = V2, 
                             timeBodyAccelerationZaxisMean = V3,
                             timeBodyAccelerationXaxisStd = V4,
                             timeBodyAccelerationYaxisStd = V5,
                             timeBodyAccelerationZaxisStd = V6,
                             timeGravityAccelerationXaxisMean = V41,
                             timeGravityAccelerationYaxisMean = V42,
                             timeGravityAccelerationZaxisMean = V43,
                             timeGravityAccelerationXaxisStd = V44,
                             timeGravityAccelerationYaxisStd = V45,
                             timeGravityAccelerationZaxisStd = V46,
                             timeBodyAccelerationJerkXaxisMean = V81,
                             timeBodyAccelerationJerkYaxisMean = V82,
                             timeBodyAccelerationJerkZaxisMean = V83,
                             timeBodyAccelerationJerkXaxisStd = V84,
                             timeBodyAccelerationJerkYaxisStd = V85,
                             timeBodyAccelerationJerkZaxisStd = V86,
                             timeBodyGyroscopeXaxisMean = V121,
                             timeBodyGyroscopeYaxisMean = V122,
                             timeBodyGyroscopeZaxisMean = V123,
                             timeBodyGyroscopeXaxisStd = V124,
                             timeBodyGyroscopeYaxisStd = V125,
                             timeBodyGyroscopeZaxisStd = V126,
                             timeBodyGyroscopeJerkXaxisMean = V161,
                             timeBodyGyroscopeJerkYaxisMean = V162,
                             timeBodyGyroscopeJerkZaxisMean = V163,
                             timeBodyGyroscopeJerkXaxisStd = V164,
                             timeBodyGyroscopeJerkYaxisStd = V165,
                             timeBodyGyroscopeJerkZaxisStd = V166,
                             timeBodyAccelerationMagnitudeMean = V201,
                             timeBodyAccelerationMagnitudeStd = V202,
                             timeGravityAccelaerationMagnitudeMean = V214,
                             timegravityaccelerationmagnitudeStd = V215,
                             timeBodyAccelerationJerkMagnitudeMean = V227,
                             timeBodyAccelerationJerkMagnitudeStd = V228,
                             timeBodyGyroscopeMagnitudeMean = V240,
                             timeBodyGyroscopeMagnitudeStd = V241,
                             timeBodyGyroscopeJerkMagnitudeMean = V253,
                             timeBodyGyroscopeJerkMagnitudeStd = V254,
                             frequencyBodyAccelerationXaxisMean = V266,
                             frequencyBodyAccelerationYaxisMean = V267,
                             frequencyBodyAccelerationZaxisMean = V268,
                             frequencyBodyAccelerationXaxisStd = V269,
                             frequencyBodyAccelerationYaxisStd = V270,
                             frequencyBodyAccelerationZaxisStd = V271,
                             frequencyBodyAccelerationJerkXaxisMean = V345,
                             frequencyBodyAccelerationJerkYaxisMean = V346,
                             frequencyBodyAccelerationJerkZaxisMean = V347,
                             frequencyBodyAccelerationJerkXaxisStd = V348,
                             frequencyBodyAccelerationJerkYaxisStd = V349,
                             frequencyBodyAccelerationJerkZaxisStd = V350,
                             frequencyBodyGyroscopeXaxisMean = V424,
                             frequencyBodyGyroscopeYaxisMean = V425,
                             frequencyBodyGyroscopeZaxisMean = V426,
                             frequencyBodyGyroscopeXaxisStd = V427,
                             frequencyBodyGyroscopeYaxisStd = V428,
                             frequencyBodyGyroscopeZaxisStd = V429,
                             frequencyBodyAccelerationMagnitudeMean = V503,
                             frequencyBodyAccelerationMagnitudeStd = V504,
                             frequencyBodyAccelerationJerkMagnitudeMean = V516,
                             frequencyBodyAccelerationJerkMagnitudeStd = V517,
                             frequencyBodyGyroscopeMagnitudeMean = V529,
                             frequencyBodyGyroscopeMagnitudeStd = V530,
                             frequencyBodyGyroscopeJerkMagnitudeMean = V542,
                             frequencyBodyGyroscopeJerkMagnitudeStd = V543)
        
        ## groups raw_mage df by subject and activity
        sub_act_grp <- group_by(raw_mge_df, subject, activity) 
        ## Summerises the means of all column variables by subject and activity
        tidy_df <- summarise(sub_act_grp, across(.cols = 
        timeBodyAccelerationXaxisMean:frequencyBodyGyroscopeJerkMagnitudeStd, 
        .fns = mean))
        tidy_df<- as.data.frame(tidy_df)
                
        
        
                
                