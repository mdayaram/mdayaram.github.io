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
			<li> Post:
			{% if post.tags contains tag %}
				<a href="{{ post.url }}">{{ post.title }}</a>
			{% else %}
				{{ post.tags }} | {{ tag }}
			{% endif %}
			</li>
		{% endfor %}
	</ul>
</div>
{% endfor %}
