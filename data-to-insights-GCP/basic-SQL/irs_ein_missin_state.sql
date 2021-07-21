#standardSQL
# Author: Google Public Dataset BigQuery team
# Find all values where the state is missing for the charities
SELECT 
  ein,
  street,
  city,
  state,
  zip
FROM
  `bigquery-public-data.irs_990.irs_990_ein`
WHERE
  state IS NULL
LIMIT 10
