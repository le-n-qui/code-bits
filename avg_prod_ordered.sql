#standardSQL
# Author: Google Public Dataset BigQuery team

# Find cities with the highest number of products ordered

SELECT
  geoNetwork_city,
  SUM(totals_transactions) AS total_products_ordered,
  COUNT(DISTINCT fullVisitorId) AS distinct_visitors
FROM
  `data-to-insights.ecommerce.rev_transactions`
GROUP BY geoNetwork_city
ORDER BY total_products_ordered DESC
LIMIT 10

# Find the average number of products ordered by cities via Google Ecommerce site

SELECT
  geoNetwork_city,
  SUM(totals_transactions) AS total_products_ordered,
  COUNT(DISTINCT fullVisitorId) AS distinct_visitors
  SUM(totals_transactions) / COUNT(DISTINCT fullVisitorId) AS avg_products_ordered
FROM
  `data-to-insights.ecommerce.rev_transactions`
GROUP BY geoNetwork_city
ORDER BY avg_products_ordered DESC
