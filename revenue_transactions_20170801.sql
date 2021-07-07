#standardSQL
# Practice: Create a new permanent table that stores
# all the transactions with revenue for 08/01/2017

# Take one day of ecommerce data to explore
CREATE OR REPLACE TABLE ecommerce.revenue_transactions_20170801
#schema
(
  fullVisitorId STRING NOT NULL OPTIONS(description="Unique visitor ID"),
  visitId STRING NOT NULL OPTIONS(description="ID of the session, not unique across all the users")
)
