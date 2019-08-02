$(function () {


    //Tooltip - Setando a posição da caixa exibindo quando passa em cima do nome.
    $('.viewFoto').hover(function () {

        var objCaixa = $('#caixa_' + $(this).attr('data-id'));
        var posTop = $(this).offset().top;
        var postLeft = $(this).offset().left;

        objCaixa.css({
            'top': posTop + (-30),
            'left': postLeft + 130
        }).fadeIn();

    }, function () {

        $('#caixa_' + $(this).attr('data-id')).fadeOut();
    });



    //Login
    $('#entrarSistema').click(function (e) {

        e.preventDefault();

        vazios = validarFormVazio('frmLogin');

        if (vazios > 0) {

            alertify.error("Preencha os campos!!");

            return false;
        }

        dados = $('#frmLogin').serialize();

        $.ajax({
            type: "POST",
            dataType: 'html',
            data: dados,
            url: "login.php",
            success: function (r) {
                // alert(r);
                if (r == 1) {
                    window.location = "views/inicio.php";
                } else {
                    alertify.error("Usuário ou senha não confere :(");
                    // alertify.alert('Alert Title', 'Alert Message!', function(){ alertify.success('Ok'); });
                }
            },
            error: function (request, status, error) {
                alert(request.responseText);
            }
        });
    });

    //Função para validar formulários
    function validarFormVazio(formulario) {

        dados = $('#' + formulario).serialize();

        d = dados.split('&');
        vazios = 0;
        for (i = 0; i < d.length; i++) {
            controles = d[i].split("=");
            if (controles[1] == "A" || controles[1] == "") {
                vazios++;
            }
        }
        return vazios;
    }




    //Excluindo um album
    $('.idAlbum.apagar').on('click', function (e) {
        e.preventDefault();

        var id = $(this).attr('href');

        alertify.confirm('Deseja excluir o album?', function () {

            $.ajax({
                    url: '../excluir-album.php',
                    type: 'POST',
                    dataType: 'html',
                    data: {
                        id: id
                    },
                })
                .done(function (r) {
                    alertify.success('Excluído com sucesso!');
                    setTimeout(function () {
                        location.reload();
                    }, 1500);
                });
        })
    });



    //Insere membro
    $('#form-membro').submit(function (e) {

        if ($('#foto').val() == "") {
            alertify.error('Por favor insera uma foto!');
            return false;
        }

        e.preventDefault();

        if (typeof data === 'object') {

            var processData = false,
                cache = false,
                contentType = false;

            var formCompleto = document.getElementById('form-membro');

            for (i = 0; i < formCompleto.length; i++) {

                var campo = formCompleto[i].getAttribute('name');
                var valor = formCompleto[i].value;

                if (campo != 0 && campo != null && campo != "foto[]") {
                    data.append(campo, valor);
                }
            }

        } else {

            data = $(this).serializeArray();
        }

        $.ajax({
            url: '../salvar-membro.php',
            data: data,
            type: $(this).attr('method'),
            dataType: 'html',
            success: function (r) {

                if (r == 1) {

                    alertify.success('Inserido com sucesso!');

                    $('#form-membro')[0].reset(); //reseta formulário  

                    setTimeout(function () {
                        location.reload();
                    }, 1500);
                } else {

                    alertify.error('Houve algum problema.');
                    return false;
                }
            },
            processData: false,
            cache: false,
            contentType: false
        });

    })


    //Insere noticia

    $('#form-noticia').submit(function (e) {
        e.preventDefault();

        if (typeof data === 'object') {

            var processData = false,
                cache = false,
                contentType = false;

            var formCompleto = document.getElementById('form-noticia');

            for (i = 0; i < formCompleto.length; i++) {
                var campo = formCompleto[i].getAttribute('name');
                var valor = formCompleto[i].value;

                if (campo != 0 && campo != null && campo != "arquivo[]") {
                    data.append(campo, valor);
                }

            }

        } else {

            data = $(this).serializeArray();

            // console.log(data);            
            // return false;

        }

        $.ajax({
            url: '../salvar-noticia.php',
            data: data,
            type: 'post',
            dataType: 'html',
            success: function (r) {

                if (r == 1) {
                    alertify.success('Inserido com sucesso!');

                    $('#form-noticia')[0].reset(); //reseta formulário  

                    setTimeout(function () {
                        location.reload();
                    }, 1500);
                } else {

                    alertify.error('Houve algum problema.');
                    return false;
                }
            },
            processData: processData,
            cache: cache,
            contentType: contentType
        });

    });


    //Insere video

    $('#form-video').submit(function (e) {

        e.preventDefault();

        data = $($(this)).serializeArray();

        $.ajax({

                type: $(this).attr('method'),
                url: '../salvar-video.php',
                dataType: 'html',
                data: data,

            })
            .done(function (r) {

                if (r == 1) {

                    alertify.alert('Mensagem', 'Inserido com sucesso!', function () {
                        alertify.success('Ok');
                    });

                    $('#form-video')[0].reset(); //reseta formulário

                }

                setTimeout(function () {
                    location.reload();
                }, 1500);

            });

    })




    //Insere album

    $('#form-album').submit(function (e) {
        e.preventDefault();

        data = $('#nomeAlbum').val();

        $.ajax({

                type: $(this).attr('method'),
                url: '../salvar-album.php',
                dataType: 'html',
                data: 'nomeAlbum=' + data,
            })
            .done(function (r) {

                if (r == 1) {
                    console.log(r);

                    alertify.alert('Alerta', 'Inserido com sucesso!', function () {
                        alertify.success('Ok');
                    });

                    $('#form-album')[0].reset(); //reseta formulário

                }

                setTimeout(function () {
                    location.reload();
                }, 1500);

            });

    })



    //Atualiza dados do membro
    $('#btnAtualizaMembro').click(function () {

        dados = $('#frmMembroU').serializeArray();

        $.ajax({
            type: "POST",
            data: dados,
            url: "../atualiza-membro.php",
            success: function (r) {

                if (r == 1) {

                    alertify.success("Atualizado com Sucesso :)");
                    setTimeout(function () {
                        location.reload();
                    }, 1500);

                } else {
                    alertify.error("Não foi possível atualizar :(");
                    return false;
                }
            }
        });
    });



    //Atualiza titulo do video
    $('#btnAtualizaVideo').click(function () {

        dados = $('#frmVideoU').serialize();

        $.ajax({
            type: "POST",
            data: dados,
            url: "../atualiza-video.php",
            success: function (r) {

                if (r == 1) {

                    alertify.success("Atualizado com Sucesso :)");
                    setTimeout(function () {
                        location.reload();
                    }, 1500);

                } else {
                    alertify.error("Não foi possível atualizar :(");
                    return false;
                }
            }
        });
    });


    //Atualiza titulo da noticia
    $('#btnAtualizaNoticia').click(function () {

        dados = $('#frmNoticiaU').serialize();

        $.ajax({
            type: "POST",
            data: dados,
            url: "../atualiza-noticia.php",
            success: function (r) {

                if (r == 1) {

                    alertify.success("Atualizado com Sucesso :)");
                    setTimeout(function () {
                        location.reload();
                    }, 1500);

                } else {
                    alertify.error("Não foi possível atualizar :(");
                }
            }
        });
    });



    //Atualizar dados de uma foto
    $('#btnAtualizaFoto').click(function () {

        dados = $('#frmFotoU').serialize();
        $.ajax({
            type: "POST",
            data: dados,
            url: "../atualiza-foto.php",
            success: function (r) {

                if (r == 1) {

                    alertify.success("Atualizado com Sucesso :)");
                    setTimeout(function () {
                        location.reload();
                    }, 1500);

                } else {
                    alertify.error("Não foi possível atualizar :(");
                }
            }
        });
    });



    //Carrega os arquivos para o objeto data(FormData);

    // document.getElementById("foto").onchange = function(e) { 

    $("#foto, #arquivo").change(function (e) {
        data = new FormData();
        var nomeArquivo = [],
            respStringInt;
        for (var i = 0; i < e.target.files.length; i++) {
            nomeArquivo[i] = e.target.files[i].name;
        }

        (e.target.files.length > 1) ? respStringInt = e.target.files.length + " arquivo(s)": respStringInt = nomeArquivo.join(", ");

        console.log(respStringInt);

        $('label[for="foto"],label[for="arquivo"]').text(respStringInt);

        var size_arquivos = 0;

        if (e.target.files != null && e.target.files.length != 0) {

            //VERIFICA O TAMANHO E A EXTENSÃO DO ARQUIVO.
            var arquivo = [];
            var type = e.target.files;
            for (i = 0; i < e.target.files.length; i++) {

                if (type[i].type == "application/pdf" || type[i].type == "image/jpeg" || type[i].type == "image/png") { //verifica tipo extensão
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


    //Upload de foto
    $('#form-upload').submit(function (e) {

        e.preventDefault();

        var formCompleto = document.getElementById('form-upload');

        for (i = 0; i < formCompleto.length; i++) {
            var campo = formCompleto[i].getAttribute('name');
            var valor = formCompleto[i].value;

            if (campo != 0 && campo != null && campo != "arquivo[]") {
                data.append(campo, valor);
            }

        }

        $.ajax({
            url: '../salvar-foto.php',
            data: data,
            type: 'post',
            dataType: 'html',
            success: function (r) {

                if (r == 1) {
                    alertify.success('Inserido com sucesso!');
                    $('#form-upload')[0].reset(); //reseta formulário  

                    setTimeout(function () {
                        location.reload();
                    }, 1500);
                } else {
                    alertify.error('Houve algum problema.');
                    return false;
                }

            },
            processData: false,
            cache: false,
            contentType: false
        });

    }); // fim - form-upload


    //Excluindo membro
    $('.idMembro.apagar').on('click', function (e) {
        e.preventDefault();

        var id = $(this).attr('href');

        alertify.confirm('Deseja excluir o registro?', function () {

            $.ajax({
                    url: '../excluir-membro.php',
                    type: 'POST',
                    dataType: 'html',
                    data: {
                        id: id
                    },
                })
                .done(function (r) {

                    if (r == true) {
                        alertify.success('Excluído com sucesso!');
                        setTimeout(function () {
                            location.reload();
                        }, 1500);

                    } else {

                        alertify.error('Erro ao excluir o registro!');

                        return false;
                    }
                });


        });
    });

    //Excluindo video
    $('.idVideo.apagar').on('click', function (e) {
        e.preventDefault();
        var id = $(this).attr('href');

        alertify.confirm('Deseja excluir o registro?', function () {

            $.ajax({
                    url: '../excluir-video.php',
                    type: 'POST',
                    dataType: 'html',
                    data: {
                        id: id
                    },
                })
                .done(function (r) {

                    if (r == true) {
                        alertify.success('Excluído com sucesso!');
                        setTimeout(function () {
                            location.reload();
                        }, 1500);

                    } else {
                        alertify.error('Erro ao excluir o registro!');
                        setTimeout(function () {
                            location.reload();
                        }, 1500);
                    }
                });


        });
    });


    //Excluindo uma noticia
    $('.idNoticia.apagar').on('click', function (e) {
        e.preventDefault();
        var id = $(this).attr('href');
        alertify.confirm('Deseja excluir o registro?', function () {

            $.ajax({
                    url: '../excluir-noticia.php',
                    type: 'POST',
                    dataType: 'html',
                    data: {
                        id: id
                    },
                })
                .done(function (r) {

                    if (r == true) {
                        alertify.success('Excluído com sucesso!');
                        setTimeout(function () {
                            location.reload();
                        }, 1500);

                    } else {
                        alertify.error('Erro ao excluir o registro!');
                    /*    setTimeout(function () {
                            location.reload();
                        }, 1500);*/
                    }
                });


        });
    });


    //Excluindo uma foto
    $('.idFoto.apagar').on('click', function (e) {
        e.preventDefault();
        var id = $(this).attr('href');
        alertify.confirm('Deseja excluir a foto?', function () {

            $.ajax({
                    url: '../excluir-foto.php',
                    type: 'POST',
                    dataType: 'html',
                    data: {
                        id: id
                    },
                })
                .done(function (r) {

                    if (r == true) {
                        alertify.success('Excluído com sucesso!');
                        setTimeout(function () {
                            location.reload();
                        }, 1500);

                    } else {
                        alertify.error('Erro ao excluir a foto!');
                        setTimeout(function () {
                            location.reload();
                        }, 1500);
                    }
                });


        })
    });

}); //fim function
