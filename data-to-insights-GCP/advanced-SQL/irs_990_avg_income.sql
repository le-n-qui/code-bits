#standardSQL
# BigQuery Public Data: IRS 990
# Find the average income from IRS filings in year 2013 and later

# Retrieve the year in which organization filed, the count of filings,
# revenue and expenses since 2013
SELECT
  CONCAT("20", _TABLE_SUFFIX) AS year_filed,
  COUNT(ein) AS nonprofit_count,
  AVG(totrevenue) AS avg_revenue,
  AVG(totfuncexpns) AS avg_expenses
FROM
  `bigquery-public-data.irs_990.irs_990_20*`
WHERE _TABLE_SUFFIX >= '13'
GROUP BY year_filed
ORDER BY year_filed DESC
