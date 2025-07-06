{% macro remove_nulls_from_columns(columns) %}
    {%- set filters = [] -%}
    {%- for col in columns -%}
        {%- do filters.append(col ~ ' IS NOT NULL') -%}
    {%- endfor -%}
    {{ filters | join(' AND ') }}
{% endmacro %}