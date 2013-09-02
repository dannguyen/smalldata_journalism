---
layout: page
title: About the sdJ Book
---

The *small data Journalism* book started out as a compilation of reading material and examples for my Fall 2013 Data Journalism class at NYU-SCPS

### About the NYU Data Journalism class






### About the author

My name is Dan Nguyen and I've been a journalist and a programmer at several news organizations. I'm currently Head of Data at Skift, an information and news site for the travel industry. Previously, I was a news application developer at ProPublica, the non-profit investigative newsroom. My largest projects there included Dollars for Docs, SOPA Opera, and the Bailout Tracker.

I've also written (actually, *trying* to write) a few introductory-level online books for technical books: The Bastards Books of Ruby, Photography, and Regular Expressions.

My personal blog is at danwin.com and you can find me on Twitter at @dancow.




### Technical details

The sdJ site is built using Jekyll, the static-blog generator that powers Github pages, a few [notable government sites](http://developmentseed.org/blog/new-healthcare-gov-is-open-and-cms-free/), and perhaps, most famously, the [Obama campaign's $250 million fundraising platform](http://kylerush.net/blog/meet-the-obama-campaigns-250-million-fundraising-platform/). Don't worry, it's politically-neutral...but the Obama example shows how flexible (with a bit of hacking) and low maintenence Jekyll is.

Previously, I've used [Octopress](http://octopress.org) to build out the [Bastards Book of Photography](http://photography.bastardsbook.com). This time I wanted to keep things as uncomplicated as possible, so I'm seeing how far I get with a few gems and custom plugins.

You can see the full Gemfile at the [sdJ Github repo](TK). The two Jekyll-specific gems I use are jekyll-assets to allow compilation of SASS and CoffeeScript files and s3_website to deploy sdJ to Amazon S3. Check out Alastair Coote's [excellent explainer of using S3 to cheaply serve up hundreds of thousands of webpages](http://blogging.alastair.is/how-i-served-100k-users-without-crashing-and-only-spent-0-32/).

#### Design and layout

[Bootstrap 3](http://getbootstrap.com/getting-started/) has just been released so this was a good time to try it out. I've modified the base width as I want to fit the site in a single-column format. 

The fonts I use are:

- Arvo for the display and headline fonts
- Droid Serif for the body text
- Helvetica Neue everywhere else.

I haven't written very many charts yet but I'm planning to use [D3](http://d3js.org/) exclusively. It's my favorite Javascript charting library and it has the added advantage of creating charts that can be exported as images.

----

Check out the Github repo if you'd like to see the raw code. There's nothing too fancy in it, but feel free to submit any corrections via `git pull`



