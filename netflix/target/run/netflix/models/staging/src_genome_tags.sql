
  create or replace   view MOVIELENS.DEV.src_genome_tags
  
   as (
    WITH raw_genome_tags AS (
    SELECT * FROM MOVIELENS.RAW.raw_genome_tags
)
SELECT 
    tagId AS tag_id,
    tag
FROM raw_genome_tags
  );

