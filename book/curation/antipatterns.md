---
layout: page
title: Curation Antipatterns
section: curation
---

A list of problematic practices when it comes to gathering, cleaning, and storing data. 

This is just a draft/thinking pad...each headline refers to an "antipattern" and for some of them, I've included some notes and descriptions. I plan to separate these antipatterns into their own pages, with examples, illustrations, and proposed solutions. If you have any suggestions, feel free to email me ([dan@danwin.com](mailto:dan@danwin.com)), tweet at me ([@dancow](https://twitter.com/dancow)), or submit [a pull request](https://github.com/dannguyen/smalldata_journalism). 


#### Single-source data
"If your mother says she loves you, get a second opinion" applies to data, too.


#### Not keeping a copy of the original data
When creating a derived column, keep the original column around just in case. For example, when splitting up a `full_name` column into `first_name` and `last_name`, keep the `full_name` column; your spreadsheet (in all but extreme cases) can handle the extra data.

#### A unique identifier that is not unique
For example, when maintaining a repository of Twitter users and their tweets, [keeping track of a screenname](https://dev.twitter.com/docs/api/1.1/get/users/show) (@rsarver) instead of a user ID (`795649`). Users can change their screenname, but Twitter uses an ID number to keep track of the accounts no matter how many name changes it has.

#### Maximum values limited by memory
Does your database contain a surprisingly high number of values that are coincidentally powers of 2, minus 1? Such as 255 or 4,294,967,295? Make sure your data schema isn't restricting the binary length of the number.

#### Not using many-to-many

#### Premature denormalization

#### Fuzzy enumerations
Humans know how that "Yes", "true", "T", "y" all mean the same thing in a column that is simply supposed to have true/false values. But most programs and data software do not.




#### OCD random spot checking
When publishing a data story based off of data rows and calculations that number in the thousand or millions, do not verify the published results against the source data via a faith-based system of manual eye-balling. Instead, come up with a small set of edge cases that are certain to be wrong if your overall calculations were wrong.


#### Destructive editing with Excel
Popular spreadsheet software can cause irreversible changes to your data during the import/export process.

#### Managing data by hand
Do not rely on a calculation process that requries you to drag boxes and grids with your clumsy hand. [Ask these Harvard economists about it](http://www.theverge.com/2013/4/17/4234136/excel-calculation-error-infamous-economic-study).
