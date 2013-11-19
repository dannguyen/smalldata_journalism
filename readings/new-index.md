---
layout: page
title: Suggested Readings
tagline: A short list of online articles and references on data journalism
header_image: library.jpg
container: false
---

{% container_block %}
This is a list of both useful and eclectic articles and guides to data journalism, in no particular order, though I've sorted them into rough categories for now. This list [is auto-generated from a Google Spreadsheet](https://docs.google.com/spreadsheet/ccc?key=0At3Q3D3lDxXcdGxlS1BWZV94NVZ0TGJNYm1zM2t3d1E)

[See these articles as straightforward list.](/readings/list)

{% endcontainer_block %}


<div class="stretch container isotope">
<ul class="references">
{% for reference_arr in site.references %}
  {% for r in reference_arr[1] %}

  <li class="item">


    <div class="title">  
      <a href="{{r.source_url}}">{{r.title}}</a>
    </div>
    <div class="content-type">
      <span class="medium">{{r.type}}</span>
      on
      <span class="category">{{r.category}}</span>
    </div>

    <div class="description">{{r.description}}</div>
    <div class="author">via <span class="name">{{r.author}}</span> 
      <span class="host">
        <a href="{{r.source_url}}">{{r.base_host}}</a>
      </span>
    </div> 
  </li>  


  {% endfor %}
{% endfor %}

</ul>


</div>



{% include isotope.html %}
