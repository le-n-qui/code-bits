#standardSQL
# Largest employer per U.S. state for the 2015 filing year
WITH employees_count_per_state AS (
SELECT
  ein, # Employer Identification Number
  name, # Employer's name
  noemployeesw3cnt AS num_of_employees,
  state, # which state does employer reside in
  RANKED() OVER (PARTITION BY state ORDER BY noemployeesw3cnt DESC) AS rank 
FROM
  `bigquery-public-data.irs_990.irs_990_2015`
    JOIN
  `bigquery-public-data.irs_990.irs_990_ein`
USING(ein)
)

SELECT * FROM employees_count_per_state
WHERE rank = 1