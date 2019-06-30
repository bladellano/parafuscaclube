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
			breakpoint: 768,
			settings: {
				slidesToShow: 1,
				slidesToScroll: 1,
				arrows:false

			}
		}]
	});

	$('.slick-membros').slick({
		slidesToShow: 3,
		slidesToScroll: 1,
		autoplay: true,
		autoplaySpeed: 3000,
		arrows:true,
		centerMode: true,
		responsive: [    
		{
			breakpoint: 768,
			settings: {
				slidesToShow: 1,
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

	// Scroll suave para link interno	
	$('.menu ul li a[href^="#"]').click(function(e){
		e.preventDefault();
		var id = $(this).attr('href'),
		menuHeight = $('nav').innerHeight(),
		targetOffset = $(id).offset().top; e;
		$('html, body').animate({
			scrollTop: targetOffset - menuHeight
		}, 1200);
	});



});