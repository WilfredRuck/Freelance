$(document).ready(function(){
	
	$(window).load(function() {
    // Animate loader off screen
    $(".load").fadeOut("slow");;
  });

	$('a').mouseenter(function(){
		$(this).css("color", "#EC1A53");

	});

	$('a').mouseleave(function(){
		$(this).css("color", "white");
	});
});