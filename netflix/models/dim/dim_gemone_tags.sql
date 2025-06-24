WITH src_tags AS (
    SELECT tag_id, tag FROM {{ ref('src_genome_tags') }}
)

SELECT 
    tag_id,
    tag,
    INITCAP(TRIM(tag)) AS tag_name
FROM src_tags
