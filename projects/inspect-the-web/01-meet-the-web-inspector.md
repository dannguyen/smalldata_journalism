---
layout: project
title: Meet the Web Inspector
tagline: How to find and activate the Web inspector
header_image: about-nyu-washingtonsquare.jpg
project: inspect-the-web
project_order: 1
---

{% include auto-toc.md %}

The Web inspector is built into nearly every major browser, with only slight variations in labels and functionality. I'll be using [Google's Chrome browser](http://www.google.com/chrome), which is cross-platform and can be [downloaded here](http://www.google.com/chrome).

I'll also sometimes refer to menu items and shortcut keys by their **Mac OS X** shortcuts and labels, but nothing here is operating-system specific. For example, to do a **Find** on a webpage, the Mac key shortcut is: **Command-F**. For Windows, it's **Ctrl-F**.

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

One last exercise: View the source of this current webpage and do a **Find** again for the words "hot dog". Again, you should see it twice, but it'll be wrapped up in HTML:

TKIMG


## Opening the inspector

OK, let's open up the inspector. The easiest way to jump into it is to **right-click** to open up the context-menu and select **Inspect  Element**.

Try it on the headline above:

TKIMG

By default, a new subpanel at the bottom of your browser should open up:

TKIMG

The left-side of that panel should look familiar: it's the source code of this webpage. And if you clicked the headline, **Opening the inspector**, you'll see it highlighted.

This is the **Elements subpanel** of the Web inspector, which we cover in detail in the next lesson. For now, we'll just acquaint ourselves with a few of its navigational conventions.


## Basic navigation

### Find 
### The submenu panels
### Pop out


## Exercises
- inspect an element
- view the source
