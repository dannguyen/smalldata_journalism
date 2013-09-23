---
layout: project
title: The Network Panel
tagline: See the traffic of the Internet
header_image: about-nyu-washingtonsquare.jpg
project: inspect-the-web
project_order: 4
---

In the last chapter, we saw how websites are conclusively delivering files to our computers. It's not as if we open our browsers and we have a "window" to a web page; we have a real copy of the files that make up that web page and we can modify and read them as we like.

So how can we find out exactly what we're downloading? Well, we can always view the source and check the HTML for references to external files:

![Image](/images/projects/inspect-the-web/04-001-external-file-references.png)

However, that presents a few problems:

1. It's a pain in the ass to read source code.
2. The HTML isn't the *only* place where external files are referenced. For example, a CSS file may be used to define a `background-image`, so you'd have to search through the source of all the HTML's external files, too.
3. Even after a webpage is fully downloaded, it may contain code that triggers new downloads to a page. Think of the "(infinite scroll)[TK]" effect used at sites like Facebook and Pinterest.

Fortunately, the web inspector has something devoted to this: **The Network Panel**

## Activating the Network Panel

First, **close the Web inspector** (or open a brand new browser window *without* the inspector open). Visit [www.smalldatajournalism.com](http://www.smalldatajournalism.com) again. 

Now re-activate the Web inspector with the way we're used to doing it: by inspecting an element on the page. The **Elements** panel will activate. But you should be able to see the names of all the *inactive* inspector panels, including **Network**:

![Image](/images/projects/inspect-the-web/04-004-elements-to-network-panel.png)

Click on **Network** and you should see an empty panel and a  message at the bottom that says:

  No requests captured. Reload the page to see detailed information on the network activity.


![Image](/images/projects/inspect-the-web/04-008-empty-network-panel.png)


Apparently nothing is visible because the inspector wasn't open when you visited (and then downloaded) [www.smalldatajournalism.com](http://www.smalldatajournalism.com).

Now, **reload** the webpage with the **Network** panel *still* active. Now you'll see some action:

![Image](/images/projects/inspect-the-web/04-015-active-network-panel.png)

### Reload for real-time traffic

Before we look at the contents of the **Network** panel, I want to emphasize an important operational detail: while the **Elements** panel lets us examine and manipulate the HTML and CSS we've downloaded, the **Network** panel is a display of **real-time traffic** between your browser and the Internet. 

**Downloading** HTML, CSS, and other files is a form of *traffic*. So if the Web inspector isn't open while that traffic is taking place, then its **Network** panel will be empty.

So if you forget to have your inspector open before visiting a page, all you have to do is open the inspector and then **reload** the page, and the file transfers will be visible in the **Network** panel (even if the Network panel itself isn't active).

#### Hard reload

If you visit a web page that you've visited before, your browser will often stash files &ndash; such as images and code files &ndash; onto your hard drive so that when you revisit the page, you don't have to re-download those files.

This is a pretty useful feature to have, and you can see how (and when) it works with the Network panel. However, it can be confusing while we *are learning* about the Network panel and the traffic it sees.

To make sure you see roughly the same things I see in this chapter, do a **hard reload** when you reload a page. This can be done by holding down the **Shift** key while hitting the **Reload** button on the browser.

The keyboard shortcut for Chrome on Mac is to hit **Cmd-Shift-R**. For Chrome on Windows, do **Ctrl-F5**.


### Navigating between the views

The Network panel has two subpanels: **Table** and **Detail**. 

The **tabular subpanel** is what you see by default:

![Image](/images/projects/inspect-the-web/04-030-tabular-subpanel.png)

The **detailed subpanel** is what you'll see if you **click** on any of the filenames in the lefthand side of the table:

![Image](/images/projects/inspect-the-web/04-035-detail-subpanel.png)

Note that this the **detailed subpanel** has its *own* subpanels, with **Headers** activated by default. 

For this chapter, we'll be looking at the **Table** subpanel and will cover the **Detail** subpanel in the next.

However, if you find yourself in the **Detail** view accidentally, click on the little `x` at the top to return to the **Table** view:

![Image](/images/projects/inspect-the-web/04-037-close-detail-subpanel.png)


OK, so make sure you're in the **Table** view before moving forward.
 



## The Network Table 

Each entry in the table is a **file** that has been downloaded (or *sent*, as we'll see in the next lessons) from the Internet onto your computer. Besides the name of each file, the Network panel also tells us:

- The **type** of the file (HTML, CSS, images, movies, data)
- The **size** of the file
- **When** and how **long** it took to download the file
- **Where** the file came from
- And **what** triggered the file download.

The table has (at the time of writing) 8 columns and at any time you can resize the columns by clicking near their borders and dragging.

Let's start with the left-most column: **Name** and **Path**


![Image](/images/projects/inspect-the-web/04-045-overview-name-highlight.png)

### Name and path


By default, the Network table lists the files in chronological order. The very first file is simply named `www.smalldatajournalism.com` and, as you might guess, it's the HTML for for the webpage we directed our browsers to.

The next few files (if you did a **hard reload**) will be files that are necessary for the the styling of `www.smalldatajournalism.com`, such as the external fonts I use and the CSS files. 

This makes sense if we look at the source HTML: those files are called at the very top of the HTML:

![Image](/images/projects/inspect-the-web/04-050-source-code-top.png)


You'll notice that each file entry actually has *two* lines. The first line is the purported name of the file, such as `www.smalldatajournalism.com`. But the second line is *where the file came from*.

Now you might assume that every thing that makes up the `www.smalldatajournalism.com` homepage comes from, well, wherever `www.smalldatajournalism.com` is hosted. But in the Network panel, you should see a few entries in which the *second lines* refer to *other* sites. I've highlighted them in the image below:

![Image](/images/projects/inspect-the-web/04-060-names-with-paths.png)


With my mouse pointer, I've hovered over the `widget.js` file, which brings up a pop-up balloon:

![Image](/images/projects/inspect-the-web/04-062-hover-widget.png)


That pop-up balloon shows the file's *absolute* location, i.e. its URL: `http://platform.twitter.com/widgets.js`

So it looks like the `www.smalldatajournalism.com` homepage is pulling in files from other sites. In fact, if you look down the file list, you should see at least a couple more files that come from `platform.twitter.com` named `tweet_button`:

![Image](/images/projects/inspect-the-web/04-070-widgets-name-discovery.png)

### Initiator

Well, I wrote all the HTML for the `www.smalldatajournalism.com` homepage, and I do remember making a call to `platform.twitter.com/widgets.js`. Here it is in the source code:

(This is a JavaScript snippet inside some HTML. Don't worry about understanding it, just note the existence of `//platform.twitter.com/widgets.js`)

    <script type="text/javascript">
      (function(){
        var twitterWidgets = document.createElement('script');
        twitterWidgets.type = 'text/javascript';
        twitterWidgets.async = true;
        twitterWidgets.src = '//platform.twitter.com/widgets.js';
        document.getElementsByTagName('head')[0].appendChild(twitterWidgets);
      })();
    </script>



But I *know* I didn't include a reference to any file named `tweet_button`. You can verify this for yourself by searching all my HTML source code (but you might as well take my word for it).

And yet, the network panel makes reference to a file named: `platform.twitter.com/widgets/tweet_button.1379634856.html` (it may be named slightly differently for you), so what's going on?

Let's turn our attention toward the **right-half** of the table, to the column named: **Initiator**.

![Image](/images/projects/inspect-the-web/04-074-widgets-name-initiator-highlight.png)

This column tells us what line of code told the browser to download a given file. Look at the Initiator for the file named `widgets.js`. It should say that it came from `www.smalldatajournalism.com`, just as I told you (the numbers at the end of the URL, e.g. `:94`, tell you want the line number of the code was, but we don't need that detail right now).

So look at the Initiator for the file named `tweet_button`: you'll see that the **Initiator** is: `widgets.js`

Aha! So *this* is the chain of events:

1. My HTML code refers to `platform.twitter.com/widgets.js`
2. That loaded `widgets.js` from `platform.twitter.com`
3. The `widgets.js` file apparently makes a reference to a file named `platform.twitter.com/widgets/tweet_button.1379634856.html`
4. The `widgets.js` file then downloads that `tweet_button` to my webpage.

If you look in the footer of my website, you should see a little Twitter widget that looks something like this (unless my design changed drastically since I wrote this lesson):

![Image](/images/projects/inspect-the-web/04-078-tweet-button-footer.png)




### File type

Now turn your attention to the column to the right of **Initiator**: its name is **Type**.

As we know by now, web pages consist of many different types of files. Usually, the filename's extension &ndash; e.g. `css` &ndash; indicates what kind of file it is &ndash; e.g. `text/css` &ndash; but *not always*. And reading filename extensions is a pain anyway.

The **Type** column makes it easy to see the file types at a glance:

![Image](/images/projects/inspect-the-web/04-100-file-column.png)


Try clicking on the column header &ndash; i.e. **Type**. This will sort the files by **type**, as opposed to the default chronological download order (you can sort by any column). Clicking on the **Type** header once should group the files by type, with `application/javascript` files at top:

![Image](/images/projects/inspect-the-web/04-110-file-column-sorted.png) 

Clicking again will sort the types in reverse-alphabetical order:

![Image](/images/projects/inspect-the-web/04-115-file-column-reverse-sorted.png)


#### Filtering by file type

Sometimes we only care about a certain file type, such as images. The Web inspector has a handy feature for filtering the list of files (which can be quite long on many websites) for a single type.

Look at the very bottom of the inspector window. There should be a list of terms, and one of them, `All`, should already be selected:


![Image](/images/projects/inspect-the-web/04-125-all-filter.png)

Click on `Images` and the list will show only image files:

![Image](/images/projects/inspect-the-web/04-130-images-filter.png)

Click `All` again to see the entire list of web files again.


### Time and Size


The next two columns on the right are **Time** and **Size**, and they display, respectively, the number of milliseconds for the file to download and how big it was:

In the example above, the HTML file (but not its external files) for `www.smalldatajournalism.com` took roughly 71 milliseconds to get from wherever it exists on the Internet to being loaded into my browser. Not bad!

Both the Time and Size columns have a secondary number &ndash; **Content** and **Latency**, respectively &ndash; that offer more granular detail. But we don't need to worry about those numbers now.

The rightmost column is the **Timeline** and serves as a visualization of when each file was successfully retrieved by the browser.

The *speed* of transfer isn't a big deal for us in this lesson. However, how **big** the file is and **when** it was downloaded will be very useful for our purposes.


-------

That's it for now. In the next chapter, we'll learn how to examine the files in detail from the network panel.

## Exercises 


**Find the third animal**

In a [previous chapter](/projects/inspect-the-web/02-elements-of-the-web/), we found a cat and a dog photo. There's a *third* animal photo in that chapter. Try to use the Network panel to find it.

**Download an online video**

Technically, when you watch a video on an online service, your browser is downloading the video data. So logically, there should be a URL that you can point your browser to. Use the Network panel to find the URL to the video below:

<link href="http://vjs.zencdn.net/4.1/video-js.css" rel="stylesheet">
<script src="http://vjs.zencdn.net/4.1/video.js"></script>

<video id="example_video_1" class="video-js vjs-default-skin"
  controls preload="auto" width="640" height="400"
  data-setup='{"example_option":true}'>
 <source src="/downloads/files/projects/inspect-the-web/rain-room.mp4" type="video/mp4" />
</video>


## Answers

**The third animal:** Filter the Network panel by the **Images** file type. The [third animal photo should stick out](/images/projects/inspect-the-web/other/ferret.jpg).

**The video URL:** As you might guess, the video file will be the largest file on this page. So sort the Network table by file size and the video URL should rise to the top. 

![The video size](/images/projects/inspect-the-web/04-180-video-size.png)

