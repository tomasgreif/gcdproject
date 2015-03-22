# CodeBook

## Data transformation

The data transformation of raw data was performed in the following steps:

### 1 Merge data

 - (a) Merge `subject_train`, `X_train`, `y_train` in `train` folder by columns
 - (b) Merge `subject_test`, `X_test`, `y_test` in `test` folder by columns 
 - (c) Merge (a) and (b) by rows
 
### 2 Pre-process feature names

 - (a) change feature names to lower case
 - (b) keep only features with `mean` or `std` in text
 - (c) remove feature names beginning with `angle` (as I don't think these are measures on mean or std)
 - (d) remove brackets `()` from features names
 - (e) replace `-` with `_` (personal preference)
 
### 3 Process data

 - subset (1c) by columns, use only features identified in (2)
 - rename columns to clean feature names as defined by (2e)
 - change `subject` column to `factor`, name levels appropriately
 - remove temporary objects
 
### 4 Aggregate data

 - aggregate data by subject and activity, where for every cobmination of
   subject and activity mean is calculated for every column - result is `out_df_aggregated`
 - write data to file `out.txt`
 
## List of Columns
List of columns in `out_df_aggregated`

|colName|class|domain|axis|mesaureType|Statistic|
|-----|-----|-----|-----|-----|
|activity|factor|||||
|subject|integer|||||
|tbodyacc_mean_x|numeric|Time|x|Accelerometer|Mean|
|tbodyacc_mean_y|numeric|Time|y|Accelerometer|Mean|
|tbodyacc_mean_z|numeric|Time|z|Accelerometer|Mean|
|tbodyacc_std_x|numeric|Time|x|Accelerometer|Std Dev.|
|tbodyacc_std_y|numeric|Time|y|Accelerometer|Std Dev.|
|tbodyacc_std_z|numeric|Time|z|Accelerometer|Std Dev.|
|tgravityacc_mean_x|numeric|Time|x|Accelerometer|Mean|
|tgravityacc_mean_y|numeric|Time|y|Accelerometer|Mean|
|tgravityacc_mean_z|numeric|Time|z|Accelerometer|Mean|
|tgravityacc_std_x|numeric|Time|x|Accelerometer|Std Dev.|
|tgravityacc_std_y|numeric|Time|y|Accelerometer|Std Dev.|
|tgravityacc_std_z|numeric|Time|z|Accelerometer|Std Dev.|
|tbodyaccjerk_mean_x|numeric|Time|x|Accelerometer|Mean|
|tbodyaccjerk_mean_y|numeric|Time|y|Accelerometer|Mean|
|tbodyaccjerk_mean_z|numeric|Time|z|Accelerometer|Mean|
|tbodyaccjerk_std_x|numeric|Time|x|Accelerometer|Std Dev.|
|tbodyaccjerk_std_y|numeric|Time|y|Accelerometer|Std Dev.|
|tbodyaccjerk_std_z|numeric|Time|z|Accelerometer|Std Dev.|
|tbodygyro_mean_x|numeric|Time|x|Gyroscope|Mean|
|tbodygyro_mean_y|numeric|Time|y|Gyroscope|Mean|
|tbodygyro_mean_z|numeric|Time|z|Gyroscope|Mean|
|tbodygyro_std_x|numeric|Time|x|Gyroscope|Std Dev.|
|tbodygyro_std_y|numeric|Time|y|Gyroscope|Std Dev.|
|tbodygyro_std_z|numeric|Time|z|Gyroscope|Std Dev.|
|tbodygyrojerk_mean_x|numeric|Time|x|Gyroscope|Mean|
|tbodygyrojerk_mean_y|numeric|Time|y|Gyroscope|Mean|
|tbodygyrojerk_mean_z|numeric|Time|z|Gyroscope|Mean|
|tbodygyrojerk_std_x|numeric|Time|x|Gyroscope|Std Dev.|
|tbodygyrojerk_std_y|numeric|Time|y|Gyroscope|Std Dev.|
|tbodygyrojerk_std_z|numeric|Time|z|Gyroscope|Std Dev.|
|tbodyaccmag_mean|numeric|Time||Accelerometer|Mean|
|tbodyaccmag_std|numeric|Time||Accelerometer|Std Dev.|
|tgravityaccmag_mean|numeric|Time||Accelerometer|Mean|
|tgravityaccmag_std|numeric|Time||Accelerometer|Std Dev.|
|tbodyaccjerkmag_mean|numeric|Time||Accelerometer|Mean|
|tbodyaccjerkmag_std|numeric|Time||Accelerometer|Std Dev.|
|tbodygyromag_mean|numeric|Time||Gyroscope|Mean|
|tbodygyromag_std|numeric|Time||Gyroscope|Std Dev.|
|tbodygyrojerkmag_mean|numeric|Time||Gyroscope|Mean|
|tbodygyrojerkmag_std|numeric|Time||Gyroscope|Std Dev.|
|fbodyacc_mean_x|numeric|Frequency|x|Accelerometer|Mean|
|fbodyacc_mean_y|numeric|Frequency|y|Accelerometer|Mean|
|fbodyacc_mean_z|numeric|Frequency|z|Accelerometer|Mean|
|fbodyacc_std_x|numeric|Frequency|x|Accelerometer|Std Dev.|
|fbodyacc_std_y|numeric|Frequency|y|Accelerometer|Std Dev.|
|fbodyacc_std_z|numeric|Frequency|z|Accelerometer|Std Dev.|
|fbodyacc_meanfreq_x|numeric|Frequency|x|Accelerometer|Mean|
|fbodyacc_meanfreq_y|numeric|Frequency|y|Accelerometer|Mean|
|fbodyacc_meanfreq_z|numeric|Frequency|z|Accelerometer|Mean|
|fbodyaccjerk_mean_x|numeric|Frequency|x|Accelerometer|Mean|
|fbodyaccjerk_mean_y|numeric|Frequency|y|Accelerometer|Mean|
|fbodyaccjerk_mean_z|numeric|Frequency|z|Accelerometer|Mean|
|fbodyaccjerk_std_x|numeric|Frequency|x|Accelerometer|Std Dev.|
|fbodyaccjerk_std_y|numeric|Frequency|y|Accelerometer|Std Dev.|
|fbodyaccjerk_std_z|numeric|Frequency|z|Accelerometer|Std Dev.|
|fbodyaccjerk_meanfreq_x|numeric|Frequency|x|Accelerometer|Mean|
|fbodyaccjerk_meanfreq_y|numeric|Frequency|y|Accelerometer|Mean|
|fbodyaccjerk_meanfreq_z|numeric|Frequency|z|Accelerometer|Mean|
|fbodygyro_mean_x|numeric|Frequency|x|Gyroscope|Mean|
|fbodygyro_mean_y|numeric|Frequency|y|Gyroscope|Mean|
|fbodygyro_mean_z|numeric|Frequency|z|Gyroscope|Mean|
|fbodygyro_std_x|numeric|Frequency|x|Gyroscope|Std Dev.|
|fbodygyro_std_y|numeric|Frequency|y|Gyroscope|Std Dev.|
|fbodygyro_std_z|numeric|Frequency|z|Gyroscope|Std Dev.|
|fbodygyro_meanfreq_x|numeric|Frequency|x|Gyroscope|Mean|
|fbodygyro_meanfreq_y|numeric|Frequency|y|Gyroscope|Mean|
|fbodygyro_meanfreq_z|numeric|Frequency|z|Gyroscope|Mean|
|fbodyaccmag_mean|numeric|Frequency||Accelerometer|Mean|
|fbodyaccmag_std|numeric|Frequency||Accelerometer|Std Dev.|
|fbodyaccmag_meanfreq|numeric|Frequency||Accelerometer|Mean|
|fbodybodyaccjerkmag_mean|numeric|Frequency||Accelerometer|Mean|
|fbodybodyaccjerkmag_std|numeric|Frequency||Accelerometer|Std Dev.|
|fbodybodyaccjerkmag_meanfreq|numeric|Frequency||Accelerometer|Mean|
|fbodybodygyromag_mean|numeric|Frequency||Gyroscope|Mean|
|fbodybodygyromag_std|numeric|Frequency||Gyroscope|Std Dev.|
|fbodybodygyromag_meanfreq|numeric|Frequency||Gyroscope|Mean|
|fbodybodygyrojerkmag_mean|numeric|Frequency||Gyroscope|Mean|
|fbodybodygyrojerkmag_std|numeric|Frequency||Gyroscope|Std Dev.|
|fbodybodygyrojerkmag_meanfreq|numeric|Frequency||Gyroscope|Mean|
