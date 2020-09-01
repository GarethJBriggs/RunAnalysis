### README for run_anlysis.R

1. Reads the 6 text files ("X_train.txt", "X_test.txt", "y_train.txt", "y_test.txt", "subject_train.txt", "subject_test.txt") from the working directory.

2. Merges the primary test and train data sets, derived from "X_train.txt", "X_test.txt". To amalgamate the primary experimental data into a single dataframe (ds_df).

3. Merges the activity labels, derived from "y_train.txt", "y_test.txt". To amalgamate all of the activity labels into a single dataframe (activities_col).

4. Names the activities column, "activities". This is a descriptive human readable column variable name. In line with the principles of tidy data. For further information see CodeBook.md.

5. Merges the subjects labels, derived from "subject_train.txt", "subject_test.txt". To amalgamate all the subjects labels into a single dataframe (subjects_col).

6. Names subjects_col's single column, "subject". This is a descriptive human readable column variable name, given the variables within are the individual numbers of subjects. In line with the principles of tidy data. For further information see CodeBook.md.

7. Merges subjects_col and activities_col into a single dataframe (sub_act_df). An intermediate stap before merging with the primary experimental data.

8. Reads the "features.txt" file to a dataframe (feat_df). This Contains all of the original 561 accelerometer and gyroscope variable names and their associated column numbers.

9. Regular expressions are used to subset feat_df, extracting column variable names containing mean or std. This generates a dataframe (old_names_df), containing the default column "V(numeric)" name and a column of the associated mean and std variable names. Here only the variable names from feat_df containing precisely std() and mean() are selected by grep / regex extraction. This results in the exclusion of some mean variables containing the mean in formats not directly followed by (), e.g. angle(X,gravityMean), fBodyGyro-meanFreq(). This is a matter of choice, given these other mean containing variables do not have complimentary std variables. As such the chosen regex extraction method gives 33 mean() and 33 complimentary std() variable names.

10. Subsets the test and train primary dataset (ds_df) by the column "V(numeric)" names in old_nmes_df. This isolates only the columns that contain mean() and std() values, to a single dataframe (ds_sub).

11. Merges sub_act_df with ds_sub, to a dataframe (raw_mge_df). This contains the subject, activity and all 66 primary data columns. At this stage the 66 primary data columns containing mean() and std() values have "V(numeric)" column names.

12. Recodes the 6 numeric activity variable values with 6 character values in the dataframe raw_mge_df. These are descriptive human readable categorical variable value names. In line with the principles of tidy data. For further information see CodeBook.md.

13. Renames 66 mean() and std() column variables in in raw_mge_df. These are descriptive human readable column variable names. Each column pertaining to a different accelerometer / gyroscope, variable. In line with the principles of tidy data. For further information see CodeBook.md.

14. Groups the dataframe raw_mage_df by subject and activity, as sub_act_grp.

15. Summarises sub_act_grp as the means of all mean() and std() column variables by subject and activity as a tibble (run_analysis_df). The summarisation takes the names of the first and last primary data column variable names as arguments for the range  of implementing the mean by subject and activity.

16. Coerces run_analysis_df into a dataframe from a tibble. This is the final tidy data set. In run_analysis_df each variable is in one column. No duplicate columns exist. All column variables have a descriptive human readable name. All different observations of a variable are in a different row. run_anlysis_df contians 180 rows by 68 column variables.

### Code for reading of run_analysis.txt

data <- read.table(file_path, header = TRUE)

 &nbsp;library(utils)

 &nbsp; view(data)

### References


**Journals**

Wickham, H. (2014) Tidy Data. _Journal of Statistical Software. 59_(10), Retrieved from https://vita.had.co.nz/papers/tidy-data.pdf


**Websites**

Hood. (2015). thoughtfulbloke aka David Hood: Getting and Cleaining the Data Assignment [Blog post]. Retreived from https://thoughtfulbloke.wordpress.com/2015/09/09/getting-and-cleaning-the-assignment/
