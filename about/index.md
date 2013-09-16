---
layout: page
title: About small data Journalism
tagline: Journalism that counts
---


I built this site in preparation for the Data Journalism class I'm teaching in Fall 2013 at New York University (SCPS). There's not much here right now except for a [long list of recommended readings](/readings) and a few technical walkthroughs, plus [the class syllabus](/class). 

The Fall 2013 class is only five weeks long, but I've written about or taught data journalism concepts before and will continue doing so, and I thought [smalldatajournalism.com](http://www.smalldatajournalism.com) would be a good home for this material, for both my students and for everyone else. 

I've got a lot of essays and code projects in various stages of completion and hope to add them as I complete them, now that I'm done building the site structure for now. You can see updates to **sDJ** [on the blog](/blog). Or follow me on Twitter &ndash; [@dancow](https://twitter.com/dancow) &ndash; or the [Github repo](https://github.com/{{site.github}}) for updates.



{% include auto-toc.md %}


## Introduction

Data journalism goes back decades &ndash; centuries if you include the early works of John Snow and Florence Nightengale &ndash; and with the rise of personal and cloud computing, and the Web, data journalism has left its niche status and become one of

Or, as Sir Tim Berners-Lee, creator of the World Wide Web, puts it:  ["Data-driven journalism is the future](TK)."

But if technology has made data journalism more accessible, it has also made it equally intimidating for newcomers. Because the stack of knowledge no longer involves "only" statistical analysis and design skills, but seemingly, programming, web design and development, algorithms, database administration, application design, user interface and interaction design, data mining and warehousing, and for good measure, operating your own cloud servers. And each of these fields have their own subset of skills, and each of these skills can draw a lifetime of study. And this is before you even apply the journalism part.

It's true that data journalism, like the questions it seeks to answer, is complicated. But if it could be done before computers, then the fact that we do it now with PCs, EC2 instances, smartphones, and Arduinos, shouldn't be a barrier.

The goal of *small data Journalism* is not to *uncomplicate* data journalism, but to demonstrate it as a series of smaller, manegable pieces &ndash; some more technical than others &ndash; guided by rationality, cleverness, and journalistic pursuit.


## The smaller the data, the bigger the story

Good data journalism involves more than just *big* data, it also looks for the *smallest* data, that is, the most discrete and granular bits of information. 

If you wanted to know how much more in debt you were becoming, you would start out looking at your annual credit card balance. Knowing that, despite your best budgetary planning, you were $1,000 more in debt this year than last is certainly relevant, but doesn't give you much insight on *why*.

By tracking your balance by *month*, you now are looking at smaller, less significant data points. But seen together, they answer more questions than the yearly data points: did your balance drop in the summer, when you took your first overseas vacation in five years? Or during the holidays? If you track your balance *daily*, the questions you can answer become more pointed: has your average spending on the *weekends* jumped because you moved into the city?

Going to the smallest, the most granular data that your credit card company collects &ndash; each transaction &ndash; now you can find the answers you need (though you may not like them). Are you paying more for gas or doctor visits? Or can the $1,000 in additional debt be explained by a recently-developed $5-latté-a-morning habit?

We have the same mindset for public data: a year's worth of data is 

With granular data, we're able to create a more accurate picture. But we also create a whole host of new logistical problems -- how do we collect this information, how do we store it? How do we map it without crashing someone's web browser?

All of these concerns are major ones and so data journalism's reputation as being complex is correct. TK

## Journalism that counts

One of my favorite stories:

TK Atul Gawande

Strip away the news cycle, the industry, the writing, the work of getting into a paper, what do you have in journalism but the act of asking questions? In the same way, the basic, fundamental act in data journalism is to count, and the best data journalism involves counting what others didn't bother to count.

### Five disciplines of data journalism




With that metaphor in mind, this is how I would describe the five disciplines in this book:

#### Reporting  
*Why should we count this?*

Asking questions, getting answers. I see reporting and data as acting in these two ways:

- Data can help me discover stories that I hadn't thought about before.
- Data can show me the big picture and how it fits what I've learned so far.

Both approaches depend on the reporting and both are prone to different errors. It's easy to write a story off of statistically sound data. And it's easy for reporters to use cherry-picked data as a way to add authority to a flimsy story.



#### Analysis
*Why is our count different from what we expected?*

This category includes the statistical analysis: means, medians, regressions, knowledge of significance, and of logical inferences.

#### Visualization 
*How do we show what we've counted?*

Visualization, i.e. charts and graphs and animated things &ndash; is the what modern data journalism is most popularly associated with. So it bears repeating that jsut as traditional journalism doesn't necessarily have to be written, data journalism doesn't have to be attractive or even visual at all. But often, if a data set is complex and full of insights, charts and maps are often the best way to accurately convey its meaningTK. And also, making things pretty is often a fun obsession.

#### Collection

*Can we please count this any faster?*

Not all data comes in a well-ordered spreadsheet. Collection is the art of building new sources of data, whether by hand, by web scraper, or by mechanical sensors.


#### Curation
*Where do we put what we just counted?*
The least intersting of these fields and unfortunately, the most underrated. When that data gets collected, where does it go? How is it organized? How do you mash it with other data sets on a large scale?





##  About the author

My name is Dan Nguyen and I've been a journalist and a programmer at several news organizations. I'm currently [Head of Data at Skift](http://skift.com), an information and news site for the travel industry. Previously, I was [a news application developer at ProPublica](http://www.propublica.org/site/author/dan_nguyen), the non-profit investigative newsroom. My largest projects there included [Dollars for Docs](http://projects.propublica.org/docdollars), [SOPA Opera](http://projects.propublica.org/sopa), and the [Bailout Tracker](http://projects.propublica.org/bailout).

I've taught programming and data journalism workshops for a variety of organizations, including the Investigative Reporters and Editors, National Institute of Computer Asssisted Reporting, General Assembly in New York, the International Journalism Festival, and the Online News Association.

I've also written (or *still in the process* of writing) a few practical how-to online books: The [Bastards Books of Ruby](http://ruby.bastardsbook.com), [Photography](http://photography.bastardsbook.com), and [Regular Expressions](http://regex.bastardsbook.com).

My personal blog is at [danwin.com](http://danwin.com) and you can find me on Twitter at [@dancow](https://twitter.com/dancow).


## Techncial details

The sdJ site is built using [Jekyll](https://github.com/mojombo/jekyll), the static-blog generator that powers [Github pages](http://pages.github.com/), a few [notable government sites](http://developmentseed.org/blog/new-healthcare-gov-is-open-and-cms-free/), and perhaps, most famously, the [Obama campaign's $250 million fundraising platform](http://kylerush.net/blog/meet-the-obama-campaigns-250-million-fundraising-platform/). Don't worry, it's politically-neutral...but the Obama example shows how Jekyll can serve as both a flexible (with a bit of hacking) and low-maintenence publishing platform.

Previously, I've used [Octopress](http://octopress.org) to build out the [Bastards Book of Photography](http://photography.bastardsbook.com). This time I wanted to see ow far I could get with a few gems and custom plugins. Octopress is still in active development and is a great way to try out Jekyll without having to write so much boilerplate code.

You can see the full Gemfile at the [sdJ Github repo](https://github.com/{{site.github}}). The two Jekyll-specific gems I use are [jekyll-assets](https://github.com/ixti/jekyll-assets) to allow compilation of SASS and CoffeeScript files and [s3_website](https://github.com/laurilehmijoki/s3_website) to deploy sdJ to Amazon S3. Check out Alastair Coote's [excellent explainer of using S3 to cheaply serve up hundreds of thousands of webpages](http://blogging.alastair.is/how-i-served-100k-users-without-crashing-and-only-spent-0-32/).

The flavor of Markdown I use is [Kramdown](http://kramdown.rubyforge.org/), which allows for auto-generated table of contents among other nice features that I'm still learning.

### Design and layout

[Bootstrap 3](http://getbootstrap.com/getting-started/) has just been released so this was a good time to try it out. However, I ended up keeping just about 1/6th of its code as **sdJ** keeps mostly to a single-column format, as inspired by [37Signals](http://37signals.com).

The fonts I use are:

- [Arvo](http://www.google.com/fonts/specimen/Arvo) for the display and headline fonts
- [Droid Serif](http://www.google.com/fonts/specimen/Droid+Serif) for the body text
- [Ubuntu](http://www.google.com/fonts/specimen/Ubuntu) as the sans-serif font.

The off-white background pattern is from [SubtlePatterns](http://subtlepatterns.com/), a site that every web-designer should bookmark.

I haven't coded very many charts yet but I'm planning to use [D3](http://d3js.org/) exclusively. It's my favorite Javascript charting library and it has the added advantage of creating charts that can be exported as images.

----

Check out the [Github repo](https://github.com/dannguyen/smalldata_journalism) if you'd like to see the raw code. There's nothing too fancy in it, but feel free to submit any corrections via `git pull`


## About NYU Data Journalism

This is a **five-session course** that meets on Monday nights, from 6:45 - 9:15PM. The term starts at **September 23** and ends **October 21**.

The course number is: [WRIT1-CE9787](http://www.scps.nyu.edu/content/scps/academics/course_detail.html?id=WRIT1-CE9787#sectionBlock)

Read more about it on the [class homepage](/class).
