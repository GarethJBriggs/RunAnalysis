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
        labels_col <- rbind(test_labels, train_labels)
        labels_col <- rename(labels_col, activity = V1)
        ## merges the subjects
        subjects_col<- rbind(test_subjects, train_subjects)
        ## labels the subjects column
        subjects_col <- rename(subjects_col, subject = V1)
        ## merges the subject and labels columns together
        sub_lab_df <- cbind(subjects_col, labels_col)
        ## reads the features file
        features <- read.table("features.txt")
        ## uses regular expressions to filter the std and mean data labels and column number 
        old_names <- features[grep('[Ss]td\\(\\)|[Mm]ean\\(\\)', features$V2),]
        ## prints out old_names df
        old_names
        ## subsets old names to isolate column numbers where std and mean occur
        old_names_sub <- old_names[,1]
        ##subsets test and train primary dataset to the columns contains mean and std data
        ds_sub <- ds_df[, old_names_sub]
        ## creates a dataframe containing subjects, activity and primary data columns
        merge_df <- cbind(sub_lab_df, ds_sub)
                
                