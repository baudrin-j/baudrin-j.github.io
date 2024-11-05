---
title: Complementary documents
date: 2024-11-04 13:30:00 +080
math: true
---
{% for course in site.data.courses %}

{% if course.documents %}
## {{ course.shortname }} -- {{ course.title-en }}
- **Year** --
{% for y in course.year -%}
{%- if forloop.length > 0 -%}
  {{ y }}{% unless forloop.last %}, {% endunless -%}
{%- endif -%}
{% endfor %}
- **Lecturer** -- {{ course.lecturer }}
{% if course.website -%}
- **Website** -- [{{course.website}}]({{course.website}})
{% endif %}

- **Documents**
{% for doc in course.documents %}
  - **{{ doc.name }}** -- {{ doc.date }} -- In {{ doc.language }} --
{% for d in doc.documents -%}
[{{d.shortname}}]({{d.link | prepend: '/' | prepend: course.shortname | prepend: '/assets/pdf/'}})&nbsp;&nbsp;&nbsp;&nbsp;
{% endfor %}

{% endfor %}

{% endif %}

{% endfor %}