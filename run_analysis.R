# Directory where data are extracted
dir <- 'UCI HAR Dataset'
full_path <- file.path(getwd(), dir)

# Test existence of directory
if(!file.exists(full_path)) {
  stop('The folder I expected does not exist in working directory')
}


###############################################################################
# Read data

# Read train datasets
  train_df   <- read.table(file.path(full_path, 'train', 'X_train.txt'))
  train_subj <- read.table(file.path(full_path, 'train', 'subject_train.txt'))
  train_y    <- read.table(file.path(full_path, 'train', 'y_train.txt'))
  # Test all train datasets have the same number of rows
  stopifnot(
    nrow(train_df) == nrow(train_subj) && nrow(train_df) == nrow(train_y)
  )

# Read test datasets
  test_df   <- read.table(file.path(full_path, 'test', 'X_test.txt'))
  test_subj <- read.table(file.path(full_path, 'test', 'subject_test.txt'))
  test_y    <- read.table(file.path(full_path, 'test', 'y_test.txt'))
# Test all test datasets have the same number of rows
  stopifnot(
    nrow(test_df) == nrow(test_subj) && nrow(test_df) == nrow(test_y)
  )

# Test all datasets have the same number of rows
  stopifnot(
    nrow(test_df) == nrow(test_subj) && nrow(test_df) == nrow(test_y)
  )

###############################################################################
# Merge data
  # Test that train and test df have the same number of columns
  ncol(train_df) == ncol(test_df)
  # cbind columns of train/test and then rbind results
  out_df <- rbind(
    cbind(train_df, train_subj, train_y),
    cbind(test_df,  test_subj,  test_y)
  )

###############################################################################
# Read & Process Features
# Get raw feature names. This is second column in features.txt
# and I will convert it to character vector so I can process variable names
# easily later.
  features_all  <- read.table(file.path(full_path, 'features.txt'), 
                        stringsAsFactors = FALSE)[[2]]

# Process feature names
  # Format to lower case
  features <- tolower(features_all)
  # Keep only mean or std features
  features <- features[grepl('mean|std', features, 
               ignore.case = TRUE, perl = TRUE)] 
  # Exclude angle features (these contain mean or std, but I think)
  # they should not be included in this exercise
  features <- features[grepl('^[^angle]', features)]

# Clen names of features
  # Remove brackets
  features_clean <- gsub('[()]', replacement = '', features)
  # Replace "-" with underscore.
  features_clean <- gsub('-', '_', features_clean)

###############################################################################
# Subset & Rename Features

# Columns to keep
  # We need to keep only features with mean or std
  cols <- which(tolower(features_all) %in% features)
  # And last two columns with subject and activity
  cols <- c(cols, ncol(out_df) - 1, ncol(out_df))

# Subset data (keep all rows, but only defined columns)
  out_df <- out_df[, cols]

# Rename features to loaded and cleaned names
  names(out_df) <- c(features_clean, 'subject', 'activity')

# Change activity to factor
  out_df$activity <- factor(out_df$activity, labels = 
                              c('walking', 'walking_upstairs',
                                'walking_downstairs', 'sitting',
                                'standing', 'laying'))


###############################################################################
# Check what is the result
  str(out_df)

# Remove temporary objects we do not need
  rm(test_df, test_subj, test_y, train_df, train_subj, train_y, 
     features_all, features, features_clean, cols, dir, full_path)

###############################################################################
# Aggregate data
# average of each variable for each activity and each subject

library(data.table)
out_df_aggregated <- as.data.table(out_df) 
out_df_aggregated <- out_df_aggregated[, lapply(.SD, mean), 
                                       by = list(activity, subject)]

###############################################################################
# Write data to output
write.table(out_df_aggregated, 'tidy_data.txt', row.name=FALSE) 



