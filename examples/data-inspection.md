---
layout: page
title: The Data Inspection page
---

These are examples for the lesson, [Inspecting Data Files](/projects/inspect-the-web/05-inspecting-data-files/)


## A photo of the Hudson River

![A sailboat on the Hudson River](/images/sailboat.jpg)


## A tweet button

<p>This button tweets this page: <a style="line-height: 20px" href="https://twitter.com/share" class="twitter-share-button" data-via="dancow">Tweet</a></p>
   
<script>!function(d,s,id){var js,fjs=d.getElementsByTagName(s)[0];if(!d.getElementById(id)){js=d.createElement(s);js.id=id;js.src="//platform.twitter.com/widgets.js";fjs.parentNode.insertBefore(js,fjs);}}(document,"script","twitter-wjs");</script>


## U.S. Population by Region

[Graphing code and statistics](http://code.shutterstock.com/rickshaw/tutorial/introduction.html) via Rickshaw tutorial

{% render_partial downloads/code/projects/inspect-the-web/05-simple-rickshaw-chart.html %}




## U.S. Unemployment Change, 2010 vs. 2012

A choropleth map of the change in U.S. unemployment rate from 2010 to 2012, by county. The bigger the **drop in unemployment**, the **darker** the shading.

Sources: 
- [Local Area Unemployment Statistics](http://www.bls.gov/lau/), via U.S. Bureau of Labor Statistics
- [Choropleth D3.js demo, 2008 Unemployment Statistics](http://bl.ocks.org/mbostock/4060606), via Mike Bostock


{% render_partial downloads/code/projects/inspect-the-web/05-choropleth.html %}
