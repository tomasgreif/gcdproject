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

colName|class|domain|axis|mesaureType
activity|factor|NA|NA|NA
subject|integer|NA|NA|NA
tbodyacc_mean_x|numeric|Time|x|Accelerometer
tbodyacc_mean_y|numeric|Time|y|Accelerometer
tbodyacc_mean_z|numeric|Time|z|Accelerometer
tbodyacc_std_x|numeric|Time|x|Accelerometer
tbodyacc_std_y|numeric|Time|y|Accelerometer
tbodyacc_std_z|numeric|Time|z|Accelerometer
tgravityacc_mean_x|numeric|Time|x|Accelerometer
tgravityacc_mean_y|numeric|Time|y|Accelerometer
tgravityacc_mean_z|numeric|Time|z|Accelerometer
tgravityacc_std_x|numeric|Time|x|Accelerometer
tgravityacc_std_y|numeric|Time|y|Accelerometer
tgravityacc_std_z|numeric|Time|z|Accelerometer
tbodyaccjerk_mean_x|numeric|Time|x|Accelerometer
tbodyaccjerk_mean_y|numeric|Time|y|Accelerometer
tbodyaccjerk_mean_z|numeric|Time|z|Accelerometer
tbodyaccjerk_std_x|numeric|Time|x|Accelerometer
tbodyaccjerk_std_y|numeric|Time|y|Accelerometer
tbodyaccjerk_std_z|numeric|Time|z|Accelerometer
tbodygyro_mean_x|numeric|Time|x|Gyroscope
tbodygyro_mean_y|numeric|Time|y|Gyroscope
tbodygyro_mean_z|numeric|Time|z|Gyroscope
tbodygyro_std_x|numeric|Time|x|Gyroscope
tbodygyro_std_y|numeric|Time|y|Gyroscope
tbodygyro_std_z|numeric|Time|z|Gyroscope
tbodygyrojerk_mean_x|numeric|Time|x|Gyroscope
tbodygyrojerk_mean_y|numeric|Time|y|Gyroscope
tbodygyrojerk_mean_z|numeric|Time|z|Gyroscope
tbodygyrojerk_std_x|numeric|Time|x|Gyroscope
tbodygyrojerk_std_y|numeric|Time|y|Gyroscope
tbodygyrojerk_std_z|numeric|Time|z|Gyroscope
tbodyaccmag_mean|numeric|Time|NA|Accelerometer
tbodyaccmag_std|numeric|Time|NA|Accelerometer
tgravityaccmag_mean|numeric|Time|NA|Accelerometer
tgravityaccmag_std|numeric|Time|NA|Accelerometer
tbodyaccjerkmag_mean|numeric|Time|NA|Accelerometer
tbodyaccjerkmag_std|numeric|Time|NA|Accelerometer
tbodygyromag_mean|numeric|Time|NA|Gyroscope
tbodygyromag_std|numeric|Time|NA|Gyroscope
tbodygyrojerkmag_mean|numeric|Time|NA|Gyroscope
tbodygyrojerkmag_std|numeric|Time|NA|Gyroscope
fbodyacc_mean_x|numeric|Frequency|x|Accelerometer
fbodyacc_mean_y|numeric|Frequency|y|Accelerometer
fbodyacc_mean_z|numeric|Frequency|z|Accelerometer
fbodyacc_std_x|numeric|Frequency|x|Accelerometer
fbodyacc_std_y|numeric|Frequency|y|Accelerometer
fbodyacc_std_z|numeric|Frequency|z|Accelerometer
fbodyacc_meanfreq_x|numeric|Frequency|x|Accelerometer
fbodyacc_meanfreq_y|numeric|Frequency|y|Accelerometer
fbodyacc_meanfreq_z|numeric|Frequency|z|Accelerometer
fbodyaccjerk_mean_x|numeric|Frequency|x|Accelerometer
fbodyaccjerk_mean_y|numeric|Frequency|y|Accelerometer
fbodyaccjerk_mean_z|numeric|Frequency|z|Accelerometer
fbodyaccjerk_std_x|numeric|Frequency|x|Accelerometer
fbodyaccjerk_std_y|numeric|Frequency|y|Accelerometer
fbodyaccjerk_std_z|numeric|Frequency|z|Accelerometer
fbodyaccjerk_meanfreq_x|numeric|Frequency|x|Accelerometer
fbodyaccjerk_meanfreq_y|numeric|Frequency|y|Accelerometer
fbodyaccjerk_meanfreq_z|numeric|Frequency|z|Accelerometer
fbodygyro_mean_x|numeric|Frequency|x|Gyroscope
fbodygyro_mean_y|numeric|Frequency|y|Gyroscope
fbodygyro_mean_z|numeric|Frequency|z|Gyroscope
fbodygyro_std_x|numeric|Frequency|x|Gyroscope
fbodygyro_std_y|numeric|Frequency|y|Gyroscope
fbodygyro_std_z|numeric|Frequency|z|Gyroscope
fbodygyro_meanfreq_x|numeric|Frequency|x|Gyroscope
fbodygyro_meanfreq_y|numeric|Frequency|y|Gyroscope
fbodygyro_meanfreq_z|numeric|Frequency|z|Gyroscope
fbodyaccmag_mean|numeric|Frequency|NA|Accelerometer
fbodyaccmag_std|numeric|Frequency|NA|Accelerometer
fbodyaccmag_meanfreq|numeric|Frequency|NA|Accelerometer
fbodybodyaccjerkmag_mean|numeric|Frequency|NA|Accelerometer
fbodybodyaccjerkmag_std|numeric|Frequency|NA|Accelerometer
fbodybodyaccjerkmag_meanfreq|numeric|Frequency|NA|Accelerometer
fbodybodygyromag_mean|numeric|Frequency|NA|Gyroscope
fbodybodygyromag_std|numeric|Frequency|NA|Gyroscope
fbodybodygyromag_meanfreq|numeric|Frequency|NA|Gyroscope
fbodybodygyrojerkmag_mean|numeric|Frequency|NA|Gyroscope
fbodybodygyrojerkmag_std|numeric|Frequency|NA|Gyroscope
fbodybodygyrojerkmag_meanfreq|numeric|Frequency|NA|Gyroscope
