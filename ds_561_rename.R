dslab_df <- rename_(ds_df, "tBodyAcc-mean()-X" = V1, "tBodyAcc-mean()-Y" = V2, 
                "tBodyAcc-mean()-Z" = V3, "tBodyAcc-std()-X" = V4, 
                "tBodyAcc-std()-Y" = V5, "tBodyAcc-std()"-Z = V6, 
                "tBodyAcc-mad()-X" = V7, "tBodyAcc-mad()-Y" = V8, 
                "tBodyAcc-mad()-Z" = V9, "tBodyAcc-max()-X" = V10, 
                "tBodyAcc-max()-Y" = V11, "tBodyAcc-max()-Z" = V12,
                "tBodyAcc-min()-X" = V13, "tBodyAcc-min()-Y" = V14, 
                "tBodyAcc-min()-Z" = V15, "tBodyAcc-sma()" = V16, 
                "tBodyAcc-energy()-X" = V17, "tBodyAcc-energy()-Y" = V18,
                "tBodyAcc-energy()-Z" = V19, "tBodyAcc-iqr()-X" = V20, 
                "tBodyAcc-iqr()-Y" = V21, "tBodyAcc-iqr()-Z" = V22, 
                "tBodyAcc-entropy()-X" = V23, "tBodyAcc-entropy()-Y" = V24,
                "tBodyAcc-entropy()-Z" = V25, "tBodyAcc-arCoeff()-X,1" = V26, 
                "tBodyAcc-arCoeff()-X,2" = V27, "tBodyAcc-arCoeff()-X,3" = V28, 
                "tBodyAcc-arCoeff()-X,4" = V29, "tBodyAcc-arCoeff()-Y,1" = V30, 
                "tBodyAcc-arCoeff()-Y,2" = V31, "tBodyAcc-arCoeff()-Y,3" = V32, 
                "tBodyAcc-arCoeff()-Y,4" = V33, "tBodyAcc-arCoeff()-Z,1" = V34,
                "tBodyAcc-arCoeff()-Z,2" = V35, "tBodyAcc-arCoeff()-Z,3" = V36,
                "tBodyAcc-arCoeff()-Z,4" = V37, "tBodyAcc-correlation()-X,Y" = 
                V38, "tBodyAcc-correlation()-X,Z"  = V39, 
                "tBodyAcc-correlation()-Y,Z" = V40, "tGravityAcc-mean()-X" = 
                V41, "tGravityAcc-mean()-Y" = V42, "tGravityAcc-mean()-Z" = V43,
                "tGravityAcc-std()-X" = V44,"tGravityAcc-std()-Y" = V45, 
                "tGravityAcc-std()-Z" = V46, "tGravityAcc-mad()-X" = V47, 
                "tGravityAcc-mad()-Y" = V48, "tGravityAcc-mad()-Z" = V49, 
                "tGravityAcc-max()-X" = V50, "tGravityAcc-max()-Y" = V51, 
                "tGravityAcc-max()-Z" = V52, "tGravityAcc-min()-X" = V53, 
                "tGravityAcc-min()-Y" = V54, "tGravityAcc-min()-Z" = V55,
                "tGravityAcc-sma()" = V56, "tGravityAcc-energy()-X" = V57, 
                "tGravityAcc-energy()-Y" = V58, "tGravityAcc-energy()-Z" = V59, 
                "tGravityAcc-iqr()-X" = V60, "tGravityAcc-iqr()-Y" = V61, 
                "tGravityAcc-iqr()-Z" = V62, "tGravityAcc-entropy()-X" = V63, 
                "tGravityAcc-entropy()-Y" = V64, "tGravityAcc-entropy()-Z" = 
                V65, "tGravityAcc-arCoeff()-X,1" = V66, 
                "tGravityAcc-arCoeff()-X,2" = V67, "tGravityAcc-arCoeff()-X,3" = 
                V68, "tGravityAcc-arCoeff()-X,4" = V69, 
                "tGravityAcc-arCoeff()-Y,1"= V70, "tGravityAcc-arCoeff()-Y,2" = 
                V71,"tGravityAcc-arCoeff()-Y,3" = V72,
                "tGravityAcc-arCoeff()-Y,4" = V73, "tGravityAcc-arCoeff()-Z,1" =
                V74, "tGravityAcc-arCoeff()-Z,2" = V75, 
                "tGravityAcc-arCoeff()-Z,3" = V76, "tGravityAcc-arCoeff()-Z,4" =
                V77, "tGravityAcc-correlation()-X,Y" = V78, 
                "tGravityAcc-correlation()-X,Z" = V79, 
                "tGravityAcc-correlation()-Y,Z" = V80, "tBodyAccJerk-mean()-X" =
                V81, "tBodyAccJerk-mean()-Y" = V82, "tBodyAccJerk-mean()-Z"= 
                V83, "tBodyAccJerk-std()-X" = V84, "tBodyAccJerk-std()-Y" = V85,
                "tBodyAccJerk-std()-Z" = V86, "tBodyAccJerk-mad()-X" = V87, 
                "tBodyAccJerk-mad()-Y" = V88, "tBodyAccJerk-mad()-Z" = V89, 
                "tBodyAccJerk-max()-X" = V90, "tBodyAccJerk-max()-Y" = V91, 
                "tBodyAccJerk-max()-Z" = V92, "tBodyAccJerk-min()-X" = V93, 
                "tBodyAccJerk-min()-Y" = V94, "tBodyAccJerk-min()-Z" = V95, 
                "tBodyAccJerk-sma()" = V96, "tBodyAccJerk-energy()-X" = V97, 
                "tBodyAccJerk-energy()-Y" = V98, "tBodyAccJerk-energy()-Z" = 
                V99, "tBodyAccJerk-iqr()-X" = V100, "tBodyAccJerk-iqr()-Y" = 
                V101, "tBodyAccJerk-iqr()-Z" = V102, "tBodyAccJerk-entropy()-X"
                = V103, "tBodyAccJerk-entropy()-Y" = V104, 
                "tBodyAccJerk-entropy()-Z" = V105, "tBodyAccJerk-arCoeff()-X,1"
                = V106, "tBodyAccJerk-arCoeff()-X,2" = V107, 
                "tBodyAccJerk-arCoeff()-X,3" = V108, 
                "tBodyAccJerk-arCoeff()-X,4" = V109, 
                "tBodyAccJerk-arCoeff()-Y,1" = V110, 
                "tBodyAccJerk-arCoeff()-Y,2" = V111, 
                "tBodyAccJerk-arCoeff()-Y,3" = V112,
                "tBodyAccJerk-arCoeff()-Y,4" = V113,
                "tBodyAccJerk-arCoeff()-Z,1" = V114,
                "tBodyAccJerk-arCoeff()-Z,2" = V115,
                "tBodyAccJerk-arCoeff()-Z,3" = V116,
                "tBodyAccJerk-arCoeff()-Z,4" = V117,
                "tBodyAccJerk-correlation()-X,Y" = V118,
                "tBodyAccJerk-correlation()-X,Z" = V119,
                "tBodyAccJerk-correlation()-Y,Z" = V120,
                "tBodyGyro-mean()-X" = V121, "tBodyGyro-mean()-Y" = V122,
                "tBodyGyro-mean()-Z" = V123, "tBodyGyro-std()-X" = V124,
                "tBodyGyro-std()-Y" = V125, "tBodyGyro-std()-Z" = V126,
                "tBodyGyro-mad()-X" = V127, "tBodyGyro-mad()-Y" = V128,
                "tBodyGyro-mad()-Z" = V129, "tBodyGyro-max()-X" = V130,
                "tBodyGyro-max()-Y" = V131, "tBodyGyro-max()-Z" = V132,
                "tBodyGyro-min()-X" = V133, "tBodyGyro-min()-Y" = V134,
                "tBodyGyro-min()-Z" = V135, "tBodyGyro-sma()" = V136,
                "tBodyGyro-energy()-X" = V137, "tBodyGyro-energy()-Y" = V138,
                "tBodyGyro-energy()-Z" = V139, "tBodyGyro-iqr()-X" = V140,
                "tBodyGyro-iqr()-Y" = V141, "tBodyGyro-iqr()-Z)" = V142,
                "tBodyGyro-entropy()-X" = V143, "tBodyGyro-entropy()-Y" = V144,
                "tBodyGyro-entropy()-Z" = V145, "tBodyGyro-arCoeff()-X,1" = 
                V146, "tBodyGyro-arCoeff()-X,2" = V147, 
                "tBodyGyro-arCoeff()-X,3" = V148, "tBodyGyro-arCoeff()-X,4" = 
                V149, "tBodyGyro-arCoeff()-Y,1" = V150,
                "tBodyGyro-arCoeff()-Y,2" = V151, "tBodyGyro-arCoeff()-Y,3" = 
                V152, "tBodyGyro-arCoeff()-Y,4" = V153, 
                "tBodyGyro-arCoeff()-Z,1" = V154, 
                "tBodyGyro-arCoeff()-Z,2" = V155,
                "tBodyGyro-arCoeff()-Z,3" = V156,
                "tBodyGyro-arCoeff()-Z,4" = V157,
                "tBodyGyro-correlation()-X,Y" = V158,
                "tBodyGyro-correlation()-X,Z" = V159,
                "tBodyGyro-correlation()-Y,Z" = V160,
                "tBodyGyroJerk-mean()-X" = V161, "tBodyGyroJerk-mean()-Y" = 
                V162, "tBodyGyroJerk-mean()-Z" = V163, "tBodyGyroJerk-std()-X"
                = V164, "tBodyGyroJerk-std()-Y" = V165, "tBodyGyroJerk-std()-Z"
                = V166, "tBodyGyroJerk-mad()-X" = V167, "tBodyGyroJerk-mad()-Y"
                = V168, "tBodyGyroJerk-mad()-Z" = V169, "tBodyGyroJerk-max()-X"
                = V170, "tBodyGyroJerk-max()-Y" = V171, "tBodyGyroJerk-max()-Z"
                = V172, "tBodyGyroJerk-min()-X" = V173, "tBodyGyroJerk-min()-Y"
                = V174, "tBodyGyroJerk-min()-Z" = V175, "tBodyGyroJerk-sma()"
                = V176, "tBodyGyroJerk-energy()-X" = V177, 
                "tBodyGyroJerk-energy()-Y" = V178, "tBodyGyroJerk-energy()-Z" = 
                V179, "tBodyGyroJerk-iqr()-X" = V180, "tBodyGyroJerk-iqr()-Y" +
                V181, "tBodyGyroJerk-iqr()-Z" = V182, 
                "tBodyGyroJerk-entropy()-X" = V183, "tBodyGyroJerk-entropy()-Y"
                = V184, "tBodyGyroJerk-entropy()-Z" = V185,
                "tBodyGyroJerk-arCoeff()-X,1" = V186,
                "tBodyGyroJerk-arCoeff()-X,2" = V187,
                "tBodyGyroJerk-arCoeff()-X,3" = V188,
                "tBodyGyroJerk-arCoeff()-X,4" = V189,
                "tBodyGyroJerk-arCoeff()-Y,1" = V190,
                "tBodyGyroJerk-arCoeff()-Y,2" = V191,
                "tBodyGyroJerk-arCoeff()-Y,3" = V192,
                "tBodyGyroJerk-arCoeff()-Y,4" = V193,
                "tBodyGyroJerk-arCoeff()-Z,1" = V194,
                "tBodyGyroJerk-arCoeff()-Z,2" = V195,
                "tBodyGyroJerk-arCoeff()-Z,3" = V196,
                "tBodyGyroJerk-arCoeff()-Z,4" = V197,
                "tBodyGyroJerk-correlation()-X,Y" = V198,
                "tBodyGyroJerk-correlation()-X,Z" = V199,
                "tBodyGyroJerk-correlation()-Y,Z" = V200,
                "tBodyAccMag-mean()" = V201, "tBodyAccMag-std()" = V202,
                "tBodyAccMag-mad()" = V203, "tBodyAccMag-max()" = V204,
                "tBodyAccMag-min()" = V205, "tBodyAccMag-sma()" = V206,
                "tBodyAccMag-energy()" = V207, "tBodyAccMag-iqr()" = V208,
                "tBodyAccMag-entropy()" = V209, "tBodyAccMag-arCoeff()1" = V210,
                "tBodyAccMag-arCoeff()2" = V211, "tBodyAccMag-arCoeff()3" = 
                V212, "tBodyAccMag-arCoeff()4" = V213, "tGravityAccMag-mean()"
                = V214, "tGravityAccMag-std()" = V215, "tGravityAccMag-mad()"
                = V216, "tGravityAccMag-max()" = V217, "tGravityAccMag-min()"
                = V218, "tGravityAccMag-sma()" = V219, "tGravityAccMag-energy()"
                = V220, "tGravityAccMag-iqr()" = V221, 
                "tGravityAccMag-entropy()" = V222, "tGravityAccMag-arCoeff()1"
                = V223, "tGravityAccMag-arCoeff()2" = V224,
                "tGravityAccMag-arCoeff()3" = V225, "tGravityAccMag-arCoeff()4"
                = V226, "tBodyAccJerkMag-mean()" = V227, "tBodyAccJerkMag-std()"
                = V228, "tBodyAccJerkMag-mad()" = V229, "tBodyAccJerkMag-max()"
                = V230, "tBodyAccJerkMag-min()" = V231, "tBodyAccJerkMag-sma()"
                = V232, "tBodyAccJerkMag-energy()" = V233,
                "tBodyAccJerkMag-iqr()" = V234, "tBodyAccJerkMag-entropy()" =
                V235, "tBodyAccJerkMag-arCoeff()1" = V236,
                "tBodyAccJerkMag-arCoeff()2" = V237, 
                "tBodyAccJerkMag-arCoeff()3" = V238, 
                "tBodyAccJerkMag-arCoeff()4" = V239,
                "tBodyGyroMag-mean()" = V240, "tBodyGyroMag-std()" = V241,
                "tBodyGyroMag-mad()" = V242, "tBodyGyroMag-max()" = V243,
                "tBodyGyroMag-min()" = V244, "tBodyGyroMag-sma()" = V245,
                "tBodyGyroMag-energy()" = V246, "tBodyGyroMag-iqr()" = V247,
                "tBodyGyroMag-entropy()" = V248, "tBodyGyroMag-arCoeff()1" = 
                V249, "tBodyGyroMag-arCoeff()2" = V250, 
                
                
                
                
                
                
                
                
                
                )
