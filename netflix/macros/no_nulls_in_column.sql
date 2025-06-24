
{% macro no_nulls_in_column(model) %}
    {% set columns = dbt_utils.get_filtered_columns_in_relation(from=ref(model)) %}

    SELECT * FROM {{ ref(model) }}
    WHERE
    {% for col in columns %}
        {{ col }} IS NULL
        {% if not loop.last %} OR {% endif %}
    {% endfor %}
{% endmacro %}

