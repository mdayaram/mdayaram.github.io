---
layout: page
title: Stuff Happened
description: So I wrote about it.
---

Getting better, one failure at a time.

{% for cat in site.categories %}
<div class="post-list">
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
