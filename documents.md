---
layout: default
title: Documents
---
# Documents complémentaires

## Table des matières
{% for course in site.data.courses_information %}
    {%- assign print_course = true  -%}
    {%- for doc in site.data.documents -%}
        {%- if course.id-ue == doc.id-ue -%}
            {%- if print_course -%}
                - [{{ course.id-ue }}](#{{ course.id-ue }})
                {% assign print_course = false  -%}
            {%- endif %}
        {% endif -%}
    {% endfor %}
{% endfor %}
<hr>

{% for course in site.data.courses_information %}
    {%- assign print_course = true  -%}
    {%- for doc in site.data.documents -%}
        {%- if course.id-ue == doc.id-ue -%}
            {%- if print_course -%}
                ## {{ course.id-ue }}
                {% assign print_course = false  -%}
            {%- endif %}
- {{ doc.name }} ({{ doc.date }})
{%- for d in doc.documents -%}
    [{{ d.shortname }}](/documents/{{doc.id-ue}}/{{ d.link}} )
{% endfor %}
        {% endif -%}
    {% endfor %}
{% endfor %}