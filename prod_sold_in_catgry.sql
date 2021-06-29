#standardSQL
# Author: Google Public Dataset BigQuery team
# Find the number of products that were sold for each category in Google ecommerce site
SELECT
  COUNT(DISTINCT hits_product_v2ProductName) AS number_of_products,
  hits_product_v2ProductCategory
FROM 
  `data-to-insights.ecommerce.rev_transactions`
WHERE
  hits_product_v2ProductName IS NOT NULL
GROUP BY
  hits_product_v2ProductCategory
ORDER BY 
  number_of_products DESC
LIMIT 5
