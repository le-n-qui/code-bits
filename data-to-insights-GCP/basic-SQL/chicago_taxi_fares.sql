#standardSQL
# Author: Google Public Dataset BigQuery team
# The below query retrieves the maximum, minimum, and average fare 
# for rides lasting 10 minutes or longer. The results are grouped
# by week day. It also calculates the standard deviation of fares  
# and the total number of rides given on each day.
SELECT
  EXTRACT(DAYOFWEEK FROM trip_start_timestamp) AS day,
  FORMAT('%3.2f', MAX(fare)) AS maximum_fare,
  FORMAT('%3.2f', MIN(fare)) AS minimum_fare,
  FORMAT('%3.2f', AVG(fare)) AS avg_fare,
  FORMAT('%3.2f', STDDEV(fare)) AS std_dev_fare,
  COUNT(1) AS rides
FROM
  `bigquery-public-data.chicago_taxi_trips.taxi_trips`
WHERE
  trip_seconds >= 600
GROUP BY 
  day
ORDER BY
  day
