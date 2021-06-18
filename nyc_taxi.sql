# standardsql
# Author: Google Public Dataset BigQuery team
# Objective: Analyze 146 million NYC taxi trips to find out how fast cabs go during the day

SELECT
  EXTRACT(HOUR FROM pickup_datetime) AS hour,
  ROUND(AVG(trip_distance / TIMESTAMP_DIFF(dropoff_datetime, pickup_datetime, SECOND))*3600, 1) AS speed
FROM
  `bigquery-public-data.new_york.tlc_yellow_trips_2015`
WHERE
  trip_distance > 0
  AND fare_amount/trip_distance BETWEEN 2 AND 10
  AND dropoff_datetime > pickup_datetime
GROUP BY hour
ORDER BY hour
