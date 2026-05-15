---
layout: home
title: Teaching
---
<br>
## 2025--2026
Websites: <span class="material-symbols-outlined" style="margin-left:1em">function</span> [lsin310](./lsin310) <span class="material-symbols-outlined" style="margin-left:1em">functions</span> [min17101](./min17101) <span class="material-symbols-outlined"
style="margin-left:1em">shield_lock</span> [lsin603](https://yannrotella.github.io/cryptol3/)
<span class="material-symbols-outlined"
style="margin-left:1em">calculate</span> [min17218](https://ecampus.paris-saclay.fr/course/view.php?id=191410)
{: style="text-align: center;"}
<br>
{% assign min_year = 2025 %}
{% assign max_year = 2026 %}

{% for year in (min_year..max_year) reversed -%}
{% assign next_year = year | plus: 1 %}
{% assign scholar_year = year | append: "-" | append: next_year %}
{% for course in site.data.courses -%}
{% if course.year == scholar_year -%}
{% for info in site.data.courses_information -%}
{% if info.id-ue == course.id-ue -%}
{% assign name = info.title-en %}
{% endif %}
{%- endfor %}
- {{ name }} ({{ course.id-ue }})
<!-- {%- if course.website != nil %}
[<span class="material-symbols-outlined">globe</span> website here ]({{ course.website }}) 
{% endif %} -->



{%- endif -%}
{%- endfor -%}
{%- endfor %}

<br>
## Previous years
{% assign min_year = 2021 %}
{% assign max_year = 2024  %}

{% for year in (min_year..max_year) reversed -%}
{% assign next_year = year | plus: 1 %}
{% assign scholar_year = year | append: "-" | append: next_year %}
{%- assign print_year = true -%}
{% for course in site.data.courses -%}
{% if course.year == scholar_year -%}
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
- {{ scholar_year }} {% assign print_year = false %}
{% endif %}
    -  {{ name }}  ({{ print_teach }}) 
{%- if course.website != nil %}
[<span class="material-symbols-outlined">globe</span>]({{ course.website }}) 
{% endif %}
{% endif -%}
{%- endfor -%}
{%- endfor %}