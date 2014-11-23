---
layout: null
---
var currently = [
	{% for activity in site.currently-doing %}
		"{{ activity }}",
	{% endfor %}
		""];

currently.pop();
var activity = currently[Math.floor(Math.random() * currently.length)];
var currentlySpan = document.getElementById("currently-doing");
currentlySpan.innerText = activity;
