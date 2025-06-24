

WITH movies AS (
    SELECT * FROM MOVIELENS.DEV.dim_movies
),
tags AS (
    SELECT * FROM MOVIELENS.DEV.dim_gemone_tags
),
scores AS (
    SELECT * FROM MOVIELENS.DEV.fct_genome_scores
)

SELECT
    m.movie_id,
    m.movie_title,
    m.genres,
    t.tag_name,
    s.relevance_scores
FROM movies m 
LEFT JOIN scores s on m.movie_id = s.movie_id
LEFT JOIN tags t on t.tag_id = s.tag_id