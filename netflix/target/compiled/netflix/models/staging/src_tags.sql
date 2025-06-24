
WITH RAW_TAG AS(
      SELECT * FROM MOVIELENS.RAW.RAW_TAG
)
SELECT 
    userId AS user_id,
    movieId AS movie_id,
    TAG, 
    TIMESTAMP 
FROM RAW_TAG