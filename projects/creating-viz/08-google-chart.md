---
layout: project
title: With Google Charts
tagline: Remote JavaScript 
project: creating-viz
project_order: 10
---



## Creating the HTML file




## Adding the Google Charts JavaScript code

### Customization 

 var options = {
          title: 'Unemployment Rate, U.S. vs. Germany'
        };


## The data format

        // The data goes here
        var data = google.visualization.arrayToDataTable([
            ["Year", "U.S.", "Germany"],
            ["2003", 6, 9.8],
            ["2004", 5.6, 10.2],
            ["2005", 5.2, 11.5],
            ["2006", 4.7, 10.4],
            ["2007", 4.5, 8.9],
            ["2008", 5, 7.8],
            ["2009", 9, 7.8],
            ["2010", 9.9, 7.3],
            ["2011", 9, 6.1],
            ["2012", 8.1, 5.5],
            ["2013", 7.5, 5.4]
        ]);


### Adjust a single data point

### Add a column 




## All together


### Edit numbers, colors and data on the fly


## The takeaway

- You can edit numbers on the fly for truly dynamic graphs
- Your graphs can be interactive
- You're notw working inside a new set of rules. JavaScript is ubiquitous now, but even the simplest JavaScript chart will have more compatability issues than a static image.



### Pros
- Finally, no longer need to go into Excel to update the data
- Some interactivity is allowed

### Cons
- Now you have to know a little JavaScript
- Now you have to figure out Google's format
- If Google drops the service, no more chart
- If Google goes down, chart is not viewable
- JavaScript is its own program, and sometimes doesn't always work
- Without programming, can be a pain to manually change the data
