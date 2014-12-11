---
layout: page
title: Stuff Happened
description: So I wrote about it.
---

Getting better, one failure at a time.

This is the place where I keep most of my things.

Once upon a time I really enjoyed drawing.  The nostalgia of those times will
ocassionally fill me with so much excitement that it'll pour
[sketches](#sketches) out of me.  Hopefully you'll find them at least a bit as
enjoyable as they were to draw.

I've also always been very fascinated with story telling.  I really love telling
and making interesting life stories, but writing fiction [stories](#stories) was never really on my
mind until recently, though I must say, once you start, it's hard to stop.
Though I do try to

Finally, like everyone else on the internet, I too have opinions about
everything, and I'm sure you are probably partly here to read about them.
I do cross post my [essays](#essays) on more popular channels, but I like having
this as a centralized space for all my things.

There's [a lot](#) of stuff here.  It's ok if you don't like something, I still
like you and would love to talk to you about it over tea and crumpets with
lemon curd...yum.

{% for cat in site.categories %}
	{% if cat[0] == "blog" %}
<div class="post-list">
	<h3>All the Things!</h3>
	{% else %}
<div class="post-list {{ cat | first }}">
	<h3>{{ cat | first | capitalize }}</h3>
	{% endif %}
	<ul>
		{% for posts in cat %}
			{% for p in posts %}
			{% if p.url %}
				<li><a href="{{ p.url }}">{{ p.title }}</a></li>
			{% endif %}
			{% endfor %}
		{% endfor %}
	</ul>
</div>
{% endfor %}
