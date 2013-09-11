---
layout: page
title: Suggested Readings
tagline: A short list of online articles and references on data journalism
header_image: about-nyu-washingtonsquare.jpg
---

## References

{% for reference_arr in site.references %}
### {{reference_arr[0]}}

 {% for r in reference_arr[1] %}

- <span class="type">{{r.type}}:</span> 
[{{r.title}}]({{r.source_url}}) <span class="author" style="display:block;">via {{r.author}} [{{r.base_host}}]({{r.source_url}})</span> <span class="description">*&nbsp;{{r.description}}*</span>
{: .references}
  
{% endfor %}

{% endfor %}