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
var elem = document.getElementById("currently-doing");
if(elem != null) {
	elem.innerText = activity;
}
