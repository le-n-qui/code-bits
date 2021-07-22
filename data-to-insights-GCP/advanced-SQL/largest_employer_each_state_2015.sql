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
GROUP BY 1, 2, 3, 4
)

SELECT * FROM employees_count_per_state
WHERE rank = 1
ORDER BY num_of_employees DESC;

# RECAP:
# 1. Use common table expression to create temp table (WITH clause)
# 2. Use partitions with analytical function, e.g. RANK()
# 3. Use USING() instead of comparing one table's key with that of another table
# 4. Deduplicate result set with GROUP BY indexing table columns