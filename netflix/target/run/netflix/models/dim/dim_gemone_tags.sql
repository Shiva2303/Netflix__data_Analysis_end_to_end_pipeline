
  
    

        create or replace transient table MOVIELENS.DEV.dim_gemone_tags
         as
        (WITH src_tags AS (
    SELECT tag_id, tag FROM MOVIELENS.DEV.src_genome_tags
)

SELECT 
    tag_id,
    tag,
    INITCAP(TRIM(tag)) AS tag_name
FROM src_tags
        );
      
  