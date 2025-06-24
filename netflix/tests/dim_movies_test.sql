
-- SELECT 
--     movie_id,
--     title,
--     genres
-- FROM {{ref('src_movies')}}
-- WHERE movie_id > 33
{{ no_nulls_in_column('src_movies') }}
