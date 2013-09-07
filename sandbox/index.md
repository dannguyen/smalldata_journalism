---
layout: page
title: The Test Page
description: Stuff to talk about
header_image: about-nyu-washingtonsquare.jpg
guff: "Lorem ipsum dolor sit amet, consectetur adipisicing elit. Molestias, cumque, fugit recusandae doloremque fuga sunt nostrum cupiditate cum nisi eaque accusamus repellendus nemo consequatur rem praesentium id autem ratione harum."
---


{% include auto-toc.md %}



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

{% reference_item John Doe http://example.com Title of the item %}
This is an article about something
{% endreference_item %}



## Blockquote

{% blockquote Douglas Adams, The Hichhikers Guide to the Galaxy %}
Flying is learning how to throw yourself at the ground and miss.
{% endblockquote %}

