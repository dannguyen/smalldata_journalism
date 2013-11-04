---
layout: page
title: Take-home Final, Fall 2013
header_image: about-nyu-washingtonsquare.jpg
---

The final consists of three sections of questions that can be answered with short answers. Each section is worth 10 points. You can turn [in the answers in to me by email](mailto:dcn1@nyu.edu).  

The final is due on **Monday, November 4**


## Analysis

Correlation does not equal causation. In each of the (fictional) examples below, a plausible assertion is made **in bold**. However, each of these claims are suspect.

**For each of these claims**, either describe a flaw in the statistical reasoning, or describe at least one *additional* source information you would need to verify the claim. 

**Example assertion:** 

In the city of Springfield, hospitals devote an average of 6% of their operating budgets on their cardiac surgery departments. Springfield Municipal, however, devotes 15% of its budget to cardiac surgery.

Yet despite the increased funding, Springfield Municipal averages 7 deaths per 1,000 open-heart surgeries, compared to a rate of 2.3 among other Springfield hospitals. **Clearly, Springfield Municipal is misspending its cardiac funds.**

**Example answers**

1. Just because Springfield Municipal is spending more than twice of its budget *proportionally* on heart surgery doesn't mean that it is spending *more* money overall. If its budget is $10 million, 15% of that is $1.5 million. However, if the average hospital has a budget of $100 million and thus spends $6 million on cardiac surgery, then the average hospital actually spends 4 times as much as Springfield Municipal in absolute terms.
2. The mortality rate says nothing about the health of the patients that Springfield Municipal sees. If Municipal is considered to have the best cardiac surgery team in the city, then it may also be the hospital in which highest risk cardiac patients are sent. Therefore, we need to know the expected mortality rate of cardiac patients for each hospital in order to make an apples-to-apples comparison.


**Now respond to the following assertions:**
---------------------

1. For every 100,000 people, at least 48 die annually from knife-related accidents. In comparison, only 0.5 deaths per 100,000 people can be attributed to hand grenades. **Therefore, hand grenades are nearly 100 times safer than knives.**
2. In a random sampling of deaths among 18 to 40-year olds who consumed an average of 3 alcoholic beverages a week, nearly 35 percent of the deaths were alcohol-related, e.g. accidents and liver disease. However, in a sampling of deaths among 80 to 100-year olds who consumed at least 5 alcoholic beverages a week, only 20 percent of the deaths were alcohol-related. **Therefore, we can conclude that drinking more alcohol will reduce your chances of having an alcohol-related death.**
3. When a movie franchise has *at least one sequel*, the franchise *averages* $25 million more in revenue **per movie** than the average individual movie. **Therefore, given an original screenplay, a movie studio should prepare to film a sequel as soon as possible, in order to maximize revenue**. 
4. From the year 2008 to 2012, SAT scores among Springfield High seniors jumped 38%. Shelbyville High seniors, however, had a 1% drop in overall SAT scores. **Therefore, we can conclude that Springfield High graduates will have a better chance of going to a prestigious college.** 
5. In the year 2000, the suburb Deerfield had a deer population that averaged 2.4 per acre. In that year, there were only 3,800 concealed-carry firearm permits on file for Deerfield residents. In 2010, however, the deer population fell to an average of 0.6 an acre, whereas concealed-carry firearm permits increased to more than 40,000. **From this, we can conclude that Deerfield gun ownership is to blame for the decrease in deer population.**
 


## Data Mashing

Below are the table structures (and some example data) from two sources of information: the city restaurant inspections department and 311 reports. Pretend that the tables all include thousands of rows instead of just the few example rows I've listed.


#### Restaurant inspections



**Restaurant listings**

<table class="table table-striped table-bordered"><thead><tr><th>Name</th><th>Address</th><th>Zip</th><th>Category</th></tr></thead><tbody><tr><td>Bob's Burgers</td><td>98 Broadway</td><td>10004</td><td>Burgers</td></tr><tr><td>Big Kahuna Pizza</td><td>1200 6th Ave</td><td>11412</td><td>Pizza</td></tr></tbody></table>

**Inspection reports**

<table class="table table-striped table-bordered"><thead><tr><th>Inspection date</th><th>Restaurant name</th><th>Health grade</th></tr></thead><tbody><tr><td>10/14/10</td><td>Bob's Burgers</td><td>B</td></tr><tr><td>8/3/10</td><td>Baconland</td><td>C</td></tr></tbody></table>

**Violations noted**

<table class="table table-striped table-bordered"><thead><tr><th>Violation type</th><th>Inspection date</th><th>Restaurant name</th></tr></thead><tbody><tr><td>Unwashed utensils</td><td>8/3/10</td><td>Baconland</td></tr><tr><td>Rodent droppings</td><td>8/3/10</td><td>Baconland</td></tr><tr><td>Refrigerator not cold enough</td><td>10/14/10</td><td>Bob's Burgers</td></tr></tbody></table>


#### 311 Calls that involved rodent sightings

<table class="table table-striped table-bordered"><thead><tr><th>Intersection</th><th>Call Date</th><th>Rats sighted</th><th>Lat</th><th>Long</th></tr></thead><tbody><tr><td>3rd Ave and 14th Street</td><td>5/2/12</td><td>5</td><td>-37.28237</td><td>83.1234</td></tr><tr><td>Broadway and Jane St.</td><td>3/3/12</td><td>2</td><td>-37.10293</td><td>85.12392139</td></tr></tbody></table>



**Explain the steps you would take to merge the four tables to see if there's a correlation between rat sightings and rodent-related violations noted by restaurant inspectors.**

In other words, I want to know: "Is the number of 311 rat sightings a good indicator of whether nearby restaurants will have a high number of rodent-related health violations?"

How do I get a dataset that would help answer that question?

**Hint:** In the case where you don't have an exact foreign key to use between tables, assume that you're able to also derive geographical coordinates through some third-party program and that you can link datasets by how close they are to a given set of coordinates.

Here's one of the steps:

> In both the violations and inspections tables, create a new field that consists of the **inspection date** and **restaurant name** concatenated together. Then **merge** the inspections and violations table on that new field.


**Now describe the rest of the steps.**


## Visualization

I want to create a visualization so that New York educators can more easily determine which schools need the most help in SAT Math prep.

So I've created two maps. The first shows absolute SAT Math scores for each school in 2010:

![image](/images/class/2013-10-28/SAT-2010.jpg)


The second map shows Math SAT scores in 2012:

![image](/images/class/2013-10-28/SAT-2012.jpg)





You can see the interactive versions of the maps in these links: [2010](https://www.google.com/fusiontables/DataSource?docid=104fGFiIH8MgjgQ41FhfYiuBOSv3c2uGtSM_eZZ4#map:id=5) and [2012](https://www.google.com/fusiontables/DataSource?docid=104fGFiIH8MgjgQ41FhfYiuBOSv3c2uGtSM_eZZ4#map:id=6)



1. Describe how these maps might make the data *harder* to comprehend.
2. Propose a different visualization that would more effectively make my point.
3. If this data *must* be shown as a map, how can its visualization styles be changed to at least make it less confusing?



-----

That's all. [Email me](mailto:dcn1@nyu.edu) if you have any questions. The final is due to me (by email) on **Monday, November 4**. 




