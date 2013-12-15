---
layout: project
title: Elements of the Web
tagline: Just text
header_image: high-line-theater.jpg
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

~~~ html
    <h1>small data</h1>
~~~

You recognize the words "small data" of course. The only thing that may surprise you is that the phrase is enclosed in `<h1>` and `</h1>`. That's the HTML part, and I'll refer to particular bit of code as **tags**. The letter `h` is short for "headline" and the `1` indicates that this tag for a **top-level headline**.

Notice that only "small data" and not "journalism" is in inside the `h1` tags. If you look at the site header, you'll notice that "small data" is a different font than "journalism"

Right-click on the word "Journalism"; the HTML subpanel still stays open, but some new HTML will be revealed:

~~~ html
    <h1>
      <span class="serif">Journalism</span>
    </h1>
~~~

OK, looks like "Journalism" gets its own tags. In fact, it's wrapped up in two sets of tags: `h1` and `span`. Don't worry about what `span` means, all that's worth noting is that tags can be nested: i.e. you can have tags *within* other tags.

### A quick introduction to HTML

If you already know HTML, you can skip this section. If you don't, I'm only going to cover the bare minimum needed to understand how HTML works. There are better guides out there and you're not here to learn HTML anyway.

As we saw above, HTML consists of regular text, such as "small data", wrapped up in tags, like so:

~~~ html
    <h1>small data</h1>
~~~

These `h1` tags are what tells your web browser to turn the plain text of `small data` into the attractively-rendered oversize headline. If you **right-click** on the word "<b>small</b>" just now (i.e. bolded in this here sentence), the HTML subpanel will reveal this code:

~~~ html
    <b>small</b>
~~~

You can take a guess that the `<b>` stands for **bold**.


#### Links

Let's look at the element that puts the "hyper" into "HyperText Markup Language": the **hyperlink** (or just "link", post-1990s).

Here's a [link](http://danwin.com). You're probably used to seeing them blue but I've made them purple for now (more on that later). **Inspect** the link element and you'll see this code:

~~~ html
    <a href="http://danwin.com">link</a>
~~~

If you actually click-through that link, you'll go to my homepage, **http://danwin.com**. So knowing what little we know about tags, we can infer a couple of things:

1. The `<a>` tag denotes a **link** (`a` is short for **anchor**)
2. Inside the opening `<a>` tag, there's some extra code in there: `href="http://danwin.com`. If `http://danwin.com` is the address of that link, then `href="SOME_WEB_SITE.com"` must be the syntax for defining the destination URL of the anchor link.

#### Attributes and values

We refer to the `href` found in the opening `<a>` tag as an **attribute**. Here again is the `href` attribute in context of its anchor tag:

~~~ html    
    <a href="http://example.com">Example website</a>
~~~

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

Now let's check out that **smaller subpanel to the right** of the HTML subpanel.

Right-click and inspect the **headline** just above this paragraph (*The CSS subpanel*). You should see something like this:

![CSS subpanel when inspecting the headline](/images/projects/inspect-the-web/02-300-css-panel-h2.png)

You already know what's in the **left** subpanel: the HTML of that headline:

~~~ html
  <h2 id="the-css-subpanel">The CSS subpanel</h2>
~~~

On the **right** subpanel, which you can scroll up and down separately from the left subpanel, contains the **styles** of that `h2` element. By **styles**, I'm referring to *what makes that headline look the way it does*.

Here's the subpanel with just the important parts highlighted:



![CSS subpanel when inspecting the headline](/images/projects/inspect-the-web/02-302-css-panel-h2-outline.png)



You can see that the tag name, `h2`, is referred to several times in the list of styles. Some of the syntax should be readable to you. For example:

~~~ css
    h2 {
        color: black;
    }
~~~

TKTK



### Introduction to CSS

#### Selectors

#### Attributes and values



## Exercises

**What is the color of this text**

<span class="special-sb">Use the inspector's CSS panel to find the exact shade of blue of this sentence.</span>



**Find the URL of this cat photo**

Here's a photo of a cat in Italy. Use the inspector to find its URL.

{% render_partial downloads/code/snippets/no-clicky.html %}

<div class="no-clicky">
  <img src="/images/projects/inspect-the-web/other/cat.jpg" alt="">
</div>


**Find the URL of the dog photo**

There is a dog photo somewhere on this site. Find its URL.


## Answers

**The shade of blue**

Just right-click the text and open up the **Elements** panel:

TKIMGX

The answer is: `SteelBlue`

**The cat photo**

There's a slight trick to this: I wrote some JavaScript to prevent right-clicking the image, a tactic some photo sites use to make it harder for users to make copies of photos. There's many easy ways to circumvent this. But for this example, just inspect a *nearby* element (any of the text) and look for the actual `<img>` tag:


TKIMGX

The answer is: 

    http://www.smalldatajournalism.com/images/projects/inspect-the-web/other/cat.jpg



**The dog photo**

This is kind of a trick question because the dog photo isn't referenced anywhere on this page. However, if you finished the previous exercise, you *could* logically deduce that the "dog" photo is in the same directory as the "cat" photo and just change `cat` to `dog` in the URL. Try it out.

Kind of a trivial trick, admittedly, as it's more social engineering ("maybe the lazy developer didn't bother obfuscating the name or directory") than technical prowess. You'd be surprised at the situations when it works, though. In one of my reporting projects, a company was required by law to post some financial documents online every quarter. However, the company would replace the last quarter's documents with the new quarter's, making it impossible to compare the current to the historic. I asked their public relations representative if they could follow the spirit of the law and keep all the documents online, but she responded, politely, that it wasn't their problem.

So I inspected the link tag for the current document and saw that it had something like the word `new` in its path, as in: `website.com/documents/new/quarters/data.xml`. So I simply tried out some variation of `/documents/old/quarters/data.xml` and there it was. Maybe the web developer was told that the old data files shouldn't be visible on the site and, well, he/she technically did the job here.

Note: Again, this is a trick of mostly luck; on any given server, people aren't going to be leaving their files in such obvious places. But since the inspector makes it so easy to find out what's behind a webpage, it doesn't hurt to try.


<div class="special-fer"></div>


## The basic elements

We've just had a whirlwind tour of HTML and CSS, and if it's your first time, it'll be overwhelming, *and that's OK*. Web designers and developers have spent years mastering the syntax and functionality of HTML/CSS; you're not going to suddenly understand it in one hour.

But what you *can* understand is that HTML and CSS &ndash; the two languages that define what we *see* on the Web &ndash; are ultimately *just text*. For example, to make a hyperlink around the word `website` below:

    This website is worth visiting

You simply wrap `<a>` tags around it, with an `href` attribute to endow that word, `website`, with the ability to send clickers to a different website:

~~~ html
    This <a href="http://en.wikipedia.com/wiki/Hello">website</a> is worth visiting
~~~  

And the result: 

This <a href="http://en.wikipedia.com/wiki/Hello">website</a> is worth visiting


If you want to learn more about HTML and CSS, there's a huge amount of free resources online, including at [HTMLDog](http://www.htmldog.com/guides/html/beginner/) and [Codecademy](http://www.codecademy.com/courses/html-one-o-one). But if you're just interested in knowing the basic concepts of what the Web is made of, then here's what we learned: *The elements of the Web are made up of just text.*

And if that's the case, then creating our own Web elements should be as easy as typing in text, right? 

*Yes.*

But there's no need to experiment from scratch with a text editor. The Web inspector has all we need to write and edit our own (temporary) Web pages, as we'll see in the next chapter.