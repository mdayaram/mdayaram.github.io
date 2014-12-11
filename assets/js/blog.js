---
layout: null
---

function toggle(event) {
	var hash = window.location.hash.substr(1) || "blog";
	if (event && event.target) {
		hash = event.target.hash.substr(1);
	}
	var categories = document.getElementsByClassName("post-list");
	for (var i = 0; i < categories.length; i++) {
		if (categories[i].classList.contains(hash)) {
			categories[i].style.display="inherit";
		} else {
			categories[i].style.display="none";
		}
	}
}

window.onload = function {
var petes = document.getElementsByTagName("p");
for (var i = 0; i < petes.length; i++) {
	var amies = petes[i].getElementsByTagName("a");
	for (var j = 0; j < amies.length; j++) {
		if (amies[j].hash.substr(1).length > 0) {
			amies[j].addEventListener("click", toggle, false);
		}
	}
}

toggle();
}
