---
layout: project
title: Elements of the Web
tagline: What you see isn't what you've got
header_image: about-nyu-washingtonsquare.jpg
project: inspect-the-web
project_order: 2
---

The first subpanel of the Web inspector is labeled **Elements** (at least in Chrome) and is itself divided into two subpanels dealing with the HTML and CSS of webpage, respectively.

We already know how to **view the source** of a webpage. But if you're new to HTML, that source isn't easy to actually interpret. The inspector is great for easing into the raw source code. 

{% include auto-toc.md %}



## What you see isn't what you've got

If HTML and CSS is "just text", then how does the browser turn them into the highly-visual websites we see today?

This isn't a web development lesson, so we won't concern with *how* the browser does that. But it's enough to understand that the HTML and CSS has a certain *syntax* and that syntax tells the browser what to display.

The most immediate impact of this is that there's *more in the raw HTML than what you see*. For example, here's the word "bold". And yet, it's not actually *bolded*.

Here's the word "**fluffy**" which, despite being a word associated with clouds and toilet paper, is actually *bolded*. What's the difference? Just **inspect** the words "bold" and "**fluffy**" in the source code yourself.


Here's another example:


<div style="position:relative; height: 140px; padding-left: 15%;">
  
    <p style="bottom: 30px; position:absolute;">
      This text appears on the <strong>bottom</strong>
    </p>

    <p style="top: 30px; position:absolute;">
      This text appears on the <strong>top</strong>
    </p>
    
</div>






## The HTML Panel

### Introduction to HTML

#### Tags

#### Attributes and values


## The CSS Panel

### Introduction to CSS

#### Selectors

#### Attributes and values



## Exercises

### What is the color of this text

Use the inspector's CSS panel to find the exact shade of blue of this sentence.


### Find the URL of this cat photo

Here's a photo of my roommate's cat. Use the inspector to find its URL.

TKIMG

### Find the URL of a dog photo

There is a photo of dog that is part of this lesson but it is not in the source (unless you skip ahead to the Answers section. which is cheating). Find its URL.

(This is not a trick question.)

### What is the third animal

There is a third animal associated with this lesson. Find out what it is.

(This is also not a trick question)

## Answers


### The dog picture

How can you find a dog picture that isn't visible?

Well, part of the challenge is knowing that there is a dog photo in the first place. And the other part is figuring out the address of that cat photo:

TK

### The third animal



