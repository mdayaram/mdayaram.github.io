---
layout: page
title: Noj - Getting better, one failure at a time.
permalink: /
js: /js/currently.js
css: /styles/index.css
---

Hello there, welcome to my site!  My name is Manoj Dayaram, and I'm probably
<span id="currently-doing"></span>
right now.

If you came here to find out what I like, well then, I like fire,
fruit parfaits, [hugs](/everybodyhurts), tea, computer science
education, [pocket watches](http://www.iwcpocketwatch.com/),
puppies, [kittens](http://www.lolcats.com),
[ponies](http://mlp.wikia.com),
top hats, monocles,
[spoons](https://medium.com/@_noj_/the-ultimate-eating-utensil-33831153972f),
half-belts, [nail art](https://www.youtube.com/watch?v=DaYfonm51Lo),
gloves, alpacas (not llamas!), [chocolate](http://www.dandelionchocolate.com/),
grilled cheese, [juggling diabolo](/images/manoj_diabolo.gif),
port, moscato,
[chartreuse](http://www.chartreuse.fr/green-chartreuse;fiche;3;uk.html),
[b&amp;b](http://www.bandbliqueur.com/), magic, and
[drawing](http://blog.noj.cc/tagged/sketch).  If you know I like
something that's not on this list, then I probably either missed
it, or I lied to you.

I will occasionally write [random musings](/blog) about life
and such whenever I get the time or have a good idea.

Unfortunately, there's not much else here, but if you'd like to find out
more about me or want to get in touch with me to tell me you like something,
completely disagree, or simply want to be vocal, you can always reach me
through these channels.

<p id="contacts">
{% for contact in site.contact-links %}
	{% if contact[1].size < 3 %}
	<a class="contact" title="{{ contact[0] }}" href="{{ contact[1][0] }}">
	{% else %}
	<a title="{{ contact[0] }}" href="{{ contact[1][0] }}" onclick="{{ contact[1][2] }}">
	{% endif %}
		<img alt="{{ contact[0] }}" src="{{ contact[1][1] }}">
	</a>
{% endfor %}
</p>

Thanks for stopping by!  Due to the nature of our meeting, we will have to
settle for virtual hugs for now, but looking forward to hug you for real
soon!

<figure>
<img title="&lt;3" alt="&lt;3" src="/images/virtual-hug.gif">
</figure>
