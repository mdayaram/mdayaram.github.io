---
layout: null
---

$(document).ready(function() {
		var $active, $content, $links = $(".tab");
		$active = $($links.filter('[href="'+location.hash+'"]')[0] || links[links.length - 1]);
		$active.addClass('active');
		$content = $($active[0].hash);

		$links.each(function() {
			$(this.hash).hide();
		});
		$content.show();

	$('.tab').each(function() {
		$(this).on('click', function(e){
			$active.removeClass('active');
			$content.hide();
			$active = $(this);
			$content = $(this.hash);
			$active.addClass('active');
			$content.show();
		});
	});
});

