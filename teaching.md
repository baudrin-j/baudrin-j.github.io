---
layout: home
title: Teaching
---
<span class="material-symbols-outlined">book</span> All the **documents**  I wrote are available [here](documents.html). 

<!-- ## 2026--2027
TBD -->
## 2025--2026
{% assign min_year = 2025 %}
{% assign max_year = 2026 %}

{% for year in (min_year..max_year) reversed -%}
{% for course in site.data.courses -%}
{% if course.year == year -%}
{% for info in site.data.courses_information -%}
{% if info.id-ue == course.id-ue -%}
{% assign name = info.title-en %}
{% endif %}
{%- endfor -%}
| {{ course.id-ue }} | 
{%- if course.website != nil -%}
[{{ name }}]({{ course.website }}) |
{%- else -%}
{{ name }} |
{%- endif %}
{% endif %}
{%- endfor -%}
{%- endfor %}

## Previous years
{% assign min_year = 2021 %}
{% assign max_year = 2024  %}

{% for year in (min_year..max_year) reversed -%}
{%- assign print_year = true -%}
<!-- {%- assign print_year = year -%} -->
{% for course in site.data.courses -%}
{% if course.year == year -%}
{% for info in site.data.courses_information -%}
{% if info.id-ue == course.id-ue -%}
{% assign name = info.title-en %}
{% endif %}
{%- endfor -%}
{%- if course.lecture-load and course.tutorial-load  -%}
{%- assign print_teach = "CM/TD" -%}
{%- elsif course.lecture-load == nil -%}
{%- assign print_teach = "TD" -%}
{%- else -%}
{%- assign print_teach = "CM" -%}
{% endif %}
{% if print_year  -%}
- {{ print_year }} {% assign print_year = false %}
{% endif %}
    -  {{ name }}  ({{ print_teach }})
{% endif -%}
{%- endfor -%}
{%- endfor %}