                ## reads the files from wd /data
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
                ## merges the subjects
                subjects_col<- rbind(test_subjects, train_subjects)
                ## merges the subject and labels columns together
                sub_lab_df <- cbind(subjects_col, labels_col)
                ## creates a dataframe containing subjects, activity and primary data columns
                merge_df <- cbind(sub_lab_df, ds_df)
                