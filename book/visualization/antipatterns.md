---
layout: page
title: Visualization Antipatterns
section: visualization
---

Ways to make your visualizations distracting and misleading.

This is just a draft/thinking pad...each headline refers to an "antipattern" and for some of them, I've included some notes and descriptions. I plan to separate these antipatterns into their own pages, with examples, illustrations, and proposed solutions. If you have any suggestions, feel free to email me ([dan@danwin.com](mailto:dan@danwin.com)), tweet at me ([@dancow](https://twitter.com/dancow)), or submit [a pull request](https://github.com/dannguyen/smalldata_journalism). 



### Not enough data

### Tables

#### Too many columns
Data visualizations require as much editing of their source material (data) as do print news stories. If your data display is cluttered, it means you need to cut extraneous information.

#### Misaligned numbers
Numerical columns, especially when concerning financial sums, should be right-aligned and in a monospaced font.

#### Redundant data
Is it necessarily to include datapoints that are already implied? e.g. including population when a crime per 100,000 population number is provided.

#### Distracting lines
Minimize the ink needed to separate the data values.

### Standard charts

#### Graphing two datasets in the same graph
Using two differently labeled y-axes is almost never a good idea.

#### Non zero-based axes
The traditional way of sexifying the data. Related: "[Charts can say anything you want them to](http://blogging.alastair.is/charts-can-say-anything-you-want-them-to/)" by Alastair Coote.

#### Using line charts to represent non-continuous data
Use a scatterplot instead.

#### Not enough precision
Grouping data points too broadly can hide important differences. e.g. a chart showing buying habits for people "30 and under" vs one that breaks it down to "18 and under" and "ages 19-30"

#### Too much precision
Do your axes need that many significant digits? Do your line charts require that much jitter?


#### Pie charts
Virtually everything that can be sensibly shown in a pie chart can be done more accurately with a stacked bar chart, with the exception of [this kind of data](http://www.edwardtufte.com/bboard/images/0003VL-9150.jpeg).

{% render_partial examples/charts/antipatterns/pies/pie.html %}

{% render_partial examples/charts/antipatterns/pies/stacked-bar.html %}

#### Datapoints with disproportionate area
i.e. what happens when you represent a quantity with the *radius* of a circle, rather than its area.



### Complex charts

#### Word clouds
Cue Jacob Harris: [Word clouds considered harmful](http://www.niemanlab.org/2011/10/word-clouds-considered-harmful/)

#### Timelines
These are particularly influenced by editorial opinion.

### Design

#### Unnecessary lines
Grid lines can obscure the actual data points.

#### Heavy marks
Same "dataink" concept as above, heavy axes and marks can draw the eye away from the data. Related (and controversial) read: [Never use black](http://ianstormtaylor.com/design-tip-never-use-black/), by Ian Storm Taylor.

#### Poor spatial juxtaposition

#### Using 3D
It's already difficult to determine spatial areas in 2D (see: Pie Charts).

#### Using a wide color range
Robert Kosara: "[How the Rainbow Color Map Misleads](http://eagereyes.org/basics/rainbow-color-map)"

#### Using symbolic colors
e.g. using blue and red in U.S. politics visualization for something *other* than Democrats and Republicans.

#### Ignoring the color-blind
Yet another case to keep color selection simple.

#### Distance between labels and data
Don't force the user's eyes to dart to and fro, from legend to chart, in order to keep straight what the datapoints mean (this is also a problem of too many data facets).

#### Ambiguous icons
Be careful of assuming how your users interpret symbols.

### Maps

#### Using a map when it isn't needed
Read: Matt Ericson: "[When Maps Shouldn't Be Maps](http://www.ericson.net/content/2011/10/when-maps-shouldnt-be-maps/)"

#### Unintentionally having land area as a datapoint
e.g. every elections result map ever made

#### Inaccurate projections
Greenland. Africa. Alaska, etc.

#### Imprecise choropleth thresholds
Related: [Mapping NYC stop and frisks: some cartographic observations](http://spatialityblog.com/2012/07/27/nyc-stop-frisk-cartographic-observations/) by Steven Romalewski



### User interaction and the web

#### Hiding information in pop-ups and hovers
Don't hide vital information that requires the user to push/click/hover on some element, because they may never actually do that.

#### Mouse-based interaction
Not all of your users will be using a mouse.

#### Horizontal scroll
Users are not used to horizontal scrolling on the Web, or in anything, for that matter, except for Super Mario Bros. games.



