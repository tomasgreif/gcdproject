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
List of columns in `out_df_aggregated`.

Levels for column `activity` are: walking, walking_upstairs, walking_downstairs, sitting,
standing, laying

|colName|class|domain|axis|mesaureType|Statistic|Units|
|-----|-----|-----|-----|-----|---|---|
|activity|factor| | | | |
|subject|integer| | | | |
|tbodyacc_mean_x|numeric|Time|x|Accelerometer|Mean|Hz|
|tbodyacc_mean_y|numeric|Time|y|Accelerometer|Mean|Hz|
|tbodyacc_mean_z|numeric|Time|z|Accelerometer|Mean|Hz|
|tbodyacc_std_x|numeric|Time|x|Accelerometer|Std Dev.|Hz|
|tbodyacc_std_y|numeric|Time|y|Accelerometer|Std Dev.|Hz|
|tbodyacc_std_z|numeric|Time|z|Accelerometer|Std Dev.|Hz|
|tgravityacc_mean_x|numeric|Time|x|Accelerometer|Mean|Hz|
|tgravityacc_mean_y|numeric|Time|y|Accelerometer|Mean|Hz|
|tgravityacc_mean_z|numeric|Time|z|Accelerometer|Mean|Hz|
|tgravityacc_std_x|numeric|Time|x|Accelerometer|Std Dev.|Hz|
|tgravityacc_std_y|numeric|Time|y|Accelerometer|Std Dev.|Hz|
|tgravityacc_std_z|numeric|Time|z|Accelerometer|Std Dev.|Hz|
|tbodyaccjerk_mean_x|numeric|Time|x|Accelerometer|Mean|Hz|
|tbodyaccjerk_mean_y|numeric|Time|y|Accelerometer|Mean|Hz|
|tbodyaccjerk_mean_z|numeric|Time|z|Accelerometer|Mean|Hz|
|tbodyaccjerk_std_x|numeric|Time|x|Accelerometer|Std Dev.|Hz|
|tbodyaccjerk_std_y|numeric|Time|y|Accelerometer|Std Dev.|Hz|
|tbodyaccjerk_std_z|numeric|Time|z|Accelerometer|Std Dev.|Hz|
|tbodygyro_mean_x|numeric|Time|x|Gyroscope|Mean|Hz|
|tbodygyro_mean_y|numeric|Time|y|Gyroscope|Mean|Hz|
|tbodygyro_mean_z|numeric|Time|z|Gyroscope|Mean|Hz|
|tbodygyro_std_x|numeric|Time|x|Gyroscope|Std Dev.|Hz|
|tbodygyro_std_y|numeric|Time|y|Gyroscope|Std Dev.|Hz|
|tbodygyro_std_z|numeric|Time|z|Gyroscope|Std Dev.|Hz|
|tbodygyrojerk_mean_x|numeric|Time|x|Gyroscope|Mean|Hz|
|tbodygyrojerk_mean_y|numeric|Time|y|Gyroscope|Mean|Hz|
|tbodygyrojerk_mean_z|numeric|Time|z|Gyroscope|Mean|Hz|
|tbodygyrojerk_std_x|numeric|Time|x|Gyroscope|Std Dev.|Hz|
|tbodygyrojerk_std_y|numeric|Time|y|Gyroscope|Std Dev.|Hz|
|tbodygyrojerk_std_z|numeric|Time|z|Gyroscope|Std Dev.|Hz|
|tbodyaccmag_mean|numeric|Time||Accelerometer|Mean|Hz|
|tbodyaccmag_std|numeric|Time||Accelerometer|Std Dev.|Hz|
|tgravityaccmag_mean|numeric|Time||Accelerometer|Mean|Hz|
|tgravityaccmag_std|numeric|Time||Accelerometer|Std Dev.|Hz|
|tbodyaccjerkmag_mean|numeric|Time||Accelerometer|Mean|Hz|
|tbodyaccjerkmag_std|numeric|Time||Accelerometer|Std Dev.|Hz|
|tbodygyromag_mean|numeric|Time||Gyroscope|Mean|Hz|
|tbodygyromag_std|numeric|Time||Gyroscope|Std Dev.|Hz|
|tbodygyrojerkmag_mean|numeric|Time||Gyroscope|Mean|Hz|
|tbodygyrojerkmag_std|numeric|Time||Gyroscope|Std Dev.|Hz|
|fbodyacc_mean_x|numeric|Frequency|x|Accelerometer|Mean|Hz|
|fbodyacc_mean_y|numeric|Frequency|y|Accelerometer|Mean|Hz|
|fbodyacc_mean_z|numeric|Frequency|z|Accelerometer|Mean|Hz|
|fbodyacc_std_x|numeric|Frequency|x|Accelerometer|Std Dev.|Hz|
|fbodyacc_std_y|numeric|Frequency|y|Accelerometer|Std Dev.|Hz|
|fbodyacc_std_z|numeric|Frequency|z|Accelerometer|Std Dev.|Hz|
|fbodyacc_meanfreq_x|numeric|Frequency|x|Accelerometer|Mean|Hz|
|fbodyacc_meanfreq_y|numeric|Frequency|y|Accelerometer|Mean|Hz|
|fbodyacc_meanfreq_z|numeric|Frequency|z|Accelerometer|Mean|Hz|
|fbodyaccjerk_mean_x|numeric|Frequency|x|Accelerometer|Mean|Hz|
|fbodyaccjerk_mean_y|numeric|Frequency|y|Accelerometer|Mean|Hz|
|fbodyaccjerk_mean_z|numeric|Frequency|z|Accelerometer|Mean|Hz|
|fbodyaccjerk_std_x|numeric|Frequency|x|Accelerometer|Std Dev.|Hz|
|fbodyaccjerk_std_y|numeric|Frequency|y|Accelerometer|Std Dev.|Hz|
|fbodyaccjerk_std_z|numeric|Frequency|z|Accelerometer|Std Dev.|Hz|
|fbodyaccjerk_meanfreq_x|numeric|Frequency|x|Accelerometer|Mean|Hz|
|fbodyaccjerk_meanfreq_y|numeric|Frequency|y|Accelerometer|Mean|Hz|
|fbodyaccjerk_meanfreq_z|numeric|Frequency|z|Accelerometer|Mean|Hz|
|fbodygyro_mean_x|numeric|Frequency|x|Gyroscope|Mean|Hz|
|fbodygyro_mean_y|numeric|Frequency|y|Gyroscope|Mean|Hz|
|fbodygyro_mean_z|numeric|Frequency|z|Gyroscope|Mean|Hz|
|fbodygyro_std_x|numeric|Frequency|x|Gyroscope|Std Dev.|Hz|
|fbodygyro_std_y|numeric|Frequency|y|Gyroscope|Std Dev.|Hz|
|fbodygyro_std_z|numeric|Frequency|z|Gyroscope|Std Dev.|Hz|
|fbodygyro_meanfreq_x|numeric|Frequency|x|Gyroscope|Mean|Hz|
|fbodygyro_meanfreq_y|numeric|Frequency|y|Gyroscope|Mean|Hz|
|fbodygyro_meanfreq_z|numeric|Frequency|z|Gyroscope|Mean|Hz|
|fbodyaccmag_mean|numeric|Frequency||Accelerometer|Mean|Hz|
|fbodyaccmag_std|numeric|Frequency||Accelerometer|Std Dev.|Hz|
|fbodyaccmag_meanfreq|numeric|Frequency||Accelerometer|Mean|Hz|
|fbodybodyaccjerkmag_mean|numeric|Frequency||Accelerometer|Mean|Hz|
|fbodybodyaccjerkmag_std|numeric|Frequency||Accelerometer|Std Dev.|Hz|
|fbodybodyaccjerkmag_meanfreq|numeric|Frequency||Accelerometer|Mean|Hz|
|fbodybodygyromag_mean|numeric|Frequency||Gyroscope|Mean|Hz|
|fbodybodygyromag_std|numeric|Frequency||Gyroscope|Std Dev.|Hz|
|fbodybodygyromag_meanfreq|numeric|Frequency||Gyroscope|Mean|Hz|
|fbodybodygyrojerkmag_mean|numeric|Frequency||Gyroscope|Mean|Hz|
|fbodybodygyrojerkmag_std|numeric|Frequency||Gyroscope|Std Dev.|Hz|
|fbodybodygyrojerkmag_meanfreq|numeric|Frequency||Gyroscope|Mean|Hz|