---
layout: page
title: The Test Page
tagline:  Stuff to talk about
header_image: about-nyu-washingtonsquare.jpg
guff: "Lorem ipsum dolor sit amet, consectetur adipisicing elit. Molestias, cumque, fugit recusandae doloremque fuga sunt nostrum cupiditate cum nisi eaque accusamus repellendus nemo consequatur rem praesentium id autem ratione harum."
---


{% include auto-toc.md %}


What's "going on?"

## Proejcts

{% for project in site.projects %}
- [{{project.title}}]({{project.url}})
 {% for part in project.parts %}
  - [{{part.title}}]({{part.url}})
 {% endfor %}

{% endfor %}


## Weighted pages

{% for wpage in site.weighted_pages %}

- {{ wpage.title }}

{% endfor %}


## Reference block




## Blockquote

{% blockquote Douglas Adams, The Hichhikers Guide to the Galaxy %}
Flying is learning how to throw yourself at the ground and miss.
{% endblockquote %}


## References

{% for reference_arr in site.references %}
#### {{reference_arr[0]}}

 {% for r in reference_arr[1] %}
<div class="reference_item">
  <div class="title"><span class="type">{{r.type}}:</span> <a href="{{r.source_url}}">{{r.title}}</a></div>
  <div class="byline">via {{r.author}} [<a href="{{r.source_url}}">{{r.base_host}}</a>]</div>
  <p class="description">
  {{r.description}}  
  </p>
</div>

  
 {% endfor %}

{% endfor %}
