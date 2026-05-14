---
layout: default
title: Talks
---
{%- for year in (2022..2026) reversed -%}
{%- assign print_year = true -%}
    {%- for conference_type in site.data.talks -%}
    {%- assign print_conf_type = true -%}
    {%- for talk in conference_type.confs -%}
    {%- assign talk_year = talk.date | date: "%Y" | round -%}
    {%- if talk_year == year -%}
        {%- if print_year %}
### {{year}}
        {% assign print_year = false %}
        {% endif %}

        {% if print_conf_type %}
#### {{ conference_type.type }}
        {% assign print_conf_type = false %}
        {% endif %}
{: class="talks_paragraph"}
*{{ talk.title }}*, {{talk.event}}, {{talk.event-place}}, {{talk.date}}.
<br>
        {%- if talk.url -%}
[<span class="material-symbols-outlined">globe</span>]({{ talk.url }})
        {% endif %}
        {%- if talk.slides -%}
[<span class="material-symbols-outlined">photo_library</span>]({{ talk.slides }})
        {% endif %}
        {%- if talk.recording -%}
[<span class="material-symbols-outlined">video_library</span>]({{ talk.recording }})
        {% endif %}
    {% endif %}
    {% endfor %}
    {% endfor %}
{%- endfor %}   