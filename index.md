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
something that's not on this list, then I probably either missed
it, or I lied to you.  I usually feel really guilty about lying, so that's
unlikley.

I will occasionally write [random musings](/blog) about life
and such whenever I get the time or have a good idea.  Feel free to paruse
at your own pace.  I love hearing feedback.  Tell me all the bad things.  I want
them.  I keep them in a box and then when I'm feeling awesome I tackle them with
hugs and cuddles.  We can always chat about them over chai tea if you prefer
that though.  Let's make it happen!

If physical space prevents us from getting tea together, you can always reach me
through these other channels.

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
settle for virtual hugs for now, but looking forward to hugging you in real life
soon!

<figure id="hugs">
<img title="&lt;3" alt="&lt;3" src="">
</figure>
