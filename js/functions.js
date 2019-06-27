$(function(){


	$(window).scroll(function(event) {
		if($(this).scrollTop() > 0){
			// $('.topo').fadeIn();
			console.log('entrou..')
			// $('.menu').fadeOut();
			$('.menu').addClass('active');
		} else {
			// $('.topo').fadeOut();
			console.log('saiu..')
			$('.menu').fadeIn();
			$('.menu').removeClass('active');
		}
	});

});