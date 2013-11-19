---
layout: page
title: Suggested Readings List
tagline: A short list of online articles and references on data journalism
header_image: library.jpg
container: false
---

{% container_block %}
This is a list of both useful and eclectic articles and guides to data journalism, in no particular order, though I've sorted them into rough categories for now. This list [is auto-generated from a Google Spreadsheet](https://docs.google.com/spreadsheet/ccc?key=0At3Q3D3lDxXcdGxlS1BWZV94NVZ0TGJNYm1zM2t3d1E)

{%comment%}
[See this list in animated-block-form](/readings)
{%endcomment%}

{% endcontainer_block %}


<div class="stretch container">

<table id="sortable-table" class="table table-striped table-condensed references">
<thead>
  <tr>
    <th>Title</th>
        <th>Author</th>

    <th>Published</th>
    <th>Category</th>
    <th>Type</th>
    <th>Added</th>
  </tr>
</thead>

<tbody>

  {% for reference_arr in site.references %}
  {% for r in reference_arr[1] %}
  <tr>
    <td class="title-desc">
      <div class="title"><a href="{{r.source_url}}">{{r.title}}</a></div>
    
    <div class="description">{{r.description}}</div>
    </td>
    <td>{{r.author}}
    <br>
    <a href="{{r.source_url}}">{{r.base_host}}</a>

    </td>
    <td>{{r.date}}</td>

    <td>{{r.category}}</td>
    <td>{{r.type}}</td>
    <td>{{r.date_added}}</td>
  </tr>
  
  {%endfor%}
  {%endfor%}

  </tbody>  

</table>



</div>


{% include tablesort.html %}


