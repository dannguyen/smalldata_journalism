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


## The HTML subpanel
The most prominent subpanel in the **Elements** panel displays the webpage's source code, i.e. its HTML code. If you right-click an element on a webpage and select **Inspect Element**, you'll the HTML subpanel will pop open to reveal that particular element.

Try it on the [homepage](/). **Right-click** on the word "small" in the title:

![Right-click on "small"](/images/projects/inspect-the-web/02-010-inspect-small-data.jpg)


Then select **Inspect Element**. This will pop-open the **Elements** panel. The **HTML subpanel** is on the left:



![Right-click on "small"](/images/projects/inspect-the-web/02-012-html-subpanel-small.jpg)

Don't worry if you don't understand the HTML code, just note that there's a <span style="color:#33d;">blue</span> highlight around what *looks* relevant to what you right-clicked:

    <h1>small data</h1>

You recognize the words "small data" of course. The only thing that may surprise you is that the phrase is enclosed in `<h1>` and `</h1>`. That's the HTML part, and I'll refer to particular bit of code as **tags**. The letter `h` is short for "headline" and the `1` indicates that this tag for a **top-level headline**.

Notice that only "small data" and not "journalism" is in inside the `h1` tags. If you look at the site header, you'll notice that "small data" is a different font than "journalism"

Right-click on the word "Journalism"; the HTML subpanel still stays open, but some new HTML will be revealed:

    <h1>
      <span class="serif">Journalism</span>
    </h1>

OK, looks like "Journalism" gets its own tags. In fact, it's wrapped up in two sets of tags: `h1` and `span`. Don't worry about what `span` means, all that's worth noting is that tags can be nested: i.e. you can have tags *within* other tags.

### A quick introduction to HTML

If you already know HTML, you can skip this section. If you don't, I'm only going to cover the bare minimum needed to understand how HTML works. There are better guides out there and you're not here to learn HTML anyway.

As we saw above, HTML consists of regular text, such as "small data", wrapped up in tags, like so:

    <h1>small data</h1>
  
These `h1` tags are what tells your web browser to turn the plain text of `small data` into the attractively-rendered oversize headline. If you **right-click** on the word "<b>small</b>" just now (i.e. bolded in this here sentence), the HTML subpanel will reveal this code:

    <b>small</b>

You can take a guess that the `<b>` stands for **bold**.


#### Links

Let's look at the element that puts the "hyper" into "HyperText Markup Language": the **hyperlink** (or just "link", post-1990s).

Here's a [link](http://danwin.com). You're probably used to seeing them blue but I've made them purple for now (more on that later). **Inspect** the link element and you'll see this code:

    <a href="http://danwin.com">link</a>

If you actually click-through that link, you'll go to my homepage, **http://danwin.com**. So knowing what little we know about tags, we can infer a couple of things:

1. The `<a>` tag denotes a **link** (`a` is short for **anchor**)
2. Inside the opening `<a>` tag, there's some extra code in there: `href="http://danwin.com`. If `http://danwin.com` is the address of that link, then `href="SOME_WEB_SITE.com"` must be the syntax for defining the destination URL of the anchor link.

#### Attributes and values

We refer to the `href` found in the opening `<a>` tag as an **attribute**. Here again is the `href` attribute in context of its anchor tag:

    <a href="http://example.com">Example website</a>


The URL, enclosed in quotation marks, is referred to as the **value** of the `href` attribute. 


#### Images

At the beginning of this lesson, I said that HTML is basically just text. If that's the case, how do websites have images?

That's a good question. Let's look at the code used to display this cat photo by right-clicking and inspecting it:

![cat on a couch](http://www.smalldatajournalism.com/images/cat.jpg)


    <img src="http://www.smalldatajournalism.com/images/cat.jpg" alt="cat on a couch">

As you can see, the code to fetch the image and display it is itself, *just text*. Try pasting the URL of the image into your browser's address bar and see where it goes.

I'll say it again: it's all *just text*. As annoyingly repetitive as that phrase is, it's good to have in mind as we examine the really complicated parts and interactions of the Web.

Short quiz time!

1. Name the **tag** used to show an image
2. Name the two attributes and their values used in the above cat photo.


**Answers**

1. The tag for an image is simply `<img>`. You'll notice there's not any closing `</img>` tag...in the HTML standard, some tags don't need to come in pairs. And it's best just to nod your head and not worry too much about it, unless you plan on becoming a web developer.

2. The two attributes are `src` and `alt`, and their values, respectively, are the photo's [URL](http://www.smalldatajournalism.com/images/cat.jpg) and the phrase `cat on a couch`. The `alt` stands for "alternative", and that is the text that non-image browsers will render if the cat URL is incorrect or for browsers that don't render images (such as screen-readers for the visually-impaired).

OK, that's all the HTML we need for now. Again, don't be intimidated by all the code that you don't know (yet), just feel comfortable with the concept of HTML, especially the part about how URLs are specified for images and links.


## The CSS subpanel

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



