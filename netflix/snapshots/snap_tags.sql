{% snapshot snap_tags %}
{{
    config(
        target_schema='snapshots', 
        unique_key=['user_id', 'movie_id', 'tag'],
        strategy='timestamp',
        updated_at='timestamp'
    )
}}

SELECT 
    {{ dbt_utils.generate_surrogate_key(['user_id','movie_id','tag']) }} AS row_key,
    user_id,
    movie_id,
    tag,
    CAST("TIMESTAMP" AS TIMESTAMP_NTZ) AS timestamp
FROM {{ ref('src_tags') }}
LIMIT 100

{% endsnapshot %}
