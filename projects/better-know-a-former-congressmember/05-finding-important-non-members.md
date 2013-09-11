---
layout: project
project: former-congressmembers
project_order: 5
title: Expanding the Search
tagline: "Scaling up our data search."
header_image: about-nyu-washingtonsquare.jpg
guff: "We've done an incredible amount of data collecting yet have relatively few data points (on one side) to work with. Let's find more."
---

## Conflicts of interest, in the public interest

That former Congressional staffers becoming lobbyists might lead to  conflicts of interest was such a concern that [Congress passed the Honest Leadership and Open Government Act of 2007](http://www.gpo.gov/fdsys/pkg/PLAW-110publ81/html/PLAW-110publ81.htm), which, among other things, mandated that Congressmembers and their staff members wait a bit before taking a lobbying job:

More importantly for us is this stipulation:

> Posting on Internet.--The Clerk of the House of Representatives, 
with respect to notifications under subsection (a) relating to Members, 
officers, and employees of the House, and the Secretary of the Senate, 
with respect to such notifications relating to Members, officers, and 
employees of the Senate, **shall post the information contained in such 
notifications on the public Internet site** of the Office of the Clerk or 
the Secretary of the Senate, as the case may be, **in a format that, to 
the extent technically practicable, is searchable, sortable, and 
downloadable**.

The House and Senate lists of departing members and staff is [here](http://clerk.house.gov/public_disc/postemployment.aspx) and [here](http://www.senate.gov/pagelayout/legislative/g_three_sections_with_teasers/lobbyingdisc.htm#lobbyingdisc=pe).

### Collecting the post-employment data

Both chambers post the data in the easily parsable XML-format. But before we do that, let's view it in the human-presentable format that exists on the webpages:

TKIMG

The data set is pretty simple here with four columns and **six usuable data points**:

- The last name of the departing staffer/Congressember
- Their first name
- Their middle initial
- The office they worked in
- When the restriction period goes into effect (i.e. when they left Congress)
- When the period ends (i.e. when they can officially get into the lobbying game) 

### Side note: Redundant data

You'll notice that Senator Daniel Akaka, who retired in 2013, is listed here because the law affects both elected members and their staffers. 

So what the hell, you're probably thinking, all that work in [Chapter 1](TK) of getting a list of former Congressmembers is done for us here! This is true, but again, details matter:

1. The departing Congressmember data we have goes back to **1990**

2. We got quite a few more details on each Congressmember besides their name, and these details will be come very important in the next lessons.

3. I had forgotten about this law until I started writing this lesson; never discount the potential of a little extra research.

### Collecting the post-employment data as a programmer

Just straightforward HTML and XML parsing.

#### Fetching and parsing House post-employment data

The [House data is in one convenient zipped XML file](http://clerk.house.gov/public_disc/post-employment/PostEmployment.zip), which you can parse with this:

    TK CODE
    05-01-parsing-house-post-employment-xml.rb


#### Fetching and parsing Senate post-employment data

The Senate XML files are spread out over the years (yes, both chambers have different IT systems and technology stacks, apparently), so here's a quick loop to download, unzip the files, and parse them:


  TK CODE
  05-02-fetching-parsing-senate-post-employment-xml.rb


#### House and Senate data to CSV

Oh what the hell, we'll just throw both datasets into one CSV, creating an extra field that tells us whether the entry came from the House or the Senate:


  TK CODE
  05-03-congress-post-employment-to-csv.rb



### Storing the data

So there's a slight problem here: how do we store this new data? It has different data than what we collected in Chapter 1 in that not everyone is a former Congressmember. So there's an extra field to describe the person's job, such as `SENATOR HELLER` and `COMM ON THE BUDGET`, which indicate that the person worked for a Senator or the Budget Committee, respectively.

The easiest solution is to just create a new spreadsheet for the House and Senate post-employment listings.

#### Storing the data as a programmer

We could generalize our `congressmembers` table to include this new data, but I think it's probably just easier to create a new table, called `people` and use the schema provided by Congress here.

You can insert the CSV generated above into your SQL database manually. The SQL for creating the table looks like this:



## A more granular data source

So before I became re-acquainted with the [Honest Leadership and Open Government Act of 2007](http://www.gpo.gov/fdsys/pkg/PLAW-110publ81/html/PLAW-110publ81.htm), I had my eyes on another useful Congressional dataset.

Let's think about what we want, at an absolute minimum, we want:

- Name of the staffer
- Who they worked for
- When they left Congress

And we already have that from the previous exercise. But what would be *nice* to have? Their job titles. 

Where might there be a precise and complete listing of job titles and employment dates? 

The payroll.

### Collecting the payroll

Of course, any given payroll isn't public knowledge, but we're talking about Congress, and Congress, to their credit, has publicly published its members' and staff salaries.

There's a couple major caveats though. 



### Collecting the payroll as a programmer
