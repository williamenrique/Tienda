$(function () {
  $('[data-toggle="tooltip"]').tooltip()
})

$(document).ready(function() {
	if (document.querySelector(".owl-carousel")) {
		var owl = $('.owl-carousel');
		owl.owlCarousel({
		stagePadding: 50,
		margin: 10,
		nav: false,
		loop: false,
		responsive: {
			0: {
				items: 1
			},
			600: {
				items: 1
			},
			1000: {
				items: 1
			}
		}
	})
}
})