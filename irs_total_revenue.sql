#standardSQL
# Author: Google Public Dataset BigQuery team
# Retrieve top 10 total revenues in IRS 990 filings for 2015
SELECT
  totrevenue
FROM 
  `bigquery-public-data.irs_990.irs_990_2015`
