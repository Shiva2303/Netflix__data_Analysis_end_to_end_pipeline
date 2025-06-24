
    select
      count(*) as failures,
      count(*) != 0 as should_warn,
      count(*) != 0 as should_error
    from (
      
    
  -- SELECT 
--     movie_id,
--     title,
--     genres
-- FROM MOVIELENS.DEV.src_movies
-- WHERE movie_id > 33

    

    SELECT * FROM MOVIELENS.DEV.src_movies
    WHERE
    
        MOVIE_ID IS NULL
         OR 
    
        TITLE IS NULL
         OR 
    
        GENRES IS NULL
        
    

  
  
      
    ) dbt_internal_test