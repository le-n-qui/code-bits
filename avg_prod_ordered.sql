#standardSQL
# Author: Google Public Dataset BigQuery team

# Find cities with the highest number of products ordered
SELECT
  geoNetwork_city,
  totals_transactions,
  fullVisitorId
FROM
  `data-to-insights.ecommerce.rev_transactions`

# Find the average number of products ordered by cities via Google Ecommerce site
