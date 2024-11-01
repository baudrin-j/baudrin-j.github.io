---
# the default layout is 'page'
icon: fas fa-school
order: 2
showpostinfo: "false"
---
For the past three years, I have been in charge of weekly tutorials at [UVSQ](https://www.uvsq.fr) (Université Versailles Saint-Quentin-en-Yvelines, Versailles, France).


{% assign min_year = 2021 %}
{% assign max_year = 2024 | plus: 1  %}

## Teaching loads

| Year | ID   |  Title | Teaching load |
|:----:|:----:|:-------|:--------------:|
{% for year in (min_year..max_year) reversed -%}
{% for course in site.data.courses -%}
{% if course.year contains year -%}
| {{ year }} | {{ course.shortname }} |  [{{ course.title-en }}]( #{{ course.title-en  | replace: " ", "-"  | downcase}} ) | {{ course.hours }} |
{% endif %}
{%- endfor -%}
{%- endfor %}


## Course abstracts
{% for course in site.data.courses reversed %}
### {{ course.title-en }}

- **{{ course.shortname }}** -- *{{ course.title-fr }}*
- **Format** -- {{ course.format }}, {{ course.period}} ({{ course.hours}})
- **Lecturer** -- {{ course.lecturer }}
{% if course.website -%}
- **Website** -- [{{course.website}}]({{course.website}})
{% endif %}
- **Description** -- {{ course.description}}

{% endfor %}

![https://xkcd.com/1935/](https://imgs.xkcd.com/comics/2018.png){: .normal }[^img]

[^img]: Extracted from [xkcd.com](https://xkcd.com/1935/)