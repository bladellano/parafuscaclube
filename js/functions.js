$( document ).ready(function() {

	//ALTERA O FUNDO DO NAVMENU
	$(window).scroll(function(event) {
		if($(this).scrollTop() > 0){
			$('.menu').addClass('active');
		} else {
			$('.menu').fadeIn();
			$('.menu').removeClass('active');
		}
	});

	//Plugin slick
	$('.slick').slick({
		slidesToShow: 4,
		slidesToScroll: 1,
		autoplay: true,
		autoplaySpeed: 3000,
		arrows:false,
		responsive: [    
		{
			breakpoint: 768,
			settings: {
				slidesToShow: 2,
				slidesToScroll: 1,
				arrows:false

			}
		}]
	});


	//Plugin FancyBox
 	$j('a.fancy').fancybox();
		 

});