
		// jQuery(function($) {
		// 	$('.fullwidth grayscale').first().scroll( function() {
		// 	if($(this)[0].scrollTop - $(this).scrollTop() == $(this).outerHeight()) {
		// 			$(this).find('.sticky-thumbset').fadeOut(400);
		// 		}
		// 	});
		// });
	
	
		$(document).ready(function(){
			// var eq = $('.thumbset').eq(1).offset().top - $('.sticky-thumbset').first().offset().top

			// if(eq < 60) {
			// 	$('.sticky-thumbset').first().fadeOut();
			// }
		});
	

	
	$(document).ready(function() {
		$('.project-nav').waypoint('sticky', {
  			offset: 1// Apply "stuck" when element 30px from top
			});
		$('.thumbset').waypoint('sticky', {
  				wrapper: '<div class="sticky-wrapper" />',
  				stuckClass: 'sticky-thumbset',
  				offset: 108
});
	});
	

	/*User Menu */
$(document).ready(function () {
	$(".tiny-profile-picture").hover(function(){
  		$(".usermenu").fadeIn(90);
	$(".usermenu").mouseleave(function() {
		$(".usermenu").fadeOut(90);
	});	
	});

});
