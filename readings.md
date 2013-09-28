---
layout: page
title: Suggested Readings
tagline: A short list of online articles and references on data journalism
header_image: library.jpg
---

This is a list of both useful and eclectic articles and guides to data journalism, in no particular order, though I've sorted them into rough categories for now. This list [is auto-generated from a Google Spreadsheet](https://docs.google.com/spreadsheet/ccc?key=0At3Q3D3lDxXcdGxlS1BWZV94NVZ0TGJNYm1zM2t3d1E)

{% include auto-toc.md %}


{% for reference_arr in site.references %}

## {{reference_arr[0]}}

<div class="container">
<ul class="references isotope">
{% for r in reference_arr[1] %}

  <li class="item">
    <div class="title">
    <span class="type">{{r.type}}:</span>
    <a href="{{r.source_url}}">{{r.title}}</a>
    </div>
    <div class="description">{{r.description}}</div>
    <div class="author">via {{r.author}} 
      <span class="host">[<a href="{{r.source_url}}">{{r.base_host}}</a>]</span>
    </div> 
  </li>  

{% endfor %}

</ul>
</div>
{% endfor %}


{% include isotope %}
