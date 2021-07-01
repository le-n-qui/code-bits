#standardSQL
# Author: Google Public Dataset BigQuery team
# Find all charities or non-profit organizations that have filed
# IRS 990 form as schools and also filed in paper format for 2015  
SELECT
  *
FROM 
  `bigquiery-public-data.irs_990.irs_990_2015`
WHERE
  elf = 'P' AND operateschools170cd = 'Y'
