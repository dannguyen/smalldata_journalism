---
layout: project
title: Inspect the Web
tagline: How to see the underpinnings of the Web
header_image: about-nyu-washingtonsquare.jpg
project: inspect-the-web
project_order: introduction
---

Data journalism isn't about the Web. So why am I devoting an entire series of tutorials to something called "the  **Web** inspector?" 

You're right to wonder; the Web inspector is often used by  developers to figure out very esoteric, tech-specific questions such as: "Why isn't this headline fade to red and spin around in Internet Explorer 6?"

However, the Web inspector is also an easy-to-use tool for beginners to see just how the Web *works*. And while the Web may not *be* data journalism, the Web is a common canvas for both the creation and consumption of data journalism.

Non-web-developers, however, usually experience the web as a place where you click links and buttons, and then pages, photos, status updates, data graphics, and dancing babies just **show up** &ndash; like *magic*. But one of the major themes of *small data Journalism* is to **stop believing in magic**.

## The Web inspector is for everyone

This is where the **Web inspector** comes in. It's an interactive, user-friendly tool for seeing the code behind webpages, and designed in such an intuitive way that even hardcore web developers will leave their text-editors and command-line interfaces to use it.

And for those of us who don't want to be web developers? The web inspector is still as invaluable as a way to *understand* the Web, even at the most basic level.

There are plenty of guides on aimed at web developers on how to use the Web inspector to debug and optimize their work. So I want this guide to be how *anyone* can use the inspector to explore the Web. Along the way, you'll learn some HTML, maybe what "CSS" stands for &ndash; in fact, I believe (but won't throw the gauntlet down...just yet), that a few days of working with the Web inspector will teach you far more usable knowledge about web development than any class or semester course on basic HTML.

But we'll be thinking beyond the web. Hopefully you'll understand how information comes from structure, how what you see is sometimes less important than what you *don't*, how to examine the invisible and the meta, and of course, just how the *hell* did that fun website you visited yesterday track your actions.

And for those of you who care mainly about the worldly and tangible fruits of data journalism, I'll even throw in a few examples of how I used the web inspector to do real-life investigative projects.

All this with just the "Web inspector"? Let's find out...

### Prerequisites

For the purposes of this series, we'll be using [Google Chrome](https://www.google.com/intl/en/chrome/browser/), just because it's cross-platform and it's fairly easy to use. The other major browsers have similarly-featured web inspectors and you're welcome to use what you wish to follow along, as the Web basically works the same in all of them.

Also, you'll need to do this with a standard desktop or laptop computer. The Web inspector wasn't designed for mobile devices and tablets.


TK img text

## Just Text

A friend once asked me how long it would take to fix something on his company's website. He wanted to change the shade of blue used in the headline fonts and his IT department said it would take "a few weeks" to do.

Of course, they probably meant that it would take a "few weeks" to *get to*, in the queue of things they have to do. IT department politics &ndash; and the implications of changing site-wide design rules &ndash; aside, if the question is about the time and effort to *make* that change, the answer is: just seconds.

In other words, with the Web inspector tool, I could demonstrate what HTML/CSS code to change and what to change it to, as well as what the new headline color will look like on the site &ndash; all in a few seconds.

But the point isn't about how great the Web inspector is. The key takeaway is that my friend's webpage is *just text* and *only text*. 

That is, the code that corresponds to the actual text of the headline, the code that defines the headline, the code that defines the color of the headline, and the code that represents the desired shade of blue &ndash; all of that is represented in human-readable text. I don't need access to his company's propietary web-production software or need to care his IT department's coding practices. Once that webpage hits my web browser, all the information I need is right there, as universally interpretable as any plain text.

The Web inspector is going to seem complex (because it is). And the World Wide Web itself is even more complicated. But remember the overarching strategy of *small data Journalism*, keep thinking about the smallest concepts.

And the smallest concept here is that, in the end, either in the browser or in the inspector, we're basically dealing with text.




