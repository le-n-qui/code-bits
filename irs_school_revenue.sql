#standardSQL
# Author: Google Public Dataset BigQuery team
# Retrieve revenues, EINs and school status for educational organizations
SELECT
  totrevenue AS revenue,
  ein,
  operateschools170cd AS is_school
FROM
  `bigquery-public-data.irs_990.irs_990_2015`
ORDER BY totrevenue DESC
LIMIT 10
 
