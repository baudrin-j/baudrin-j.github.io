---
# the default layout is 'page'
icon: fas fa-school
order: 2
showpostinfo: "false"
---

{% assign min_year = 2025 %}
{% assign max_year = 2025 | plus: 1  %}

## Teaching loads

| Year | ID   |  Title | Teaching load |
|:----:|:----:|:-------|:--------------:|
{% for year in (min_year..max_year) reversed -%}
{% for course in site.data.courses -%}
{% for courseyear in course.years -%}
{% if courseyear.year == year -%}
| {{ year }} | {{ course.shortname }} |  [{{ course.title-en }}](/{{ course.shortname }}/ ) | {{ courseyear.load }} |
{% endif %}
{%- endfor -%}
{%- endfor -%}
{%- endfor %}

> Some **complementary documents** regarding the courses can be found [here](/complementary-documents).
{: .prompt-tip }

## Course abstracts
{% for year in (min_year..max_year) reversed -%}
{% for course in site.data.courses -%}
{% for courseyear in course.years -%}
{% if courseyear.year == year -%}
### {{ course.title-en }}

- **{{ course.shortname }}** -- *{{ course.title-fr }}*
- **Format** -- {{ course.format }}, {{ course.period}}
- **Lecturer** -- {{ courseyear.lecturer }}
{% if course.website -%}
- **Website** -- [{{course.website}}]({{course.website}})
{% endif %}
{%- if course.documents -%}
- **Complementary documents** -- [documents]({{ "../posts/complementary-documents/#" | append: course.shortname | downcase | append: "--" | append: course.title-en | downcase | replace: " ", "-" }})
{% endif -%}
- **Description** -- {{ course.description}}

{% endif %}
{%- endfor -%}
{%- endfor -%}
{%- endfor %}

![https://xkcd.com/1935/](https://imgs.xkcd.com/comics/2018.png){: .normal }[^img]

[^img]: Extracted from [xkcd.com](https://xkcd.com/1935/)