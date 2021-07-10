#standardSQL
# Practice: An anti-fraud team has asked me to create a report
# that lists the 10 most recent transactions that have an order
# amount of 1,000 or more for them to review manually
# Task: Create a new view that returns all the most recent 10
# transactions with revenue greater than 1,000 on or after 01/01/2017

CREATE OR REPLACE VIEW ecommerce.vw_large_transactions
OPTIONS (
  description="large transactions for review",
  labels=[("org_unit", "loss_prevention")]
)
AS
SELECT DISTINCT
  date,
  fullVisitorId,
  visitId,
  channelGrouping,
  totalTransactionRevenue AS revenue,
  currencyCode,
  v2ProductName
FROM
  `data-to-insights.ecommerce.all_sessions_raw`
