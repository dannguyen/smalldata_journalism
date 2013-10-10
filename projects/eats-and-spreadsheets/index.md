---
layout: project
title: Eats and Spreadsheets
tagline: Basic data work with New York restaurants
header_image: about-nyu-washingtonsquare.jpg
project: eats-and-spreadsheets
project_order: introduction
---

This is a series of lessons on basic data transformation and analysis, using only freely available software and (almost) no programming. It's adopted from my [Fall 2013 data journalism class at NYU-SCPS](/class) and is meant to serve as a wide-ranging introduction on basic spreadsheet usage, data mashing, and interactive web visualization.

This guide is aimed at those with a low level of technical expertise. Because though technology makes things *easier*, no technology is needed to understand &ndash; and challenge &ndash; the value of a dataset.

That said, technology sure helps to make that process of understanding *a lot faster*. So this is not just a conceptual guide, but a step-by-step walkthrough of software as it exists today. At some point, you'll realize that even purported experts (well, me, at least) often get by through trial-and-error, via desperate mouse-clicking and Google searches.


## The concepts

### Just text

### Thinking inside the box


## The tools

### Google Spreadsheets

### Excel

### Google Fusion Tables


## The data

There are two data sources (not including the geolocation data): 

1. The New York City Department of Health and Mental Hygeine's database of restaurant inspections. View their [interactive site here](http://www.nyc.gov/html/doh/html/environmental/disclaimer.shtml). You can get your own copy of [their data at NYC's data portal ](https://data.cityofnewyork.us/Health/Restaurant-Inspection-Results/4vkw-7nck).
2. A crowdsourced list from my class of their favorite places to eat in New York along with a rating, from 1 to 5, of each eatery's "priciness." 

### Alterations

As most experienced data analysts know, one of the hardest tasks is cleaning and organizing collected data, especially if you're limited to just Excel/Google Spreadsheets/Fusion Tables. Since data cleaning alone could occupy a whole semester of lessons, I used MySQL and some Ruby to simplify and cleanup the original data:

1. I wrote a script to geocode all the addresses. The `latitude` and `longitude` fields are not part of the original datasets.
2. The crowdsourced data included numerous errors in the **addresses** and **names** of restaurants. I hand-corrected most of the errors so that my geocoding script wouldn't go too astray. Needless to say, the part where we construct foreign keys is not as difficult as it would otherwise be.
3. The original tables of health **violations** and **inspections** did not have the `inspection_id` field. I created that field by concatenating the fields that contained the `camis` identifier and the **inspection date**. It's not quite a unique identifier but close enough for our purposes.
4. The city's database of **violation codes** is not straightforward to work with, so the table of violation codes used in this project has a `violation_code` field that is the result of concatenating an auto-incremented value and the city's original violation codes (examples of which are `02G`, `04C`). The table of reported violations by restaurants also have this concatenated value.

### Preloaded data and caveats

As I'll state over and over throughout this project, remember that all the data here is **just text**.

That said, I preloaded some of the bigger sets into Google Spreadsheets and Google Fusion Tables so that class time wasn't spent waiting for half a million rows to import into Fusion Tables.

You're welcome to access the data tables and make copies. However, you must accept that this data is presented as is for a class exercise, and is not meant for actual production and publishing (due to the list of ad-hoc alterations made above). I make no claims for the accuracy or integrity of this data and you assume all liability and sole responsibility for verifying and correcting the data:

- The list of class favorite restaurants with names/addresses cleaned up and geolocation data attached - [[Google Spreadsheets]](TK)
- The NYC-DOHMG list of restaurants, which includes geolocation data and a pre-generated foreign key (the details of which I explain later in the lesson) - [[Google Fusion Table]](TK)
- The NYC-DOHMG list of **inspection results**, which includes a semi-unique `inspection_id` field that we'll use as a foreign key - [Google Fusion Table](TK)
- The NYC-DOHMG list of **reported violations** by restaurants, which also includes an `inspection_id` field - [Google Fusion Table](TK)
- A variation of the NYC-DOHMG list of **violation codes**, which contain a field derived from the actual code and its position in the original list. The details are too boring to get into, but it has something to do with the city's inconsistent way of labeling things - [Google Fusion Table](TK)

**Note**: The **inspection results** and **reported violations** are pretty large tables number in the hundreds of thousands of rows. I've created pruned versions of the tables that contain all the data needed for the data mashup, which you should practice on before you embark on the tedium of waiting that comes with processing large datasets:

- Pruned version of [inspection results](TK)
- Pruned version of [reported violations](TK)


## Onwards, with small steps

So fair warning. Even with all the prep work I've done to make the data easier to work with, be prepared for what will seem like a sequence of relentlessly repetitive steps that you cannot possibly memorize.

And that's the point, it's not about *memorization*. It's about knowing what we want and then hacking/improvising our way with what we have to get it. The tools we have at hand are nearly ubiquitous and easy to access, but the tradeoff is that they aren't *ideal*; hence, the repetition in a few of the steps.

However, these tools are good enough for us now, and they'll save us a factor of at least a hundred or a thousand times in labor than if we attempted to do this analysis by hand. As you get better acquainted with the uses of data, you'll learn the database software and programming that will be a thousand times faster than the process we use now. But the insight and rationale you bring to the work of data will have no less significance.



