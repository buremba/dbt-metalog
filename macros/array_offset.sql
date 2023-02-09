{% macro array_offset(arr, position) -%}
    {{ return(adapter.dispatch('array_offset', 'metalog')(arr, position)) }}
{%- endmacro %}


{% macro default__array_offset(arr, position) -%}
    {{arr}}[offset({{position}})]
{%- endmacro %}


{% macro bigquery__array_offset(arr, position) %}
    {{arr}}[offset({{position}})]
{% endmacro %}


{% macro databricks__array_offset(arr, position) %}
    {{arr}}[{{position}}]
{% endmacro %}


{% macro redshift__array_offset(arr, position) %}
    {{arr}}[{{position}}]
{% endmacro %}


{% macro snowflake__array_offset(arr, position) %}
    get({{position}}, {{arr}})
{% endmacro %}


{% macro postgres__array_offset(arr, position) %}
    {{arr}}[{{position}}]
{% endmacro %}