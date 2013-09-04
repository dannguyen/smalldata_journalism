---
layout: page
title: Analysis Antipatterns
section: analysis
---

The ways that an analysis can go bad.

This is just a draft/thinking pad...each headline refers to an "antipattern" and for some of them, I've included some notes and descriptions. I plan to separate these antipatterns into their own pages, with examples, illustrations, and proposed solutions. If you have any suggestions, feel free to email me ([dan@danwin.com](mailto:dan@danwin.com)), tweet at me ([@dancow](https://twitter.com/dancow)), or submit [a pull request](https://github.com/dannguyen/smalldata_journalism). 



### Conceptual problems

#### Correlation is not causation

#### Apples to oranges comparison

#### Proving a tautology

#### Ecological fallacy
#### Prosecutor's fallacy


### Measurement problems

#### Double counting

#### Confusing percentage points and percent change

#### Misleading comparison of changes in percentages

#### Using averages instead of medians
Averages can be heavily distorted by outliers.

#### Focusing too much on absolute numbers
For example, concluding that New York City is more dangerous than New Orleans based on total number of murders -- [419](http://www.nyc.gov/html/nypd/downloads/pdf/analysis_and_planning/murder_in_nyc_2012.pdf) versus [193](http://www.nola.com/crime/index.ssf/2012/12/murders_in_new_orleans_were_sl.html), respectively, in 2012 -- rather than murder rate: [3.8](http://gothamist.com/2012/12/28/nyc_hits_record_low_murder_rate_in.php) versus [53.5](http://www.policymic.com/articles/22686/america-s-10-deadliest-cities-2012) (per 100,000 population).

#### Ignoring absolute numbers
Declaring a town of 1,000 residents to be the murder capital of the country because of a single murder in a given year (a rate of 100 murders per 100,000), even if that was the only murder in 50 years.

#### Aggressively optimistic extrapolations
Predicting a quarterback will throw 60 touchdown passes in a season based on throwing 5 touchdown passes in the season opener.

#### Failure to do regression analysis

### Sampling problems

#### Not enough data

#### Using nonrepresentative data

#### Selection bias
Via [The Hill](http://thehill.com/blogs/ballot-box/polls/303339-gallup-overhauling-polling-methods-after-failure-in-2012-election
): In the 2012 election, Gallup's final pre-election poll gave Mitt Romney a 49 percent to 48 percent edge over Obama in the popular vote; Obama ended up winning by 3.85 points. Among the factors Gallup re-examined was the number of landlines versus cell phones polled. Landlines are more associated with “older and more Republican respondents”, which Gallup believes was partially responsible for the skew towards Romney. 

#### Survivor bias
A variation of selection bias, in which the criteria including data ends up creating a predestined range of data points. Related: [A Rating With a High Return: NC-17
](http://economix.blogs.nytimes.com/2013/08/13/a-rating-with-a-high-return-nc-17/?hp)
