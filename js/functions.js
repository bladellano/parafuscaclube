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
		arrows:true,
		centerMode: true,
		

		responsive: [    
		{
			breakpoint: 1024,
			settings: {
				slidesToShow: 4,
				slidesToScroll: 1,
				arrows:false

			}
		},
			{
			breakpoint: 768,
			settings: {
				slidesToShow: 2,
				slidesToScroll: 1,
				arrows:false

			}
		}]
	});


	//Plugin Lightbox
	lightbox.option({
		'resizeDuration': 200,
		'wrapAround': true
	})
		 

});