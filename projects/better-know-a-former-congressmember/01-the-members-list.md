---
layout: project
title: The Members List
tagline:  The starting point of our Congressional data project
header_image: about-nyu-washingtonsquare.jpg
project: former-congressmembers
project_order: 1
guff: "Making lists is sometimes the hardest part of a data project. And it's usually the first and the most important part of a data project."
---

{% include auto-toc.md %}

## Getting names

Lorem ipsum dolor sit amet, consectetur adipisicing elit. Amet, dolore, illo, facilis obcaecati beatae quaerat laudantium labore illum tempore odio eos ipsa voluptas esse omnis optio aliquam minima similique ab.

- How to find Congressmember data
- How to find a former Congressmember



### The limits of Wikipedia
It's not that Wikipedia is incomplete, it's that it would take a lot of work to get what we want.


## Understanding YAML and other weird file formats

- Understanding a weird file format

### Compiling the list as a non-programmer


- How to filter Congress member data
- Creating selection criteria for each congressmember
- The power of state (last day - birthday)
- Print a straightforward spreadsheet of congressmembers

### Compiling the list as a programmer


#### Parsing the YAML
{% include_code projects/better-know-a-former-congressmember/01-01-parse-yaml.rb %}


#### Filtering by the end date of terms

{% include_code projects/better-know-a-former-congressmember/01-02-filter-by-term-end.rb %}

#### Write to CSV

{% include_code projects/better-know-a-former-congressmember/01-03-write-to-csv.rb %}


Lorem ipsum dolor sit amet, consectetur adipisicing elit. Labore, reiciendis, ex, sed officia velit accusamus placeat qui atque beatae asperiores nihil in exercitationem ducimus voluptatibus libero dolorum tempora voluptates recusandae!

### To be continued

- How do we know which of these Congressmembers are still alive?
- Where do we find another list of jobs?

