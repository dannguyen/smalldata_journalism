---
layout: page
title: The Test Page
tagline:  Stuff to talk about
header_image: about-nyu-washingtonsquare.jpg
guff: "Lorem ipsum dolor sit amet, consectetur adipisicing elit. Molestias, cumque, fugit recusandae doloremque fuga sunt nostrum cupiditate cum nisi eaque accusamus repellendus nemo consequatur rem praesentium id autem ratione harum."
---


{% include auto-toc.md %}


<div style="background: #fdd;">

This is span level kramdown [example](http://nytimes.com)
zzzz

### inside a span

- a
- b
- c

yes yes yes

</div>

## Proejcts

{% for project in site.projects %}
- [{{project.title}}]({{project.url}}) +++ {{project.tag}} -- {% project_manifest inspect-the-web %}
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

- <span class="type">{{r.type}}:</span> 
[{{r.title}}]({{r.source_url}}) <span class="author" style="display:block;">via {{r.author}} [{{r.base_host}}]({{r.source_url}})</span> <span class="description">*x{{r.description}}x*</span>
  
 {% endfor %}

{% endfor %}
