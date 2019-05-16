---
layout: page
title: Manoj Dayaram
permalink: /
js: [/assets/js/currently.js, /assets/js/hugs.js]
css: [/assets/styles/index.css]
---

Hello there, welcome to my site!  My name is Manoj Dayaram, and I'm probably
<span id="currently-doing"></span>
right now.

If you came here to find out what I like, well then, I like fire,
[fruit parfaits](http://instagram.com/p/Tdz9s5G4OU/),
[hugs](/everybodyhurts), tea, computer science,
education, [pocket watches](http://www.iwcpocketwatch.com/),
puppies, [kittens](http://www.lolcats.com),
[ponies](http://mlp.wikia.com),
top hats, monocles,
[spoons](https://medium.com/@noj/the-ultimate-eating-utensil-33831153972f),
half-belts, [nail art](https://www.youtube.com/watch?v=DaYfonm51Lo),
gloves, alpacas (not llamas!), [chocolate](http://www.dandelionchocolate.com/),
grilled cheese, [juggling diabolo](/assets/images/manoj_diabolo.gif),
port, moscato,
[chartreuse](http://www.chartreuse.fr/green-chartreuse;fiche;3;uk.html),
[b&amp;b](http://www.bandbliqueur.com/), magic, and
[drawing](/blog/#sketches).  If you know I like
something that's not on this list, it's probably because I'm too lazy to update it.

I will occasionally write [random musings](/blog) about life
and such whenever I get the time or have a good idea.  Feel free to paruse
at your own pace.

If physical space prevents us from getting tea together, you can always reach me
through these other channels.

<p id="contacts">
{% for contact in site.contact-links %}
	<a class="contact" title="{{ contact[0] }}" href="{{ contact[1][0] }}">
		<img alt="{{ contact[0] }}" src="{{ contact[1][1] }}">
	</a>
{% endfor %}
</p>

Thanks for stopping by!  Due to the nature of our meeting, we will have to
settle for virtual hugs for now!

<figure id="hugs">
<img title="&lt;3" alt="&lt;3" src="">
</figure>
