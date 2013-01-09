/* Used for centering images created by markdown that are the only
 * image in a line, by default I'm gonna say I want these centered. */
(function() {

	function check_elem(elem) {
		if (elem.childNodes.length === 1
			&& elem.childNodes[0].tagName === "IMG"
			&& elem.textContent === "" ) {

			elem.childNodes[0].className += " center"
		} else if (elem.childNodes.length === 1 && elem.textContent === "") {
			check_elem(elem.childNodes[0])
		}
	}

	elems = document.getElementsByTagName("p")
	for(var i = 0; i < elems.length; i++) {
		check_elem(elems[i])
	}

})()
