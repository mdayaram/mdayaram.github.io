---
layout: page
title: Stuff Happened
description: So I wrote about it.
js: /assets/js/blog.js
---

Getting better, one failure at a time.

This is the place where I keep most of my things.  Sometimes I draw
<a class="tab" href="#sketches">sketches</a>, sometimes I write
<a class="tab" href="#essays">essays</a>, and sometimes I may
even write a few short <a href="#stories" class="tab">stories</a>.

There's <a class="tab" href="#blog">a lot</a> of stuff here.  I imagine you
probably will not like everything, but hopefully you can find something that you
enjoyed, perhaps even alongside some earthy golden black spiral tea and crumpets
with lemon curd...hmmmm....yum.

<div class="post-panel">
{% for cat in site.categories %}
<div class="post-list" id="{{ cat | first }}">
	{% if cat[0] == "blog" %}
	<h3>All the Things!</h3>
	{% else %}
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
</div>
