#standardSQL
# Author: Google Public Dataset BigQuery team
# Dataset: NOAA Weather Dataset
# Task: Vertically Merging Datasets With Same Schema

SELECT
  stn,
  wban,
  temp, 
  year
FROM
  `bigquery-public-data.noaa_gsod.gsod*`
