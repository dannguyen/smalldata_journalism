---
layout: project
title: Meet the Web Inspector
tagline: How to find and activate the Web inspector
header_image: about-nyu-washingtonsquare.jpg
project: inspect-the-web
project_order: 1
---


The Web inspector is built into nearly every major browser, with only slight variations in labels and functionality. I'll be using [Google's Chrome browser](http://www.google.com/chrome), which is cross-platform and can be [downloaded here](http://www.google.com/chrome).

I'll also sometimes refer to menu items and shortcut keys by their **Mac OS X** shortcuts and labels, but nothing here is operating-system specific. For example, to do a **Find** on a webpage, the Mac key shortcut is: **Command-F**. For Windows, it's **Ctrl-F**.

{% include auto-toc.md %}


## Browser basics

Those of you who find this section amusingly pedantic have obviously never tried teaching an Internet-related class to a general audience &ndash; you should skip ahead.

### Find something 

Dan Russell, a Google search anthropologist, [famously revealed that 90 percent of users](http://www.theatlantic.com/technology/archive/2011/08/crazy-90-percent-of-people-dont-know-how-to-use-ctrl-f/243840/) don't know how to use their browser's **Find** command. 

Let's make sure we're on the same page here. The **Find** command can be executed by going to the **menu bar**, and going to the **Find** item, which itself reveals a submenu with the **Find...** command.

TKIMGX

You should instead memorize the keyboard shortcut for this. On the Mac and PC, it is **Command-F** and **Ctrl-F**, respectively.

In Chrome, this pops up a little search bar in the **top right** of your screen. When you type in a word, Chrome will highlight any instances of it on the page:

TKIMGX

To practice, on this very page that you're reading right now, search for the phrase **hot dog**. There should be **two** instances of that phrase.

### Save the page
On any webpage, you can save it as a file to your hard drive by going to menubar and selecting **File &raquo; Save As...**. This pops open a standard file saving dialog, and you have two options:

1. Webpage, HTML Only &ndash; saves the current webpage as a single text HTML file
2. Webpage, Complete &ndash; save the current webpage's HTML and a separate folder of all the external files it uses.

TKIMGX

Save this current lesson page with the **Webpage, Complete** option. Check it out in the your downloads folder:


Interesting...the webpage for this lesson consists of not just a single webpage file, but several other types of files, including images. This is **a very basic but key concept** to have in mind when thinking about the Web.

### Right-clicking

Ah...The number of times I've led a class with at least one Mac user who raises their hand and asked, "What's a *right*-click?"

If you're on a standard PC mouse, right-clicking involves the right-mouse button, obviously. On a default Mac trackpad, you can right-click by tapping the trackpad with **two-fingers**.

If all else fails, you can hold down the **Ctrl** while doing your standard kind of click.

The key takeaway is that right-clicking in most applications, including web browsers, will bring up a context menu with additional options.

Click the word **clicking** in the headline **Right-clicking** above. The word **clicking** will probably be highlighted, and a context-menu should pop up with some new options, such as **Copy** and **Print...**


### View the source

If you downloaded the current webpage as per the instructions above, there should be an HTML file named TK. Open it up in a text-editor. You should see something like this:

TKIMG

OK, that's a bunch of HTML code, and likely indecipherable to you (for now). Go ahead and close that HTML file and in your browser's menubar, go to **View &raquo; Developer &raquo; View Source**.

(You can also right-click on the page and the context-menu should bring up a **View Source** option.)

This will pop open a new window showing the HTML code for this page. In other words, you can view the raw HTML code for a webpage without first downloading it.

As we'll learn later, *everytime* you visit a website, you **are automatically downloading the webpage**. But what's important now is that you can easily access the source of any given webpage.

One last exercise: View the source of this current webpage and do a **Find** again for the words "hot dog". Again, you should see it **twice**, but it'll be wrapped up in HTML code:

TKIMG

We'll figure out what that HTML means in the next lesson.

### The URL in the address bar

All right, this is really getting to basics, but browsers have changed so much across the different platforms that, by the time you read this, Chrome and its peers may not have a visible-by-default address bar.

So just to be safe, when I refer to the **address bar**, I mean the place at the top of the browser in which you can enter a website's address, such as [www.wikipedia.org](http://www.wikipedia.org)

![wikipedia.org in the address bar](/images/projects/inspect-the-web/01-040-url-address-wikipedia.png)

The technical term for a web address is **URL**, short for, "[universal resource locator](http://en.wikipedia.org/wiki/Uniform_resource_locator)". It's the unique string of characters that you can bookmark or write down to get to that resource, from any computer on the Internet (ideally, before hackers and censorsing authorities get involved).

Most URLs we'll look at will be the addresses for website, such as [www.google.com](http://www.google.com) and [yahoo.com](http://yahoo.com). But URLs can go to other kind of objects, such as images.

Here's the URL for a cat photo on this website (smalldatajournalism.com):

[http://www.smalldatajournalism.com/images/cat.jpg](http://www.smalldatajournalism.com/images/cat.jpg)

If you click on it, your browser will take you straight to the image (though some browsers may actually download the photo as a file). It *looks* like a webpage, but that's only because it's a photo that's being viewed through your web browser (which can read many different kind of files besides HTML files, as we'll see later).


## Inspector basics


### Activating the inspector

OK, let's open up the Web inspector. The easiest way to jump into it is to **right-click** to open up the context-menu and select **Inspect  Element**.

On the New York Times homepage:

![](nytimes-right-click.jpg)

After selecting **Inspect Element**, you'll see the Web inspector pop up in the bottom half of your browser:


![](nytimes-inspector.jpg)

Move your mouse around the HTML code in the Inspector panel. Notice how elements on the webpage will become highlighted as you move your mouse around the inspected code. The inspector is showing you which HTML element is associated with which webpage element.

This is the **Elements subpanel** of the Web inspector, which we cover in detail in the next lesson. For now, we'll just acquaint ourselves with a few of the inspector's navigational conventions.

### Find 

First, click somewhere on the panel

Hitting Ctrl-F (or Cmd-F) while the Web inspector is the "active" panel (i.e. you've just clicked on it) will open up the text-finding dialog that you saw before, except within the context of the inspector panel. This allows you to search for text and terms within the raw code (as opposed to what's displayed normally on the webpage)

### The menubar

The inspector has its own menubar. You'll see terms such as **Elements**, **Resources**, **Network**, and so forth:

TKIMG

For the purpose of this lesson, we'll only be working with the **Elements** and **Network** panels. Use the menubar to switch between them.


### Pop out

Spot this icon in the lower-left of the Inspector panel:

TKIMG

Clicking it will pop out the Web inspector into its own window. This is nice if you have an extra-large or extra monitor:

TKIMG


