---
layout: page
title: Introduction to Mapping with Google Fusion Tables
tagline: How to turn spreadsheet data into interactive maps.
header_image: about-nyu-washingtonsquare.jpg
---


**Note:** *This is a short tutorial I wrote for the students in my [Data Journalism class](/class). I have a longer series about the concepts of spreadsheets, delimited data, and visualization. But for now, my class just needs a step-by-step guide to basic data mashing and visualization via Google Fusion Tables.*

{% include auto-toc.md %}


## Prerequisites and Background


### The tools

You **must have a Google Account** as we'll be using two of their cloud-based spreadsheet-like applications:

- **Google Spreadsheets**: This will be most familiar to you if you've ever used Excel &ndash; in fact, you can use Excel if you prefer. For this lesson, we use Spreadsheets to **transform** our data set before we visualize it.
- **Google Fusion Tables**: This uses the same structured data as Spreadsheets, but allows you to **merge** different data tables together. It's not quite as powerful as your typical database software, but it is easy and will give you an idea of how powerful this concept can be. Also, Fusion Tables makes it extremely easy to create an interactive map (almost *too* easy).

Though these are two different programs, they both can export and import to **comma-delimited** text files. In fact, I would argue that understanding CSVs (rather, *delimitation* in general), is the most important and universal thing to know when doing data work. However, I won't be going into detail about it for this technical walkthrough.

Just remember that the data here is *just text*, and if you want to get from one application to the other, **export as CSV** and then, in your destination application, **import as CSV**.

### About the DOH data

For the purposes of this guide, I'm using a subset of restaurant inspections data from the New York Department of Health and Mental Hygiene You can view their [interactive site here](http://www.nyc.gov/html/doh/html/environmental/disclaimer.shtml). You can also get your own copy of [their data at NYC's data portal](https://data.cityofnewyork.us/Health/Restaurant-Inspection-Results/4vkw-7nck), though it will not be as cleaned up as it is here.

#### Structure of the data

There are two tables we'll be using:

1. `restaurants` - This primarily contains business information, such as business name and address.
2. `inspections` - This contains the results of inspections conducted by the DOH, including the inspection date and the numerical score awarded (**lower** is better).


#### Limitations of the data

Some of the changes and limitations in this data include:

- The `restaurants` table only includes Starbucks, Dunkin Donuts, and McDonalds locations. Not to pick on these chains or anything, but just because there are a *lot* of them and make for an interesting map, and you've probably been to at least one of them for coffee and breakfast in your life.
- The `inspections` table only includes the latest inspections per restaurant, as of early October. Some of the places may have been re-inspected since then, so do not assume that the scores here reflect the restaurant's latest status. [Again, check out the NYDOH site for the latest results](http://www.nyc.gov/html/doh/html/environmental/disclaimer.shtml).
- I've left out the `violations` table for a future lesson. You'll have to look at the DOH site to see the details of the violations.

**Disclaimer note:** You're welcome to access the data tables and make copies. However, you must accept that this data is presented as is for a class exercise, and is **not meant for actual production and publishing**. I make no claims for the accuracy or integrity of this data and you assume all liability and sole responsibility for verifying and correcting the data.


## Transforming data in Google Spreadsheets

Start out by downloading the **CSV text file** of DOH-inspected businesses [from this link I've provided](https://docs.google.com/spreadsheet/pub?key=0At3Q3D3lDxXcdGI0VXF1TFRKSjJDVFdxRUlQRVVTMGc&output=csv). You can open it in Excel if you'd like. I encourage you to open it with a **plain text editor** to verify that it indeed is just text:


    name,building,street,zipcode,phone,camis
    DUNKIN' DONUTS,56,COURT STREET,11201,7186252068,40363098
    MCDONALD'S,395,FLATBUSH AVENUE EXTENSION,11201,7185224988,40369535
    MCDONALD'S,3267,RICHMOND AVENUE,10312,7189483800,40370356
    MCDONALD'S,5804,CLARENDON ROAD,11203,7184510834,40373909


You can get to Google Spreadsheets by visiting [https://drive.google.com](https://drive.google.com)


Click the big red button labeled **Create** and pick **Spreadsheet**.

![img](/images/projects/fusion-spreadsheets/google-fusion-170-drive-create-new.png)

### Importing a CSV

You'll be greeted with an empty table. That's OK, we already have data. Click the **File** menu and then **Import**

![img](/images/projects/fusion-spreadsheets/google-fusion-185-import-new-spreadsheet.png)

You will be asked to **Choose File** and the **Import action**. Select the CSV file you just downloaded and then select the **Replace current sheet** option (it's empty anyway, so no harm).

![img](/images/projects/fusion-spreadsheets/google-fusion-190-spreadsheet-import-options.png)

A little animation effect will pop up and you'll see a preview of the spreadsheet data:

![img](/images/projects/fusion-spreadsheets/google-fusion-195-import-spreadsheet-preview.png)

Click the blue **Import** button and you'll see your new data:

![img](/images/projects/fusion-spreadsheets/google-fusion-200-new-spreadsheet.png)

There's not much interesting about this data but we can get it ready for the
TK


### Freezing rows and sorting columns

If you've ever used Excel, Google Spreadsheets should seem very familiar to you. Much of Excel's intermediate-level functionality is here. That, plus the ability to collaborate and share data in real time, from any workstation, makes Google Spreadsheets the greatest tool for data journalism today, in my humble opinion.

#### Freeze rows

But small steps first. One of the things I like about Google's flavor of spreadsheets is that sorting is slightly more intuitive. However, before we sort, let's **freeze** the headers to keep them in place:

Go to the **View** menu in the Spreadsheets toolbar and select **Freeze Rows**. Then select **Freeze 1 row**.

![img](/images/projects/fusion-spreadsheets/google-fusion-212--freeze-row-submenu.png)

The result will be that you can scroll up and down the data and the headers will stay in place.

#### Sort columns

To sort a column, simply click on a column header. As you mouse over it, a little down arrow should appear:

![img](/images/projects/fusion-spreadsheets/google-fusion-213-header-down-arrow.png)

Click on it to bring up dropdown menu. Choosing **Sort sheet A->Z** will order things alphabetically, or, if they're numbers, from smallest to largest:

![img](/images/projects/fusion-spreadsheets/google-fusion-216-sort-columns.png)


### Preparing our data for mapping

OK, now let's make our data a bit more interesting. Or, at least more *useful*.

As I said at the start of this chapter, we want to **map** this data. Google Spreadsheets does not have this capability built-in. But Spreadsheets is great for getting the data *ready* for **Fusion Tables**, which *can* create an interactive map.

How does Fusion Tables does that? Let's see how its sister product,  [Google Maps](http://maps.google.com), does it.

For example, from one of the `MCDONALD'S` row, we can use the columns for `building`, `street`, and `zipcode` to get something that Google Maps can interpret:

      943 FLATBUSH AVENUE 11226

Entering that [into Google Maps gets you this](https://maps.google.com/maps?q=943+FLATBUSH+AVENUE+11226&hl=en&ll=40.647922,-73.952301&spn=0.004966,0.009334&sll=40.697488,-73.979681&sspn=0.507051,0.990143&hnear=943+Flatbush+Ave,+Brooklyn,+New+York+11226&t=m&z=16):

![img](/images/projects/fusion-spreadsheets/google-fusion-225-google-maps.png)


So to get Fusion Tables to map all of our points, we just need to send over the address information. One big caveat, however: The address data needs to be in **one field** (or two, if you have latitude and longitude data, which we don't). But our address data is in three fields: `building`, `street`, `zipcode`


### Formula-based columns

So how do we get our three location-related fields into one? Well, we can type them in manually, for all 1,000+ addresses...

There must be a better way, right? There is, but when it comes to computerized data work, you **should always try it the old-fashioned way, at least once**.

For starters, it helps you appreciate computers. But more importantly, it let's you understand in *human* terms what you need the *computer* to do for you. So if you've typed in the `building`, `street`, and `zipcode` data for at least one row, then you can describe the task in *human* terms:

> We simply want to *join* the three fields together in one.

And luckily, Google Spreadsheets (and Excel) has a way to automate it for us. We just have to describe the above statement in computer terms. And we do this with a **formula**


#### Formula basics

First, **double-click on an empty cell** in one of the empty columns in your spreadsheet.

To create a **formula** in Google Spreadsheets, start off with an **equals sign**. This is absolutely critical &ndash; if you do not use an equals sign, Spreadsheets will just assume you're writing in regular text.

OK, now after typing in an equals sign, type in something formula-ish. Like, `9823*2086` and then hit **Enter**

(again, **remember the equals sign at the beginning**)


When you hit **Enter**, Spreadsheets will *calculate* your formula and give you an answer. In this case, it's `20490778`

Now double-click on the cell again, you should see your  *formula* as its contents, not the number `20490778`:

      =9823*2086

![img](/images/projects/fusion-spreadsheets/google-fusion-331-formula-num.png)

#### Formulas with other cells

Typing in numbers manually isn't very fun. So let's add up numbers already in a data. First, choose a row, any row. **Row 5**, for example, will be just fine.


Now if your data is ordered like my data, the `zipcode` and `phone` fields are in columns lettered `D` and `E` respectively.

So **double-click** another empty cell, preferably in **Row 5** (though not necessarily), and enter this in:

    =D5 + E5

When you refer to specific cells by their **column letters** and **row numbers**, Spreadsheets knows that you're trying to add those two *cells* together:

![img](/images/projects/fusion-spreadsheets/google-fusion-345-add-cells.png)

In my case, the values in `zipcode` and `phone` for **Row 5** were `11203` and `7184510834`, respectively. The **sum** of those two numbers is `7184522037`, which is the result of the formula `=D5 + E5`.

#### The CONCATENATE function



So how do formulas help us with our original goal? What we need to do is actually kind of math-like: we need to **add** three fields *together*, except they contain text, not numbers. However, we can't use simple `+` signs for our formula.

Instead, we need to use a special function named `CONCATENATE`. 

![img](/images/projects/fusion-spreadsheets/google-fusion-425-begin-concat.png)


**Functions** in Google Spreadsheets have a few conventions:

- Again, like any other formula, you must begin with an `=` sign
- After the name of the function (`CONCATENATE`, for example), you pass in the *required parameters* between parentheses
- You use *commas* to separate the parameters

What do I mean by **parameters**? Think of them as the values you want the function to act upon. The parameters for `CONCATENATE` are simply the words we want to join together.

Let's repeat the previous number-adding formula but with `CONCATENATE` instead:

    =CONCATENATE(D5, E5)

Instead of `7184522037`. the numerical sum of the zipcode and phone values, you'll get `112037184510834`, which is `11203` attached to `7184510834`, as if they were *words*.

OK, let's put some kind of symbol between them so that it's easier to read:

    =CONCATENATE(D5, " & ", E5)

The result is:

    11203 & 7184510834

OK, there's another convention to remember here: When wanting to join just *literal* text (i.e. not a special reference to a column name), you **must use double quotes to enclose the string**.

For example, if you do this:

    =CONCATENATE("D5", " & ", "E5")

`D5` and `E5` are no longer treated as references to cells. Your formula will result in this:

    D5 & E5


OK, enough demonstration, here's what the `CONCATENATE` will look like for our purpose of getting an address field.

First, create a new column header, and bear with me, call it `my_custom_column`.

![img](/images/projects/fusion-spreadsheets/google-fusion-390-add-custom-column.png)


Then, in the next row (which should be **row 2**), type in this formula:

    =CONCATENATE(B2, " ", C2, ", NY ,", D2)

![img](/images/projects/fusion-spreadsheets/google-fusion-450-finish-concatenate.png)

OK, that formula is a little hard to parse at first. If your `building`, `street`, and `zipcode` are in columns `B`, `C`, and `D`, then the above formula can be described, in English, as:

1. Start off with the text in cell B2 (`building`)
2. Add an **empty space**
3. Then add the text in cell **C2** (`street`)
4. Then add the literal string `, NY ,` &ndash; a comma, then a space, then `NY`, which stands for "New York", then another space, and then a second comma
5. Finally, add the text of **D2** (`zipcode`)

After typing in the formula, the value under your column header of `my_custom_column` should be something like:

    56 COURT STREET, NY, 11201

Nifty! 

#### Auto-fill a column

Now we just have to repeat that formula about 1,000 more times. Fortunately, Spreadsheets can automate that part, too.

Click your newly created cell and turn your attention to its **lower-right corner**, which should have a slightly-emphasized square:

![img](/images/projects/fusion-spreadsheets/google-fusion-519--auto-column-low-corner.png)

Now move your mouse pointer over that corner. Your pointer should now turn into **cross-hairs**. Just double-click, and if you've done it right, the formula in the first column should repeat all the way down: 

![img](/images/projects/fusion-spreadsheets/google-fusion-520-my-custom-column-filled.png)

Pretty neat.


OK, onwards to Google Fusion Tables. We'll be using Google Spreadsheets and its useful formula-based way of creating columns. If you're new to them, they can be a little fussy and annoying. But keep it in perspective: with just a few keystrokes and mouse clicks, we created an entire new column of data. This technique works whether the dataset has 10 rows or 100,000. So yes, formulas are a pain, but they're way better the old-fashioned data-entry.

## Mapping data with Fusion Tables

Time to enjoy the fruits of our data labor. That column of location data will pretty much be the hardest part of creating an interactive map, thanks to the power of Google Fusion Tables.

It's outside the scope of my lesson to describe all of the features of Fusion Tables. At a surface level, Fusion Tables seem no different than a spreadsheet...and in fact, the kind of data-enhancement we just did is pretty much impossible in FT, which is why we started out in Spreadsheets.

But when it comes to building Web interactives, FT provides some great out-of-the-box functionality. We'll return to Spreadsheets to do some other data-preparation. But think of FT as the place we go to to make our data *seen*.


### Create a new Fusion Table

Go back to [http://drive.google.com](http://drive.google.com) and click on the red **Create** button. This time, click **Fusion Table**.

![img](/images/projects/fusion-spreadsheets/google-fusion-511-create-fusion-table.png)


There's a couple of ways to import data into a Fusion Table.

1. **From this computer**: You can choose a text file of data to upload to FT.
2. **Google Spreadsheets**: You can paste in a link to your Google Spreadsheet and FT will automatically import it in.

We'll end up going through both ways. For now, you should choose the *quickest*: Choose **Google Spreadsheets**. Then go back to the browser window with the spreadsheet you were working on, **copy** the URL, and paste it in the field where it says, "Or paste a web address here:"

![img](/images/projects/fusion-spreadsheets/google-fusion-549-import-enter-url.png)

The dialog boxes that follow should be relatively straightforward and you shouldn't have to change anything:

![img](/images/projects/fusion-spreadsheets/google-fusion-565-mid-import.png)

![img](/images/projects/fusion-spreadsheets/google-fusion-555-select-sheet-import.png)

Voila, here is our data in Fusion Tables:

![img](/images/projects/fusion-spreadsheets/google-fusion-580-imported-into-fusion.png)


**Note:** This import process is quick, but Fusion Tables has crashed on me many times. You may have to import a CSV file from your computer. This first involves **exporting** your data as a CSV from Google Spreadsheets. You can read through this guide to see where I describe the process if you can't figure out on your own.




#### Change column type

If you followed my previous instructions, the column containing a geocodable address should be labeled `my_custom_column`. Why did I pick such a useless name?

Just to fool Google's smart text algorithm, and to illustrate a point. Had we named the column something like `location`, Fusion Tables would've guessed (correctly) that the column contains geocodable data and then would have begun geocoding it onto a map.

That's what we *want*, of course. But I want to show you how to *manually* set what column gets geocoded.

First, move your **mouse over the right-side of** the `my_custom_column` header. A down-arrow will appear; click it to pop up a new menu and then select the **Change...** item.


You should now see a form with several fields you can edit. The one we care about is **Type**. Currently, `my_custom_column` should have the type of **Text**. Change its type to **Location**.

![img](/images/projects/fusion-spreadsheets/google-fusion-592-changing-column-location.png)


To be brief: even though everything in our data is technically text, you can have Fusion Tables treat it different by *column*. In this situation, we want FT to see the `my_custom_column` as a "Location". For our purposes, this means that Google will attempt to map the points.

#### Geocoding

Save the changes you made to the `my_custom_column`. When you return to the main table view, you should see the entries in `my_custom_column` highlighted in yellow. This is Fusion Tables' way of saying, "this text describes a location and we're busy geocoding it for you."

In the **tabs** of your table, which so far include `Rows` and `Cards`, you should see a <span style="color:red">**red-colored tab**</span> with a plus sign `+`

Click it and you'll see the option of **Add map**. Click that and you should see a screen like this:

![img](/images/projects/fusion-spreadsheets/google-fusion-620-add-map-dropdown.png)

You have created a map view but you can't see anything yet because Google has to first geocode those 1,000+ addresses we gave it. This may take 15 to 20 minutes, so go get some coffee.

![img](/images/projects/fusion-spreadsheets/google-fusion-650-geocode-progress.png)

### Play with the Google map

Look at what came from our humble spreadsheet of data; A map!

OK, it's not too impressive in the default view because it's so zoomed out. Why is it so zoomed out? Because some of the points are mapped *way* out of New York, even into Canada!

Bad Google! But wait...click on any of those outliers to see what it contains:

![img](/images/projects/fusion-spreadsheets/google-fusion-655-bad-geocode.png)

OK, so that address *is* a bit ambiguous, and it's understandable why Google didn't geocode it correctly. Even with a solid data source like the NYC Department of Health, we see that data is never perfect. In fact, data is almost *always* riddled with errors and inconsistencies. Dealing with that is one of the most difficult and soul-killing parts of data journalism.

But screw that, let's go back to explore our cool map. Keep zooming in until the map is focused on New York City:

![img](/images/projects/fusion-spreadsheets/google-fusion-660-nyc-map-red-closeup.png)

Look at that mass of fast food franchises!


#### Map styles

![img](/images/projects/fusion-spreadsheets/google-fusion-673--change-map-styles.png)

![img](/images/projects/fusion-spreadsheets/google-fusion-675-choose-yellow-icon.png)

![img](/images/projects/fusion-spreadsheets/google-fusion-676-yellow-dot-map.png)

### Filter the data (and the map)

It's pretty neat that Fusion Tables built us an interactive, clickable map. Unfortunately, we still don't have enough data to do anything interesting. The map itself is cluttered with a mob of nondescript red dots. 

Before we get into Fusion's most powerful feature, let's try **filtering** the data.

Click on the <span style="color:#44f;">blue button</span> in the **top left** of the map labeled **Filter**. This should bring up a selection menu of your data **column headers**. 

![img](/images/projects/fusion-spreadsheets/google-fusion-665--choose-filter.png)

Click the option **name**. This gives you a form field to fill in. Type in a partial name, like "`STARB`" (for Starbucks). As quickly as you type, Fusion Tables will try to autocomplete.

![img](/images/projects/fusion-spreadsheets/google-fusion-667-filter-auto.png)

But **don't** auto-complete. Instead, leave your partial term in the text field and then click the **Find** button. The map view should update showing fewer dots. If you click on each dot, you'll see that the map now only shows datapoints which have a **name** that includes `STARB`.

![img](/images/projects/fusion-spreadsheets/google-fusion-668-filter-starb.png)

Pretty cool, we can now see the number and distribution of Starbucks versus McDonalds vs Dunkin' Donuts.

Here's McDonalds:

![img](/images/projects/fusion-spreadsheets/google-fusion-669-filter-mcd.png)

And Dunkin Donuts, which eclipses them both in franchise count:

![img](/images/projects/fusion-spreadsheets/google-fusion-670-filter-dunkins.png)

Before we move on, click the **X** button in the filter menu so that all the datapoints are redrawn on the map.


## Merging data with Fusion Tables

Alright, the map was cool, but the killer feature of Fusion Tables, in my opinion, is the ability to **merge** datasets.

Remember that we actually have two data tables. One is simply the list of restaurant establishments, which we just imported into Fusion Tables and mapped. 

But the *fun* data &ndash; their **health inspection reports**, is in its own table. This is how it comes in the original NYC-DOH dataset because each establishment could have multiple reports. I've pruned the inspections to include only their latest scored inspection. But the reality remains: we have two separate lists that we want to *merge together*.

### Import the Inspections table

![img](/images/projects/fusion-spreadsheets/google-fusion-550-import-inspections.png)


### Foreign keys and unique IDs

But merge on what exactly? How do we know which report belongs to which establishment?

In this situation, it's easy. You may have noticed in the table of restaurants a column named `camis`. I don't know what that stands for, but it seems to be a **unique identifier** used by the NYC-DOH to keep track of each business.

If you look at the **inspections table**, you won't see the names or addresses of restaurants, but you will see a column for `camis` numbers. In this case, the `camis` numbers are a **foreign key**. Thik of it as a way to link up with data from a "foreign" table: if you have a foreign key that matches the unique identifier of a row in another table, then the two rows can be *joined* together.

Just as I advised in the formula-writing part of Spreadsheets, think of how you would join these two tables the old-fashioned way: looking for the `camis` in the restaurants table, then searching for a row in the inspections table with that `camis`, and then, finally, copying and pasting the rows together.

A thousand times.

### Merging on a single field

Fusion Tables, as you might guess, makes this process extremely easy, and with just a few steps, we can greatly expand the dimension and detail of our restaurant data.

(**Note:** if you've ever used proper database software, such as SQL or even Microsoft Access, this section will *piss you off* because Fusion Tables is not nearly as flexible or powerful in joining tables. But for a cloud-based point-and-click solution, it's pretty good.)


![img](/images/projects/fusion-spreadsheets/google-fusion-680--select-merge-dropdown.png)

![img](/images/projects/fusion-spreadsheets/google-fusion-683-choose-table-merge.png)

![img](/images/projects/fusion-spreadsheets/google-fusion-685-merge-columns-default-name.png)

![img](/images/projects/fusion-spreadsheets/google-fusion-686-merge-columns-match-source.png)

![img](/images/projects/fusion-spreadsheets/google-fusion-698-merge-columns-choose.png)

![img](/images/projects/fusion-spreadsheets/google-fusion-700-merge.created.png)

When you go back to your table


### Classification of map markers


#### Buckets and thresholds and colors

![img](/images/projects/fusion-spreadsheets/google-fusion-702-map-bucket-pick-score-dropdown.png)

![img](/images/projects/fusion-spreadsheets/google-fusion-703-map-bucket-score.png)


![img](/images/projects/fusion-spreadsheets/google-fusion-705-colored-dots-by-score.png)

![img](/images/projects/fusion-spreadsheets/google-fusion-710-big-red-marker.png)


## Summarizing data with Fusion Tables

This guide is already too long so I won't give this topic the proper detail (i.e. I'm not going to even try to explain [Pivot Tables](https://support.google.com/drive/answer/1272898?hl=en).

Basically, the problem is this: we have the ideal kind of data: a flat table, with one record per row. That's a lot of detail. However, sometimes, we want to step back and see the big picture. The most common example of this is to get an **average** for the data.

In our case, the most interesting kind of average would be for the health inspection scores.

So let's try it out:

- Click on the **Rows** tab
- Click on the little down-arrow to bring up a menu
- Click summarize


![img](/images/projects/fusion-spreadsheets/google-fusion-714-dropdown-summary.png)



We basically have *three* types of restaurants: Starbucks, McDonald's, and Dunkin Donuts, and these types are reflected in their names. So we want to **summarize by Name**

And what we want to *summarize* is the `score` of their health inspections. Click `minimum`, `maximum`, and `average` checkboxes because it'd be interesting to see the best and worst scores of each company.

![img](/images/projects/fusion-spreadsheets/google-fusion-718-attempted-summary.png)


Now hit **Save** and your table will have a different view:

![img](/images/projects/fusion-spreadsheets/google-fusion-720-dirty-summary-names.png)

OK, if you think this is confusing, then you followed my steps correctly. The summary here *is* confusing, and that's because our data is just plain *messy*. We wanted to summarize by name, but our restaurants aren't named nice and neat. Instead of just `DUNKIN DONUTS`, we have: TK TK

TKIMG

The summarizer of Fusion Tables is kind of dumb. It will only match exact terms (upper and lower case is ignored though), so even though you *know* TK and TK really mean `MCDONALDS`, your state of the art computer can't make that guess for you.

So what can we do? We'll take a brief tour into the dirty world of messy data cleaning. First, we have to get our data out of Fusion Tables and back into Google Spreadsheets.


![img](/images/projects/fusion-spreadsheets/google-fusion-743-merge-oops.png)

### Export into CSV

![img](/images/projects/fusion-spreadsheets/google-fusion-745-download-csv.png)

### Import into CSV


## Data-munging with Google Spreadsheets


### Formulas with regular expressions

![img](/images/projects/fusion-spreadsheets/google-fusion-750-regex-dunkin.png)

![img](/images/projects/fusion-spreadsheets/google-fusion-751-regex-dunkin-true.png)


![img](/images/projects/fusion-spreadsheets/google-fusion-755-no-upper-oops.png)

## Map classification

Adding the icons table





[NYC-DOH: How we grade](http://www.nyc.gov/html/doh/html/services/restaurant-inspection.shtml)


[Custom marker names from Google](https://www.google.com/fusiontables/data?docid=1BDnT5U1Spyaes0Nj3DXciJKa_tuu7CzNRXWdVA#map:id=3)
