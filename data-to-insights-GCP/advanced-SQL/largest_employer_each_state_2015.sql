#standardSQL
# Largest employer per U.S. state for the 2015 filing year
SELECT
  ein, # Employer Identification Number
  name, # Employer's name
  noemployeesw3cnt AS num_of_employees,
  state
FROM
  `bigquery-public-data.irs_990.irs_990_2015`
    JOIN
  `bigquery-public-data.irs_990.irs_990_ein`
USING(ein)
LIMIT 10;