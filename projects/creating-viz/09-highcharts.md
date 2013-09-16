---
layout: project
title: Using the Highcharts JavaScript library
tagline: Hosting all of our own code
project: creating-viz
project_order: 11
---

In this chapter, we recreate our unemployment line chart using the [Highcharts JavaScript library](http://www.highcharts.com/). Does Highcharts offer us substantially more mindblowing line-graph features compared to Google Charts? Not really. But with Highcharts, all of the code needed to produce the line graph can be contained on our own computer. 

We'll examine the implications of this at the end of the lesson.

If you want, you can check out the [Highcharts official homepage](http://www.highcharts.com/).

## Installing Highcharts

Highcharts is simply JavaScript, so we don't have to install anything, *per se*. But we do have to download the files needed to generate Highcharts-flavored charts in our webpage.

### Download Highcharts

You can do that here [at the download page](http://www.highcharts.com/download). Download **Highcharts**, not **Highstock**. 

**Note:** The Highcharts zip file is a little convuluted and we only need one file from it, which [you can download directly here](http://code.highcharts.com/3.0.5/highcharts.js). It's a `.js` file, which means your browser might just render it as plain text (which it *is*). To save it properly, [you might have to right-click the file link](http://code.highcharts.com/3.0.5/highcharts.js) and select **Save As...**


### Download jQuery

If you've ever dabbled in modern web development, you've probably heard of the magical jQuery library. We need to download and include it on our webpage because Highcharts depends on it.

The [jQuery homepage](http://jquery.com/) is here. Cut to the chase by downloading [the version 1.9.1 `.js` file here](http://code.jquery.com/jquery-1.9.1.js).


## Creating the HTML file

Put the jQuery and Highcharts JS files **into the same folder** as your HTML file.

You can copy the Google Charts HTML file from last time and delete the Google-specific code. Here's what the bare HTML looks like before we write the Highcharts-specific code:

TKcode

The main change here is that instead of including JavaScript from Google, we are only including JavaScript files **local** to our HTML file (that's why we put the JS files into the same folder as our HTML).



## Writing the chart-making JavaScript

OK, here's the JavaScript needed to generate a line graph, the Highchart way. I'm not going to explain it, as I basically copied the code from [Highcharts' documentation](http://www.highcharts.com/docs/chart-and-series-types/line-chart) and am not at all qualified to explain it.

But we're not here to learn Highcharts, we're here to see how using it (or one of its peers) affects our production process.

  TKCODE




### More customization, more complexity

The first thing you'll notice is that the code is considerably more complicated than the Google code. Well, it probably doesn't *have* to be that complicated (I copied from the Highcharts example and made some clumsy modifications), but there's a larger point to consider here: Google is able to provide its chart-making solution to any and every web-developer out there not just because Google has great software engineering, but because they've locked down features and customization. It's easy to make charts, just as long as you stick to Google's conventions.

Highcharts has its own conventions (in particular, the data format is different, as we'll see in the next section). But the main difference is that I can extend Highcharts functionality myself, as I have access to its source code. As we noted earlier, the `highcharts.js` file is simply just a text file on our hard drive, like any other.

Now, you probably don't want to muck directly with Highcharts' (or jQuery's) complex code unless you have a special use case &ndash; but that's the point. If you have an exceptional need, you can read the Highcharts code and modify it yourself.


## The data format

Here's the code in which we specify the unemployment data and the years covered (as well as the color of the lines): 

            xAxis: {
                categories: ["2003","2004","2005","2006","2007","2008","2009","2010","2011","2012","2013"]
            },
            series: [{
                name: 'U.S.',
                data: [6, 5.6, 5.2, 4.7, 4.5, 5, 9, 9.9, 9, 8.1, 7.5],
                color: '#990000'
            }, {
                name: 'Germany',
                data: [9.8, 10.2, 11.5, 10.4, 8.9, 7.8, 7.8, 7.3, 6.1, 5.5, 5.4],
                color: '#000099'
            }],
            


To refresh your memory, here's what it looked like for Google Charts:

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



This isn't a lesson on JavaScript data structures, but the key takeaway is that different software packages &ndash; in this case, Google Charts and Highcharts &ndash; will often have different interfaces, especially in how they accept data.

Reformatting your data will often be one of the key (i.e. annoying) challenges when switching from one visualization library to another.

To reiterate what I said about code customizability: the Google Charts library has changed throughout the years, and sometimes those changes involve data formats. If you wanted to upgrade your use of Google Charts, that would mean keeping in line with Google's requirements.

With Highcharts, or any other JavaScript library that you host, you can stick with what you've got and monkey-patch it to keep up with any of Highcharts version changes. This is actually a real pain in the ass, but at least you have the choice with self-hosted files.


## All together

The HTML and JavaScript code in one HTML file:





Try uploading it to your web/S3 server. Remember to upload the jQuery and Highcharts JS files into the same folder as the HTML.


Here's what the live chart looks like embedded in this course page:

    TK



## The takeaway

Don't be misled into thinking that Highcharts is not so different from Google Charts. I deliberately skipped exploring its feature set because I want to emphasize two things:

1. Switching from one JavaScript library to the other can be almost as easy as including different files (and following the syntax).
2. With Google Charts, we could never own the code or the implementation details.

With Highcharts and other open-source charting libraries, we have access to all the code needed to create our visualizations. It's about as close to the control of hand-drawing our charts that we'll get.



### Advantages

##### You own the code

##### You own the service

Google has already deprecated their incredibly useful static charts API, so there's always the risk that they'll decide to shut down their JavaScript chart service. Since you're hosting your own copy of Highcharts, you can continue use it no matter what the official Highcharts maintainers do (or don't do).

##### More flexibility


### Concerns

##### More specialization
At the very least, switching from Google Charts to Highcharts means that you have to learn the conventions of a new library &ndash; and of course, the same applies in reverse, and any other times you switch technology. But this is where popularity may beat out quality. 
I have no opinion on whether Highcharts is actually better than Google Charts, but I'd bet that Google Charts is more in use. Which means more of my colleagues know how to work with their code, or that if I move to a different visualization project, it's more likely to be using Google Charts than Highcharts.

This isn't a tradeoff particular to Highcharts, but it's something you have to consider everytime you change technologies.

##### Future-proof?
Sure, Google may cut its charts service or decide to charge exorbitant prices for it in the future, but the maintainers of Highcharts may quit the business if they think they can't compete with Google. You can still keep hosting your copy of the latest Highcharts code, but if new browser technologies render it obsolete, then having that code is no better than having service cut off.

Again, it's not a simple comparison. With Highcharts, you always have the option to fixing up the code yourself. But if its far more likely that Highcharts' maintainers quit before Google cuts its service, there's an opportunity cost to consider. Again, not a concern particular to Highcharts, but one that surfaces in every business decision.

##### You own the service
A consequence of keeping the code on your own servers means that you are *serving the code from your own servers*. Google can serve data at quantities and speeds that befit their global position, and so when you import their code, it comes at no (immediate) cost to you and will probably be more faster and more reliable than your own hosting service.



## Conclusion

By moving to Highcharts from Google, we didn't gain many new features, but this was only because I stuck to the basics and focused on the difference in code hosting. I recommend you read the [Highcharts documentation for yourself](http://www.highcharts.com/): it's a very well-supported and full-featured library.  

Other libraries you can self-host include [Raphael](http://raphaeljs.com/) and [jqPlot](http://www.jqplot.com/). And of course, [there's D3](http://d3js.org/), which we cover in the final chapter of this series.



