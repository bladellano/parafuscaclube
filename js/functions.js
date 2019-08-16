$(document).ready(function() {


	//Formulário de contato
	$('form[name=form-contato]').submit(function(event) { 
		event.preventDefault();

		dados = $(this).serializeArray();

		$.ajax({
			url: 'admin/envio-email.php',
			type: 'POST',
			dataType: 'html',
			data: dados,
			success: function(r){
				if(r==1){

					alertify.success('E-Mail enviado com sucesso!');
					setTimeout(function(){ window.location.reload(); }, 2000);					


				} else {

					alertify.error('Falha no envio do E-Mail!');

				}	
			}

		}).fail(function() {
			console.log("error");
		});		

	});


	$('[data-toggle="popover"]').css({
		'textDecoration':'none',
		'color':'#fff',
		'font-size':'22px'
	});

	$(function () {
		$('[data-toggle="popover"]').popover({
			html:true
		})
	})

	//Customiza a divAguarde	
	$("#divAguarde").dialog({
		autoOpen: false,
		height: 90,
		width: 150,
		title: 'Processando...',
		modal: true,
		resizable: false,
		open: function (event, ui) {
			$(".ui-dialog-titlebar-close", ui.dialog | ui).hide();
			$("#divAguarde").html('<img src="img/reload-1s-45px.gif" alt="Aguarde" align="absmiddle">');
		},
		close: function () {
			$("#divAguarde").empty();
		}
	});


    //Pegando dados do form membro.
    $('input[name="telefone"]').mask('(00)00000-0000');
    $('input[name="ano_fusca"]').mask('0000');

    $("#fichaCadastroMembro").submit(function(event) {

    	event.preventDefault();

    	var vazios = validarFormVazio($(this));

    	if (vazios > 0) {

    		alertify
    		.alert("Alerta",'Por favor, preencha todos campos!', function(){
    		});

    		return false;
    	}

    	var dados = $(this).serializeArray();
    	var stopScript = false;

    	dados.forEach( function(element, index) {
    		if(element.name == 'email'){
    			if(verificarEmail(element.value) == false){
    				$('input[name=email]').css('border','2px solid #cf000f'); 
    				alertify
    				.alert("Alerta",'Formato do e-mail inválido!', function(){
    				});
    				stopScript = true;
    				return false;
    			}
    			$('input[name=email]').css('border','1px solid #cccccc'); 
    		}
    	});

    	if(stopScript){
    		return false;
    	}

    	$.ajax({
    		url: "admin/salvar-membro.php",
    		type: 'POST',
    		dataType: 'html',
    		data: dados,
    		beforeSend: function() {

				$('.modal').css('z-index',1); // Envia o modal para de baixo do loading

				$("#divAguarde").dialog("open");
				$('.ui-dialog').css({
					
					'text-align': 'center',// Centraliza o gif
					'z-index': '1050',// Envia para frente de todos.
				});
				$('.ui-dialog-content').css({
					'overflow': 'hidden'
				})

				$('#fichaCadastroMembro input').attr('disabled','disabled');

			},
			success: function(r){

				if(r==1){

					$("#divAguarde").dialog("close");
					alertify.success('Você acabou de se registrar com sucesso! Brevemente entraremos em contato.');
					$('#fichaCadastroMembro')[0].reset();
					setTimeout(function(){ window.location.reload(); }, 3500);					

				} else if(r==2){

					alertify
					.alert("Alerta",'Este e-mail já esta sendo usado!', function(){
					});

					$('.modal').css('z-index',1050);

					$('#fichaCadastroMembro input').attr('disabled',false);

					$("#divAguarde").dialog("close");

					return false;
				}else {

					alertify
					.alert("Alerta",'Você não marcou o reCAPTCHA ou já expirou!', function(){
					});

					$('.modal').css('z-index',1050);

					$('#fichaCadastroMembro input').attr('disabled',false);

					$("#divAguarde").dialog("close");

					return false;
				}

			}
		});

    });

    // Verifica formato do e-mail	
    function verificarEmail(email){
    	if(email == '') return false;
    	if(!email.match(/^([a-z0-9-_.]{1,})+@+([a-z.]{1,})$/)) return false;

    }

    function validarFormVazio(formulario) {

    	dados = $(formulario).serialize();
    	d = dados.split('&');
    	d.pop(); // Tira "g-recaptcha-response"

    	vazios = 0;
    	for (i = 0; i < d.length; i++) {
    		controles = d[i].split("=");
    		
    		if (controles[1] == "") {
    			vazios++;
    		}
    	}	

    	return vazios;
    }


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
			data: dados.dataCaptura,
			id_album: dados.idAlbum
		}).dialog({
			maximize : false,
			modal : true,
			title : tipo,
			width : 750,
			height : 500
		});
	});

}

