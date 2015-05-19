---
layout: null
---
var currently = [
	{% for activity in site.currently-doing %}
		"{{ activity }}",
	{% endfor %}
	// In order to deal with the comma, add an extra empty string item.
		""];

// remove empty string item.
currently.pop();

$(document).ready(function() {
	var activity = currently[Math.floor(Math.random() * currently.length)];
	var elem = $("#currently-doing");
	if(elem != null) {
		elem.text(activity);
	}
});
