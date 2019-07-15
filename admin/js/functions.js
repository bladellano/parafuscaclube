$(function(){

    //excluir album
    $('.idAlbum.apagar').on('click', function(e){
        e.preventDefault();
        var id = $(this).attr('href');
        alertify.confirm('Deseja excluir o album?', function(){

            $.ajax({
                url: '../excluir-album.php',
                type: 'POST',
                dataType: 'html',
                data: {id: id},
            })
            .done(function(r) {  
             alertify.success('Excluído com sucesso!');
             setTimeout(function(){ 
                location.reload();
            }, 1500);
         });
        })          
    });




//inseri album

$('#form-noticia').submit(function(e){
    e.preventDefault();

    if(typeof data === 'object'){

        var processData = false, cache = false, contentType =  false;
        // console.log(this); return false;

        var formCompleto = document.getElementById('form-noticia');
        // var formCompleto = $(this);

        for(i = 0; i < formCompleto.length; i++) {
            var campo = formCompleto[i].getAttribute('name');
            var valor = formCompleto[i].value;

            if(campo != 0 && campo != null && campo != "arquivo[]"){
                data.append(campo, valor);
            }

        }

    } else {

        data = $(this).serializeArray();  

    }

    $.ajax({
        url: '../salvar-noticia.php',
        data: data,        
        type: 'post',    
        dataType: 'html',
        success: function(r)
        {                

        if(r == 1) {     
         alertify.success('Inserido com sucesso!');
                    $('#form-noticia')[0].reset(); //reseta formulário  

                    setTimeout(function(){ 
                        location.reload();
                    }, 1500);              
                }  else {
                    // console.log('Houve algum problema.');
                    alertify.error('Houve algum problema.');    
                    return false;                
                }
            },
            processData: false,
            cache: false,
            contentType: false
        });

})




    //inseri album

    $('#form-album').submit(function(e){
        e.preventDefault();
        data = $('#nomeAlbum').val();

        $.ajax({

            type: $(this).attr('method'),     
            url: '../salvar-album.php',
            dataType: 'html',
            data: 'nomeAlbum=' + data,
        })
        .done(function(r) {

            if(r == 1) {
                console.log(r);
                alertify.success('Inserido com sucesso!');
            $('#form-album')[0].reset(); //reseta formulário
            
        }

        setTimeout(function(){ 
            location.reload();
        }, 1500);
        
    });

    })


 //atualizar titulo not[icia]
    $('#btnAtualizaNoticia').click(function(){

        dados = $('#frmNoticiaU').serialize();
        $.ajax({
            type:"POST",
            data:dados,
            url:"../atualiza-noticia.php",
            success:function(r){

                if(r==1){

                    alertify.success("Atualizado com Sucesso :)");
                    setTimeout(function(){ 
                        location.reload();
                    }, 1500);

                }else{
                    alertify.error("Não foi possível atualizar :(");
                }
            }
        });
    });



    //atualizar foto
    $('#btnAtualizaFoto').click(function(){

        dados = $('#frmFotoU').serialize();
        $.ajax({
            type:"POST",
            data:dados,
            url:"../atualiza-foto.php",
            success:function(r){

                if(r==1){

                    alertify.success("Atualizado com Sucesso :)");
                    setTimeout(function(){ 
                        location.reload();
                    }, 1500);

                }else{
                    alertify.error("Não foi possível atualizar :(");
                }
            }
        });
    });



    //carrega os arquivos para o objeto data(FormData);

    // document.getElementById("foto").onchange = function(e) {  
       $("#foto, #arquivo").change(function(e){
        data = new FormData();
        var nomeArquivo = [], respStringInt;
        for (var i = 0; i < e.target.files.length; i++) {
            nomeArquivo[i] = e.target.files[i].name;
        } 

        (e.target.files.length > 1) ? respStringInt = e.target.files.length + " arquivo(s)" : respStringInt = nomeArquivo.join(", ");

        // document.querySelector('label[for="foto"]').innerText = respStringInt;
        console.log(respStringInt);

        $('label[for="foto"],label[for="arquivo"]').text(respStringInt);


        var size_arquivos = 0;

        if(e.target.files != null && e.target.files.length != 0){

        //VERIFICA O TAMANHO E A EXTENSÃO DO ARQUIVO.
        var arquivo = [];
        var type = e.target.files;
        for(i = 0; i < e.target.files.length; i++) {

            if(type[i].type == "application/pdf" || type[i].type == "image/jpeg" || type[i].type == "image/png" ){//verifica tipo extensão
                size_arquivos += e.target.files[i].size;
                data.append("arquivo[]", e.target.files[i]);          

            } else {
                alert('Tipo de arquivo não aceito!');
                data.delete('arquivo[]');
            }
        }
    }

    var max_size = 10000000; //10000000 = 10MB

   /* if(size_arquivos > max_size) {
        alert('Tamanho dos arquivos somados não poderá ultrapassar de 10MB.');
        data.delete('arquivo[]');
        return false;

    }*/
    
});


	//upload de foto
	$('#form-upload').submit(function(e){

		e.preventDefault();

        var formCompleto = document.getElementById('form-upload');

        for(i = 0; i < formCompleto.length; i++) {
            var campo = formCompleto[i].getAttribute('name');
            var valor = formCompleto[i].value;

            if(campo != 0 && campo != null && campo != "arquivo[]"){
                data.append(campo, valor);
            }

        }

        $.ajax({
            url: '../salvar-foto.php',
            data: data,
            type: 'post',
            dataType: 'html',
            success: function(r)
            {            

               if(r == 1) {     
                 alertify.success('Inserido com sucesso!');
                    $('#form-upload')[0].reset(); //reseta formulário  

                    setTimeout(function(){ 
                        location.reload();
                    }, 1500);              
                }  else {
                    console.log('Houve algum problema.');
                    alertify.error('Houve algum problema.');    
                    return false;                
                }

            },
            processData: false,
            cache: false,
            contentType: false
        });

 }); // fim - form-upload



    //excluindo foto
    $('.idNoticia.apagar').on('click', function(e){
        e.preventDefault();
        var id = $(this).attr('href');
        alertify.confirm('Deseja excluir o registro?', function(){

            $.ajax({
                url: '../excluir-noticia.php',
                type: 'POST',
                dataType: 'html',
                data: {id: id},
            })
            .done(function(r) {  

             if(r == true){
               alertify.success('Excluído com sucesso!');
               setTimeout(function(){ 
                location.reload();
            }, 1500);            

           }   else {
             alertify.error('Erro ao excluir o registro!');
             setTimeout(function(){ 
                location.reload();
            }, 1500);
         } 
     });


        });        
    });











	//excluindo foto
	$('.idFoto.apagar').on('click', function(e){
		e.preventDefault();
		var id = $(this).attr('href');
		alertify.confirm('Deseja excluir a foto?', function(){

			$.ajax({
				url: '../excluir-foto.php',
				type: 'POST',
				dataType: 'html',
				data: {id: id},
			})
			.done(function(r) {	 

               if(r == true){
                 alertify.success('Excluído com sucesso!');
                 setTimeout(function(){ 
                    location.reload();
                }, 1500);            

             }   else {
               alertify.error('Erro ao excluir a foto!');
               setTimeout(function(){ 
                location.reload();
            }, 1500);
           } 
       });


		})			
	});

    // function adicionarDado(idfoto,titulofoto){

    //     $('#idfotoU').val(idfoto);
    //     $('#titulofotoU').val(titulofoto);
    // }

}); //fim function
