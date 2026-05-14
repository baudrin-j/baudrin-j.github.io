---
layout: default
title: LSIN310 - Mathématiques pour l'informatique
---
# LSIN310 - Mathématiques pour l'informatique

## Contexte
{% for course in site.data.courses_information %}
{% if course.id-ue == "LSIN310" %}
{{ course.description-fr }}
{% endif -%}
{% endfor %}


## Organisation du semestre