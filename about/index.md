---
layout: page
title: About small data Journalism
header_image: about-nyu-washingtonsquare.jpg
description: Some technical and background details about the sdJ
---

The *small data Journalism* book started out as a compilation of reading material and examples for my [Fall 2013 Data Journalism class at NYU-SCPS](http://www.scps.nyu.edu/content/scps/academics/course_detail.html?id=WRIT1-CE9787#sectionBlock)



### About the NYU Data Journalism class

This is a **five-session course** that meets on Monday nights, from 6:45 - 9:15PM. The term starts at **September 23** and ends **October 21**.

The course number is: [WRIT1-CE9787](http://www.scps.nyu.edu/content/scps/academics/course_detail.html?id=WRIT1-CE9787#sectionBlock)

It is a non-credit course administered through the School of Continuing and Professional Studies. However, it is applicable toward the [SCPS Certificate in Digital Journalism](http://www.scps.nyu.edu/content/scps/academics/departments/humanities-arts-and-writing/academics/noncredit/certificate-in-digital-journalism.html).

I'm aiming this class at a broad audience. It won't be a learn-to-code class as I expect there to be at least a few students who have never touched the command line before. I want to focus instead on how to initiate data journalism projects, regardless of your technical skill.

However, it won't be a reading and theory class and I expect students to complete hands-on data assignments. The tools we use won't be advanced or propietary, but they'll be powerful enough for the job.

If you're reading this before the class start date, [you can enroll here](http://www.scps.nyu.edu/content/scps/academics/course_detail.html?id=WRIT1-CE9787#sectionBlock).






### About the author

My name is Dan Nguyen and I've been a journalist and a programmer at several news organizations. I'm currently [Head of Data at Skift](http://skift.com), an information and news site for the travel industry. Previously, I was [a news application developer at ProPublica](http://www.propublica.org/site/author/dan_nguyen), the non-profit investigative newsroom. My largest projects there included [Dollars for Docs](http://projects.propublica.org/docdollars), [SOPA Opera](http://projects.propublica.org/sopa), and the [Bailout Tracker](http://projects.propublica.org/bailout).

I've also written (actually, *still in the process* of writing) a few practical how-to online books: The [Bastards Books of Ruby](http://ruby.bastardsbook.com), [Photography](http://photography.bastardsbook.com), and [Regular Expressions](http://regex.bastardsbook.com).

My personal blog is at [danwin.com](http://danwin.com) and you can find me on Twitter at [@dancow](https://twitter.com/dancow).



### Technical details

The sdJ site is built using Jekyll, the static-blog generator that powers Github pages, a few [notable government sites](http://developmentseed.org/blog/new-healthcare-gov-is-open-and-cms-free/), and perhaps, most famously, the [Obama campaign's $250 million fundraising platform](http://kylerush.net/blog/meet-the-obama-campaigns-250-million-fundraising-platform/). Don't worry, it's politically-neutral...but the Obama example shows how flexible (with a bit of hacking) and low maintenence Jekyll is.

Previously, I've used [Octopress](http://octopress.org) to build out the [Bastards Book of Photography](http://photography.bastardsbook.com). This time I wanted to keep things as uncomplicated as possible, so I'm seeing how far I get with a few gems and custom plugins.

You can see the full Gemfile at the [sdJ Github repo](TK). The two Jekyll-specific gems I use are jekyll-assets to allow compilation of SASS and CoffeeScript files and s3_website to deploy sdJ to Amazon S3. Check out Alastair Coote's [excellent explainer of using S3 to cheaply serve up hundreds of thousands of webpages](http://blogging.alastair.is/how-i-served-100k-users-without-crashing-and-only-spent-0-32/).

#### Design and layout

[Bootstrap 3](http://getbootstrap.com/getting-started/) has just been released so this was a good time to try it out. I've modified the base width as I want to fit the site in a single-column format. 

The fonts I use are:

- [Arvo](http://www.google.com/fonts/specimen/Arvo) for the display and headline fonts
- [Droid Serif](http://www.google.com/fonts/specimen/Droid+Serif) for the body text
- Helvetica Neue everywhere else.

I haven't coded very many charts yet but I'm planning to use [D3](http://d3js.org/) exclusively. It's my favorite Javascript charting library and it has the added advantage of creating charts that can be exported as images.

----

Check out the [Github repo](https://github.com/dannguyen/smalldata_journalism) if you'd like to see the raw code. There's nothing too fancy in it, but feel free to submit any corrections via `git pull`



