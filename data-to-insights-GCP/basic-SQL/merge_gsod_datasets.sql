#standardSQL
# Author: Google Public Dataset BigQuery team
# Dataset: NOAA Weather Dataset
# Task: Vertically Merging Datasets With Same Schema

SELECT
  stn,
  wban,
  temp, 
  year,
  _TABLE_SUFFIX AS table_name_year
FROM
  `bigquery-public-data.noaa_gsod.gsod*`
WHERE
  _TABLE_SUFFIX > '1999'
LIMIT 10
