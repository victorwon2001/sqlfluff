{% test test_not_empty(model, column_name) %}
    select 1
    from {{ model }}
    where {{ column_name }} is null
       or {{ column_name }} = ''
{% endtest %}