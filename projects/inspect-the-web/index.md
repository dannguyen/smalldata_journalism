---
layout: project
title: Inspect the Web
tagline: How to see the underpinnings of the Web
header_image: about-nyu-washingtonsquare.jpg
project: inspect-the-web
project_order: introduction
---

Data journalism isn't about the Web. So why is *small data Journalism* devoting an entire series of tutorials on the "**Web** Inspector", which sounds like a geek-themed webseries?

You're right to wonder; my purpose of creating *small data Journalism* was to create as much separation between data journalism and any specific technology or medium. And the web inspector is indeed very geek-themed, as it's what web developers use to debug webpages to figure out such esoteric, narrow questions, such as: "Why isn't my AJAX form working?" and "Why won't this headline spin around and turn red in Internet Explorer 6?"

But one of the major themes of *small data Journalism* is to **stop believing in magic**. But to non-web-developers, the Web *is* magic. You click links and buttons and photos, status updates, data graphics, and dancing babies just **show up**. 

How is that *not* magic?

## The tool is the thing

At this point, I *could* choose to write an epic layperson's guide to HTTP, HTML, CSS, data structures and such, but I'm a terrible technical writer and your eyes would glaze over by the third volume (if they haven't by now).

This is where the **web inspector** comes in. It's a tool for seing the code behind webpages. It is practically ubiquitous because it's packaged with virtually every modern desktop web browser. It was designed for savvy web developers who are used to working with code in *Matrix*-like fashion, and so it had to be designed in such an intuitive way that even hardcore web developers would leave their text-editors and command-line interfaces to play with it.

The web-inspector is a fantastic tool for web developers. And for those of us who don't want to be web developers? The web inspector is still as invaluable as a way to *understand* the Web, even at the most basic level.

### The Web is for everyone

And as the Web has become such a respository and canvas for all things data, it behooves us as data journalists to understand it at the non-magical level. So what luck that we have an interactive, point-and-click tool so universally-adopted, so easy-to-use, and so equally edifying to both beginners and experts as the Web inspector.

There are plenty of guides on aimed at web developers on how to use the Web inspector to debug and optimize their work. So I want this guide to be how *anyone* can use the inspector to explore the Web. Along the way, you'll learn some HTML, maybe what "CSS" stands for &ndash; in fact, I believe (but won't throw the gauntlet down...just yet), that a few days of working with the Web inspector will teach you far more usable knowledge about web development than any class or semester course on basic HTML.

But we'll be thinking far beyond the web. Hope you'll understand how information comes from structure, how what you see is sometimes less important than what you *don't*, how to examine the invisible and the meta, and of course, just how the *hell* did that fun website you visited yesterday track your actions.

And for those of you who care mainly about the worldly and tangible fruits of data journalism, I'll even throw in a few examples of how I used the web inspector to do real-life investigative projects.

All this with just the "Web inspector"? Let's find out...

### Prerequisites

For the purposes of this series, we'll be using Google Chrome, just because it's cross-platform and it's the easiest to use. Just kidding, it's the easiest for *me* to use because I use Chrome for debugging purposes. In any case, the other major browsers have similarly-featured web inspectors and you're welcome to use what you wish to follow along, as the Web basically works the same in all of them.


TK img text

## Just Text

A friend once asked me how long it would take to fix something on his company's website. He wanted to change the shade of blue used in the headline fonts and his IT department said it would take "a few weeks" to do.

Of course, they probably meant that it would take a "few weeks" to *get to*, in the queue of things they have to do. IT department politics &ndash; and the implications of changing site-wide design rules &ndash; aside, if the question is about the time and effort to *make* that change, the answer is: just seconds.

In other words, with the Web inspector tool, I could demonstrate what HTML/CSS code to change and what to change it to, as well as what the new headline color will look like on the site &ndash; all in a few seconds.

But the point isn't about how great the Web inspector is. The key takeaway is that my friend's webpage is *just text* and *only text*. 

That is, the code that corresponds to the actual text of the headline, the code that defines the headline, the code that defines the color of the headline, and the code that represents the desired shade of blue &ndash; all of that is represented in human-readable text. I don't need access to his company's propietary web-production software or need to care his IT department's coding practices. Once that webpage hits my web browser, all the information I need is right there, as universally interpretable as any plain text.

(Note: If you've ever wondered why programmers devote hours of their lives arguing with complete strangers on the Internet about HTML standards, appreciating what I've described above might help.)

The Web inspector is going to seem complex (because it is). And the web itself is even more complicated. But remember the overarching strategy of *small data Journalism*, keep thinking about the smallest concepts.

And the smallest concept here is that, in the end, either in the browser or in the inspector, we're basically dealing with text.




