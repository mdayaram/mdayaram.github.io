---
layout: post
title: Dandelion's Kauai Trip
subtitle: Visual notes from the field.
date: '2014-12-11T02:48:00-04:00'
js: /assets/js/turn.js
---

Click on the top corner to turn the page.

<div id="sketchbook">
{% for i in (1..57) %}
<div>
<img src="/assets/images/sketches/dandelion-summer/dandelion-notebook-{{ i }}.jpeg"/>
</div>
{% endfor %}
</div>

<script type="text/javascript">
$("#sketchbook").turn({
	display: 'double',
	acceleration: true,
});

</script>
