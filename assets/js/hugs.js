---
layout: null
---
var hug_images = [
	{% for img_url in site.hug-images %}
		"{{ img_url }}",
	{% endfor %}
	// In order to deal with the comma, add an extra empty string item.
		""];

// remove empty string item.
hug_images.pop();

$(document).ready(function() {
	var hug_img = hug_images[Math.floor(Math.random() * hug_images.length)];
	var elem = $("#hugs > img");
	if(elem != null) {
		elem.attr("src", hug_img);
	}
});
