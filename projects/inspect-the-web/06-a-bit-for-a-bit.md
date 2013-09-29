---
layout: project
title: A Bit for a Bit
tagline: You don't get something for nothing.
header_image: eye-high-line.jpg
project: inspect-the-web
project_order: 6
---

A [web data firm recently offered its secrets to the public](http://www.npr.org/blogs/alltechconsidered/2013/09/04/218889785/get-a-glimpse-of-the-data-marketers-have-about-you). By *secrets*, I mean, the secrets *you* have shared, through your web browsing,  methodically gathered by this data firm and its many brokers.

*How did they find out?*

In this final chapter of our brief acquaintance with the Web inspector, we'll take what we've learned thus far to one of its logical conclusions: If webpages &ndash; their text, images, and widgets &ndash; are an assemblage of discrete pieces. And each piece is something we send *requests* for. Then our requests themselves are a piece about who we are.


(Note: In order to take up that company on its offer, you have to tell it even more information about yourself. I don't recommend doing that. Reading [the article should give you the gist of it](http://www.npr.org/blogs/alltechconsidered/2013/09/04/218889785/get-a-glimpse-of-the-data-marketers-have-about-you).)



## Every Like we make



### A standard form


![](/images/projects/inspect-the-web/06-002-osha-form.png)

[Sample input](https://www.osha.gov/pls/imis/establishment.search?p_logger=1&establishment=food&State=NY&officetype=all&Office=all&p_case=all&p_violations_exist=yes&startmonth=09&startday=22&startyear=2008&endmonth=09&endday=22&endyear=2013)

![](/images/projects/inspect-the-web/06-005-osha-results.png)


![](/images/projects/inspect-the-web/06-007-osha-inspect-request-headers.png)

![](/images/projects/inspect-the-web/06-015-osha-inspect-request-headers-jux.png)


### AJAX Forms

Visit the [FEC Candidate and Committee Viewer](http://www.fec.gov/finance/disclosure/candcmte_info.shtml)

Enter in 'obama'

![](/images/projects/inspect-the-web/06-050-fec-committee-obama.png)


The results:

![](/images/projects/inspect-the-web/06-054-fec-committee-obama-results.png)



See the new POST request with parameter filled

![](/images/projects/inspect-the-web/06-091-fec-committee-obama-post.png)



Parameter:

  !()[06-101-fec-alaskan-women.png]

  Click on "Alaskan Women For Obama". Notice there's no hard link

  http://www.fec.gov/fecviewer/CandidateCommitteeDetail.do



### A Facebook Like


Form data like

![](/images/projects/inspect-the-web/06-240-facebook-takei-like-form-data.png)

![](/images/projects/inspect-the-web/06-250-facebook-takei-unlike-form-data.png)

http://graph.facebook.com/205344452828349

The parameters when you Like it

![](/images/projects/inspect-the-web/06-240-facebook-takei-like-form-data.png)

The parameters when you don't
![](/images/projects/inspect-the-web/06-250-facebook-takei-unlike-form-data.png)

    fbpage_id:205344452828349
    add:true
    reload:false
    fan_origin:page_timeline
    fan_source:


## Every Tweet we take




### Tweet notifications

![](/images/projects/inspect-the-web/06-305-twitter-new-tweets.png)

![](/images/projects/inspect-the-web/06-307-twitter-new-tweets-request.png)

Look at since_id
Look at interval: 30000 ms

### Chartbeat Scroll Depth

Scroll Depth: Pinpoint your
homepage’s digital fold.

See exactly where your readers are actively engaging with your stories. And where you’re losing their attention. Scroll Depth measures how far down the page your audience is reading so you can adjust your homepage content accordingly. We count pixels, so you get data.


https://chartbeat.com/privacy/




![](/images/projects/inspect-the-web/06-320-chartbeat-dashboard.png)

![](/images/projects/inspect-the-web/06-330-chartbeat-ping-x-0.png)

![](/images/projects/inspect-the-web/06-336-chartbeat-ping-x-6000.png)

![](/images/projects/inspect-the-web/06-325-chartbeat-scroll-depth.png)

### Disabling Javascript

## Knowing what we don't know

If this all seems confusing, it should be. I've only shown you half of this side, how to see what data you actually send and where it is sent?

But what happens to the data that is actually stored? For a Facebook Like, the result is obvious: your friend sees a Like (and presumably, all your other friends). But what else is in that data snippet?

And how is this information being analyzed? We don't and can't easily know. But at least we know that if you get 10 ads for something soemthing, 






