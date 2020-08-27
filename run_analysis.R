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
        features <- read.table("features.txt")
        ## uses regular expressions to filter the std and mean data labels and column number 
        old_names <- features[grep('[Ss]td\\(\\)|[Mm]ean\\(\\)', features$V2),]
        ## prints out old_names df
        old_names
        ##subsets test and train primary dataset to the columns contains mean and std data
        ds_sub <- ds_df[, old_names$V1]
        ## creates a df containing subjects, activity and primary data columns
        raw_mge_df <- cbind(sub_act_df, ds_sub)
        raw_mge_df        
                
        