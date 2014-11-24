---
layout: page
title: Stuff Happened
description: So I wrote about it.
---

Getting better, one failure at a time.

{% for tag in site.post-tags %}
<div class="post-list">
	<h3>{{ tag | capitalize }}</h3>
	<ul>
		{% for post in site.posts %}
			{% if post.tags contains tag %}
				<li><a href="{{ post.url }}">{{ post.title }}</a></li>
			{% else %}
				<li>{{ post.tags }}</li>
			{% endif %}
		{% endfor %}
	</ul>
</div>
{% endfor %}
