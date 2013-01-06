function Slider( container ) {
	this.container = container;

	this.imgs = this.container.find('img');
	this.imgWidth = this.imgs[0].width; // 600
	this.imgsLen = this.imgs.length;

	this.current = 0;
}

Slider.prototype.transition = function( coords ) {
	this.container.animate({
		'margin-left': coords || -( this.current * this.imgWidth )
	});
};

Slider.prototype.setCurrent = function() {
	this.current =  (this.current + 1) % this.imgsLen;
	return this.current;
};


$(document).ready(function() {
	var container = $('#profile').find('ul');
	var slider = new Slider( container );

	window.setInterval(function() {
		slider.setCurrent();
		slider.transition();
	}, 3000);
});

