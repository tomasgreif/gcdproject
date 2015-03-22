# Getting and Cleaning Data - Project Assignment

# Overview
This repository is an implementation of project assignment in Getting and Cleaning
data course (Coursera).

## Pre-requisities
In order to run the code you need to meet the following pre-requisities:

 - R Version 3.1.2
 - R package data.table 1.9.4

## Usage
 - download, extract, and store [data](https://d396qusza40orc.cloudfront.net/getdata%2Fprojectfiles%2FUCI%20HAR%20Dataset.zip)
 - configure `dir` variable at first line in `run_analysis.R` - this is a name of directory where downloaded
   data are avaiable. It has to be a sub-directory of your working directory (as indicated
   by `getwd()`)
 - run code in `run_analysis.R`
 - use data frame `out_df_aggregated` to perform additional analysis

[CodeBook](CodeBook.md) for output data is available here - description of raw data transformation
is also described here.

## Troubleshooting

In case you have any problems running this analysis, please file a bug here on github.