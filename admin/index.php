
<!doctype html>
<html lang="pt-br">
<head>
  <meta charset="utf-8">
  <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">
  <meta name="description" content="">
  <meta name="author" content="">
  
  <!-- <link rel="icon" href="../../../../favicon.ico"> -->

  <title>Login | Admin</title>

  <link href="css/floating-labels.css" rel="stylesheet">
  <script src="js/jquery.min.js" type="text/javascript"></script>
  <script src="js/alertify.js" type="text/javascript"></script>
  <script src="js/functions.js" type="text/javascript"></script>
  <script src="js/bootstrap.min.js" type="text/javascript"></script>
  <!-- <script src="http://cdn.ckeditor.com/4.12.1/standard/ckeditor.js"></script> -->
  <script src="https://unpkg.com/ionicons@4.5.10-0/dist/ionicons.js"></script>

  <link rel="stylesheet" type="text/css" href="css/alertify.css">
  <link rel="stylesheet" type="text/css" href="css/bootstrap.min.css">
 

</head>

<body>

  <form class="form-signin" id="frmLogin" method="POST">
    <div class="row">
      <div class="col-md-12 text-center">
        <h1>Login</h1>
        <ion-icon name="contacts" size="large"></ion-icon>
      </div>
    </div>

    <div class="form-label-group">

      <input type="email" id="inputEmail" name="inputEmail" class="form-control" placeholder="Endereço de email"  autofocus>
      <label for="inputEmail">Endereço de email</label>
    </div>

    <div class="form-label-group">
      <input type="password" id="inputPassword" name="inputPassword" class="form-control" placeholder="Senha" >
      <label for="inputPassword">Senha</label>
    </div>

    <div class="checkbox mb-3">
      <label>
        <input type="checkbox" value="lembrar de mim"> Lembrar de mim
      </label>
    </div>
    <button class="btn btn-lg btn-primary btn-block" id="entrarSistema" type="submit">Entrar</button>
    <!-- <span class="btn btn-primary btn-sm" id="entrarSistema">Entrar</span> -->
    <p class="mt-5 mb-3 text-muted text-center">&copy; 2018-2019</p>
  </form>

</body>
</html>
