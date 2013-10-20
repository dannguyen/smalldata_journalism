---
layout: page
title: "Mapping the Big Apple's Big Macs, Coffee, and Donuts"
tagline: A simple data-mashup using NYC health data and Google Fusion Tables
---

<script type="text/javascript" src="http://maps.google.com/maps/api/js?sensor=false"></script>

<style>
  
.mapCanvas img{
    max-width: none !important;
    margin-bottom: 2.0em; border: thin solid #777;
}

</style>

The two interactive maps on this page display the locations of New York's many Starbucks, McDonald's, and Dunkin Donuts. The data comes from the [NYC health department and their inspection results](http://www.nyc.gov/html/doh/html/services/restaurant-inspection.shtml), as of early October 2013.

These maps are the end product of my [tutorial on how to do data visualizations with spreadsheets and Google Fusion Tables](/projects/one-offs/mapping-with-fusion-tables/). There are some anomalies in the data (such as a few geocoded locations) and I've left them in as part of the [tutorial](/projects/one-offs/mapping-with-fusion-tables/).


### Mapping by ownership

This first map shows the locations marked by **type**: 

- <span style="color:#008800">green</span> for Starbucks
- <span style="color:#ECE530">yellow</span> for McDonald's
- <span style="color:#835F04">brown</span>  for Dunkin Donuts

<div id="googft-mapCanvas" class="mapCanvas" style="width: 100%; height: 600px; margin-bottom: 2.0em; border: thin solid #777;">

</div>

As this is only the most basic of plots you can do with Fusion Tables, I'll leave it to the statisticians and Malcolm Gladwell to explain the seemingly strong correlation between the locations of Starbucks and the population density of New Yorkers who are able to afford living and/or purchasing Frappucinos in Manhattan.

<script type="text/javascript">

function initialize() {
google.maps.visualRefresh = true;
var map = new google.maps.Map(document.getElementById('googft-mapCanvas'), {
center: new google.maps.LatLng(40.73398333608711, -73.91953159355465),
      zoom: 11,
mapTypeId: google.maps.MapTypeId.ROADMAP
});


layer = new google.maps.FusionTablesLayer({
map: map,
heatmap: { enabled: false },
query: {
select: "col6\x3e\x3e0",
from: "1oMx96J6oygjYuOb7-TSiHc6CM99q8RRS47cWlCU",
where: ""
},
options: {
styleId: 2,
templateId: 2
}
});



var styles = [
  {
    stylers: [
      { hue: "#00ffe6" },
      { saturation: -80 }
    ]
  },{
    featureType: "road",
    elementType: "geometry",
    stylers: [
      { lightness: 100 },
      { visibility: "simplified" }
    ]
  },{
    featureType: "road",
    elementType: "labels",
    stylers: [
      { visibility: "off" }
    ]
  }
];

map.setOptions({styles: styles});


}



google.maps.event.addDomListener(window, 'load', initialize);

</script>    









### Mapped by health scores

This second map shows the same locations, but marked according to the **score** of their latest health inspections. The colors come from the grading curve of the [NYC-DOH's system](http://www.nyc.gov/html/doh/html/services/restaurant-inspection.shtml): 

- **0 to 13** points is an <span style="color:#00b;">A</span>
- **14 to 27** is a <span style="color:#0b0;">B</span>  
- <span style="color:#CFAF2F;">C</span> is **28** points and above.


<div id="googft-mapCanvas2" class="mapCanvas" style="width: 100%; height: 600px;">
  

</div>


<script type="text/javascript">
  function initialize2() {
    google.maps.visualRefresh = true;
    var map = new google.maps.Map(document.getElementById('googft-mapCanvas2'), {
      center: new google.maps.LatLng(40.73398333608711, -73.91953159355465),
      zoom: 11,
      mapTypeId: google.maps.MapTypeId.ROADMAP
    });



    layer = new google.maps.FusionTablesLayer({
      map: map,
      heatmap: { enabled: false },
      query: {
        select: "col6\x3e\x3e0",
        from: "1oMx96J6oygjYuOb7-TSiHc6CM99q8RRS47cWlCU",
        where: "col7\x3e\x3e0 \x3e\x3d \x272011-10-13 00:00:00\x27 and col7\x3e\x3e0 \x3c\x3d \x272013-10-15 00:00:00\x27"
      },
      options: {
        styleId: 3,
        templateId: 3
      }
    });



var styles = [
  {
    stylers: [
      { hue: "#66ffe6" },
      { saturation: -80 }
    ]
  },{
    featureType: "road",
    elementType: "geometry",
    stylers: [
      { lightness: 100 },
      { visibility: "simplified" }
    ]
  },{
    featureType: "road",
    elementType: "labels",
    stylers: [
      { visibility: "off" }
    ]
  }
];

map.setOptions({styles: styles});


  }

  google.maps.event.addDomListener(window, 'load', initialize2);
</script>


### Summary of the scores

Here is some summary data for the three major brands:


<table class="table table-striped table-bordered"><thead><tr><th>Company</th><th>Number of</th><th>Minimum score</th><th>Max score</th><th>Average score</th></tr></thead><tbody><tr><td>Dunkin Donuts</td><td>507</td><td>0</td><td>39</td><td>8.76</td></tr><tr><td>McDonald's</td><td>235</td><td>2</td><td>67</td><td>10.59</td></tr><tr><td>Starbucks</td><td>269</td><td>2</td><td>29</td><td>6.70</td></tr></tbody></table>

**Note:** This summary only covers the most recent inspections for these locations as of early October 2013. But I don't think the scores vary greatly over the history of the NYC inspection program. 

The scores for the big chains are pretty good. If you're surprised, it's because you thought there was a correlation between tastiness of food and cleanliness of location. However, it's more likely that bigger companies have better standardized processes for keeping things within the health code.


### Make your own mashup

Think you can do better? Me too. You can [get the data used here and follow how I made it on the tutorial page](/projects/one-offs/mapping-with-fusion-tables/). Or, if you're feeling lazy, [just copy my Google Fusion table directly](https://www.google.com/fusiontables/DataSource?docid=1oMx96J6oygjYuOb7-TSiHc6CM99q8RRS47cWlCU&pli=1#rows:id=1).

If you'd rather map something other than massive restaurant chains, check [out NYC's official data portal for the full dataset](https://data.cityofnewyork.us/Health/Restaurant-Inspection-Results/4vkw-7nck).

If you have any questions or comments, feel free to email me at [dan@danwin.com](mailto:dan@danwin.com) or on Twitter: [@dancow](http://twitter.com/dancow)











