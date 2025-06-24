-- with source as (
--         select * from raw_movies
--   ),
--   renamed as (
--       select
          

--       from source
--   )
--   select * from renamed

with source as (
    select * from src_movies
),
renamed as (
    select
        movie_id,
        title,
        genres
    from source
)
select * from renamed