$(document).ready(function() {
        
 
	//Altera o fundo do navmenu
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
		menuHeight = $('nav').innerHeight();


		var url = window.location.href.split('/');
		url.pop();
		if(typeof $(id).offset()  == 'undefined'){
			urlAtual = url.join('/')+"/"+id;
			location.replace(urlAtual);
			return false;
		}

		targetOffset = $(id).offset().top; 
		$('html, body').animate({
			scrollTop: targetOffset - menuHeight
		}, 1200);
	});

	//Botão subir p/ topo
	$('.topo').hide();
	$(window).scroll(function(event) {
		if($(this).scrollTop() > 0){
			$('.topo').fadeIn();
		} else {
			$('.topo').fadeOut();
		}
	});

	// Scroll suave para o topo
	$('.topo').click(function(e){
		e.preventDefault();
		$('html, body').animate({
			scrollTop: 0
		}, 500)
	});


$('button[type=button][class="ui-dialog-titlebar-close"]').append("<i class=\"fas fa-times\"></i>"); // Adiciona um 'x'

});


function viewNoticia(id, tipo = 'Notícia'){

 	$.ajax({
		url: 'admin/buscar-noticia.php',
		type: 'POST',
		dataType: 'html',
		data: {id: id},
	})
	.done(function(r) {

		dados = jQuery.parseJSON(r);

           $('#boxMensagem').dialog('destroy').remove();

		   $('<div id="boxMensagem">').load('modal/modalNoticia.php',{
		   	id:id,
		   	titulo: dados.tituloNoticia,
		   	conteudo: dados.conteudo,
		   	imagem: dados.thumb_imagem,
		   	data: dados.dataCaptura
		   }).dialog({
                maximize : false,
                modal : true,
                title : tipo,
                width : 650,
                height : 500
            });
	});

}

