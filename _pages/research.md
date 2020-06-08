---
layout: archive
title: "Research"
permalink: /research/
author_profile: true
years: [2020, 2019]
---

On my academic life, I research at the level of Scientific Initiation in the High Energy Astrophysics Research Group, ASTRalE, in the Physics Department of the Federal University of Sergipe. Founded in 2018, the group has its activities based on space technology and astronomical observations conducted by satellites from American, European and Japanese space agencies.

# Publications

{% if author.googlescholar %}
  You can also find my articles on <u><a href="{{author.googlescholar}}">my Google Scholar profile</a>.</u>
{% endif %}

{% include base_path %}

{% for y in page.years %}
  <h3  id="{{y}}" class="pubyear">{{y}}</h3>
  {% bibliography -f papers -q @*[year={{y}}]* %}
{% endfor %}
