<%@ Page Title="" Language="C#" AutoEventWireup="true" CodeBehind="RecuperoPassword.aspx.cs" Inherits="VistaWeb.RecuperoPassword" %>


<!DOCTYPE html>

<html lang="en">
<head runat="server">
    <meta charset="utf-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">
    <meta name="description" content="">
    <meta name="author" content="">
    <title>Sistema de Post  Venta</title>

    <!-- Custom fonts for this template -->
    <link href="css/all.min.css" rel="stylesheet" type="text/css">
    <link href="https://fonts.googleapis.com/css?family=Nunito:200,200i,300,300i,400,400i,600,600i,700,700i,800,800i,900,900i" rel="stylesheet">

    <!-- Custom styles for this template -->
    <link href="css/sb-admin-2.min.css" rel="stylesheet">
</head>
<body class="bg-gradient-primary">
    <form id="form1" runat="server">
        <div class="container">
            <!-- Outer Row -->
            <div class="row justify-content-center">
                <div class="col-xl-10 col-lg-12 col-md-9">
                    <div class="card o-hidden border-0 shadow-lg my-5">
                        <div class="card-body p-0">
                            <!-- Nested Row within Card Body -->
                            <div class="row vh-100 justify-content-center align-items-center">
                              <div class="col-auto bg-light p-5">  
                                        <div class="text-center">
                                            <h1 class="h4 text-gray-900 mb-2">¿Olvidaste tu Contraseña?</h1>
                                            <p class="mb-4"> Ingresa tu correo electrónico para restablecer </p>
                                        </div>
                                        <form class="user">
                                            <div class="form-group">
                                                <input type="email" class="form-control form-control-user" id="exampleInputEmail" aria-describedby="emailHelp" placeholder="Ingresa tu correo...">
                                            </div>
                                            <a href="Login.aspx" class="btn btn-primary btn-user btn-block">Restablecer</a>
                                        </form>
                                        <hr>
                                        <div class="text-center">
                                            <a class="small" href="Login.aspx">¿Ya tienes tu contraseña?</a>
                                        </div>
                                    </div>
                                </div>
                                         
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </div>

        <!-- Bootstrap core JavaScript -->
        <script src="js/jquery.min.js"></script>
        <script src="js/bootstrap.bundle.min.js"></script>

        <!-- Core plugin JavaScript-->
        <script src="js/jquery.easing.min.js"></script>

        <!-- Custom scripts for all pages-->
        <script src="js/sb-admin-2.min.js"></script>

    </form>
</body>
</html>

