## CodeBook for run_analysis.R

### Project background

run_analysis.R uses a data from the Human Activity Recognition Using Smartphones Dataset Version 1.0 (HARUSD) to produce a summarised tidy data set. The initial HARUSD data used contains 561 measurements from the accelerometer and gyroscope of the Samsung Galaxy S II smartphone. These were acquired in activity experiments performed by 30 volunteers, aged 19-48 years.
In the initial experiments, training data was generated from 70% of the volunteers while the remaining 30% of the volunteers generated the test data. For the purposes of  run_analysis.R all volunteer data was pooled. In the HARUSD, data is frequently acquired from 3 axes, an x, y, or z-axis component of an accelerometer or gyroscope measurement. This is frequently reflected in the codebook.
It should be noted that due to the nature of the summarisation of run.analysis.R that the final tidy dataset depicts the means of the variables 3-68, by subject and activity.

### Variables

1. 	**subject**
Number allocated to each volunteer participating in the Samsung smartphone experiments. A total of 30 subjects are detailed, numbered 1-30.

2.  **activity** Activity performed when wearing the Samsung smartphone. A categorical variable, 6 values: walking, walkingUpstairs, walkingDownstairs, sitting, standing and, laying. Each subject performed all 6 activities.

3.  **timeBodyAccelerationXaxisMean** 	 Mean of the time domain body acceleration signal from the accelerometer, in the x-axis. Data is normalised..

4.  **timeBodyAccelerationYaxisMean** 	Mean of the time domain body acceleration signal from the accelerometer, in the y-axis. Data is normalised..

5.  **timeBodyAccelerationZaxisMean** 	Mean of the time domain body acceleration signal from the accelerometer, in the z-axis. Data is normalised..

6.  **timeBodyAccelerationXaxisStd**  	Standard deviation of the time domain body acceleration signal from the accelerometer, in the x-axis. Data is normalised..

7.   **timeBodyAccelerationYaxisStd**  	Standard deviation of the time domain body acceleration signal from the accelerometer, in the y-axis. Data is normalised..

8.   **timeBodyAccelerationZaxisStd**  	Standard deviation of the time domain body acceleration signal from the accelerometer, in the z-axis. Data is normalised..

9.  **timeGravityAccelerationXaxisMean**  	Mean of the time domain gravity acceleration signal from the accelerometer, in the x-axis. Data is normalised.

10.  **timeGravityAccelerationYaxisMean**** 	Mean of the time domain gravity acceleration signal from the accelerometer, in the y-axis. Data is normalised.

11.  **timeGravityAccelerationZaxisMean**  	Mean of the time domain gravity acceleration signal from the accelerometer, in the z-axis. Data is normalised.

12.  **timeGravityAccelerationXaxisStd**  	Standard deviation of the time domain gravity acceleration signal from the accelerometer, in the x-axis.  Data is normalised.

13.  **timeGravityAccelerationYaxisStd**  	Standard deviation of the time domain gravity acceleration signal from the accelerometer, in the y-axis. Data is normalised.

14.  **timeGravityAccelerationZaxisStd**  	Standard deviation of the time domain gravity acceleration signal from the accelerometer, in the z-axis. Data is normalised.

15.  **timeBodyAccelerationJerkXaxisMean** 	Mean of the time domain body acceleration jerk signal from the accelerometer, in the x-axis. Data is normalised.

16.  **timeBodyAccelerationJerkYaxisMean** 	Mean of the time domain body acceleration jerk signal from the accelerometer, in the y-axis. Data is normalised.

17.  **timeBodyAccelerationJerkZaxisMean**    Mean of the time domain body acceleration jerk signal from the accelerometer, in the z-axis. Data is normalised.

18.  **timeBodyAccelerationJerkXaxisStd**  	Standard deviation of the time domain body acceleration jerk signal from the accelerometer, in the x-axis. Data is normalised.

19.  **timeBodyAccelerationJerkYaxisStd**  	Standard deviation of the time domain body acceleration jerk signal from the accelerometer, in the y-axis. Data is normalised.

20.  **timeBodyAccelerationJerkZaxisStd**  	Standard deviation of the time domain body acceleration jerk signal from the accelerometer, in the z-axis. Data is normalised.

21.  **timeBodyGyroscopeXaxisMean**  		Mean of the time domain body gyroscope signal, in the x-axis. Data is normalised.

22.  **timeBodyGyroscopeYaxisMean**  		Mean of the time domain body gyroscope signal, in the y-axis. Data is normalised.

23.  **timeBodyGyroscopeZaxisMean**  		Mean of the time domain body gyroscope signal, in the z-axis. Data is normalised.

24.  **timeBodyGyroscopeXaxisStd**  		Standard deviation of the time domain body gyroscope signal, in the x-axis. Data is normalised.

25.  **timeBodyGyroscopeYaxisStd**  		Standard deviation of the time domain body gyroscope signal, in the y-axis. Data is normalised.

26.  **timeBodyGyroscopeZaxisStd** 		Standard deviation of the time domain body gyroscope signal, in the z-axis. Data is normalised.

27.  **timeBodyGyroscopeJerkXaxisMean** 	Mean of the time domain body gyroscope jerk signal, in the x-axis. Data is normalised.

28.  **timeBodyGyroscopeJerkYaxisMean**  	Mean of the time domain body gyroscope jerk signal, in the y-axis. Data is normalised.

29.  **timeBodyGyroscopeJerkZaxisMean**  	Mean of the time domain body gyroscope jerk signal, in the z-axis. Data is normalised.

30.  **timeBodyGyroscopeJerkXaxisStd**  	Standard deviation of the time domain body gyroscope jerk signal, in the x-axis. Data is normalised.

31.  **timeBodyGyroscopeJerkYaxisStd**  	Standard deviation of the time domain body gyroscope jerk signal, in the y-axis. Data is normalised.

32.  **timeBodyGyroscopeJerkZaxisStd**  	Standard deviation of the time domain body gyroscope jerk signal, in the z-axis. Data is normalised.

33.  **timeBodyAccelerationMagnitudeMean**  	Mean of the magnitude of the time domain body acceleration signal from the accelerometer. Data is normalised.

34.  **timeBodyAccelerationMagnitudeStd**  	Standard deviation of the magnitude of the time domain body acceleration signal from the accelerometer. Data is normalised..

35.  **timeGravityAccelaerationMagnitudeMean**	Mean of the magnitude of the time domain gravity acceleration signal from the accelerometer. Data is normalised.

36.  **timegravityaccelerationmagnitudeStd**  	Standard deviation of the magnitude of the time domain gravity acceleration signal from the accelerometer. Data is normalised.

37.  **timeBodyAccelerationJerkMagnitudeMean**  	Mean of the magnitude of the time domain body acceleration jerk signal from the accelerometer. Data is normalised.

38.  **timeBodyAccelerationJerkMagnitudeStd**  	Standard deviation of the magnitude of the time domain body acceleration jerk signal from the accelerometer. Data is normalised.

39.  **timeBodyGyroscopeMagnitudeMean** 		Mean of the magnitude of the time domain body gyroscope signal. Data is normalised.

40.  **timeBodyGyroscopeMagnitudeStd**   	Standard deviation of the magnitude of the time domain body gyroscope signal. Data is normalised.

41.  **timeBodyGyroscopeJerkMagnitudeMean** 	Mean of the magnitude of the time domain body gyroscope jerk signal. Data is normalised.

42.  **timeBodyGyroscopeJerkMagnitudeStd** 	Standard deviation of the magnitude of the time domain body gyroscope jerk signal. Data is normalised.

43.  **frequencyBodyAccelerationXaxisMean** 	Mean of the frequency domain body acceleration signal from the accelerometer, in the x-axis. Data is normalised.

44.  **frequencyBodyAccelerationYaxisMean** 	Mean of the frequency domain body acceleration signal from the accelerometer, in the y-axis. Data is normalised.

45.  **frequencyBodyAccelerationZaxisMean** 	Mean of the frequency domain body acceleration signal from the accelerometer, in the z-axis. Data is normalised.

46.  **frequencyBodyAccelerationXaxisStd** 	Standard deviation of the frequency domain body acceleration signal from the accelerometer, in the x-axis. Data is normalised..

47.  **frequencyBodyAccelerationYaxisStd**  	Standard deviation of the frequency domain body acceleration signal from the accelerometer, in the y-axis. Data is normalised.

48.  **frequencyBodyAccelerationZaxisStd**  	Standard deviation of the frequency domain body acceleration signal from the accelerometer, in the z-axis. Data is normalised.

49.  **frequencyBodyAccelerationJerkXaxisMean**  Mean of the frequency domain body acceleration jerk signal from the accelerometer, in the x-axis. Data is normalised.

50.  **frequencyBodyAccelerationJerkYaxisMean**  Mean of the frequency domain body acceleration jerk signal from the accelerometer, in the y-axis. Data is normalised.

51.  **frequencyBodyAccelerationJerkZaxisMean**  Mean of the frequency domain body acceleration jerk signal from the accelerometer, in the z-axis. Data is normalised.

52.  **frequencyBodyAccelerationJerkXaxisStd**  	Standard deviation of the frequency domain body acceleration jerk signal from the accelerometer, in the x-axis. Data is normalised.

53.  **frequencyBodyAccelerationJerkYaxisStd**  	Standard deviation of the frequency domain body acceleration jerk signal from the accelerometer, in the y-axis. Data is normalised.

54.  **frequencyBodyAccelerationJerkZaxisStd**  	Standard deviation of the frequency domain body acceleration jerk signal from the accelerometer, in the z-axis. Data is normalised.

55.  **frequencyBodyGyroscopeXaxisMean** 	Mean of the frequency domain body gyroscope signal, in the x-axis. Data is normalised.

56.  **frequencyBodyGyroscopeYaxisMean**  	Mean of the frequency domain body gyroscope signal, in the y-axis. Data is normalised.

57.  **frequencyBodyGyroscopeZaxisMean**  	Mean of the frequency domain body gyroscope signal, in the z-axis. Data is normalised.
;
58.  **frequencyBodyGyroscopeXaxisStd**  	Standard deviation of the frequency domain body gyroscope signal, in the x-axis. Data is normalised.

59.  **frequencyBodyGyroscopeYaxisStd**  	Standard deviation of the frequency domain body gyroscope signal, in the y-axis. Data is normalised.

60.  ****frequencyBodyGyroscopeZaxisStd**  	Standard deviation of the frequency domain body gyroscope signal, in the z-axis. Data is normalised.

61.  **frequencyBodyAccelerationMagnitudeMean**  Mean of the magnitude of the frequency domain body acceleration signal from the accelerometer. Data is normalised.

62.  **frequencyBodyAccelerationMagnitudeStd**   Standard deviation of the magnitude of the frequency domain body acceleration signal from the accelerometer. Data is normalised.

63.  **frequencyBodyAccelerationJerkMagnitudeMean**  Mean of the magnitude of the frequency domain body acceleration jerk signal from the accelerometer. Data is normalised.

64.  **frequencyBodyAccelerationJerkMagnitudeStd**  Standard deviation of the magnitude of the frequency domain body acceleration jerk signal from the accelerometer. Data is normalised.

65.  **frequencyBodyGyroscopeMagnitudeMean**  	Mean of the magnitude of the frequency domain body gyroscope signal. Data is normalised.

66.  **frequencyBodyGyroscopeMagnitudeStd**  	Standard deviation of the magnitude of the frequency domain body gyroscope signal. Data is normalised.

67.  **frequencyBodyGyroscopeJerkMagnitudeMean** Mean of the magnitude of the frequency domain body gyroscope jerk signal. Data is normalised.

68. **frequencyBodyGyroscopeJerkMagnitudeStd**  Standard deviation of the magnitude of the frequency domain body gyroscope jerk signal. Data is normalised.

##### Note:

All 68 variables adhere to the principles of tidy data, being distributed 1 variable per column. Furthermore, all variable names are descriptive and human readable.
