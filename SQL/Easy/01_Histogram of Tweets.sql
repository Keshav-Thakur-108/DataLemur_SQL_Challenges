WITH tweet_count AS
(
  SELECT user_id, COUNT(*) as tweet_bucket 
  FROM tweets
  WHERE EXTRACT(YEAR FROM tweet_date) = 2022
  GROUP BY user_id
)

SELECT tweet_bucket, COUNT(*) AS users_num 
FROM tweet_count
GROUP BY tweet_bucket ORDER BY 1;