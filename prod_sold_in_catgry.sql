#standardSQL
# Author: Google Public Dataset BigQuery team
# Find the number of products that were sold for each category in Google ecommerce site
SELECT
  hits_product_v2ProductName,
  hits_product_v2ProductCategory
FROM 
  `data-to-insights.ecommerce.rev_transactions`
