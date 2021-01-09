---
title: "Publications"
permalink: /publications/
years: [2020, 2019]
toc: true
toc_sticky: true
lang: en
---

> Those are some of my most recent publications. Here you can find articles that I authored or co-authored, presentations of my public talks, and any artifact produced by my work in general.

<ul class="taxonomy__index">
  {% for y in page.years %}
    {% capture bib_count %} {% bibliography_count -f papers -q @*[year={{y}}]* %} {% endcapture %}
    <!-- convert to number  -->
    {% assign bib_count = bib_count | plus: 0 %}
    <li>
      <a href="#{{ y }}">
        <strong>{{ y }}</strong> <span class="taxonomy__count">{{ bib_count }}</span>
      </a>
    </li>
  {% endfor %}
</ul>

{% for y in page.years %}

  <h3  id="{{y}}" class="pubyear">{{y}}</h3>
  {% bibliography -f papers -q @*[year={{y}}]* %}
  <a href="#page-title" class="back-to-top">{{ site.data.ui-text[site.locale].back_to_top | default: 'Back to Top' }} &uarr;</a>
{% endfor %}
