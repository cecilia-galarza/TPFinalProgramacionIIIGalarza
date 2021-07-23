<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Login.aspx.cs" Inherits="VistaWeb.Login" %>

<!DOCTYPE html>

<html lang="en">
<head runat="server">
    <meta charset="utf-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">
    <meta name="description" content="">
    <meta name="author" content="">
    <title>Servicio Post Venta</title>

    <!-- Bootstrap core CSS -->
    <link href="css/bootstrap.min.css" rel="stylesheet">

    <!-- Custom fonts for this template -->
    <link href="css/all.min.css" rel="stylesheet" type="text/css">
    <link href="https://fonts.googleapis.com/css?family=Nunito:200,200i,300,300i,400,400i,600,600i,700,700i,800,800i,900,900i" rel="stylesheet">

    <!-- Custom styles for this template -->
    <link href="css/sb-admin-2.min.css" rel="stylesheet">
    <link href="css/one-page-wonder.min.css" rel="stylesheet">
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
                            <div class="row">
                                <div class="col-lg-6 d-none d-lg-block">
                                    <img src="img/Welcome.png" class="bd-placeholder-img" alt="Welcome">
                                </div>
                                <div class="col-lg-6">
                                    <div class="p-5">
                                        <div class="text-center">
                                            <h1 class="h4 text-gray-900 mb-4">Bienvenido!</h1>
                                        </div>
                                        <form class="user">
                                            <div class="form-group">
                                                <asp:TextBox ID="tbEmail" type="email" runat="server" cssClass="form-control form-control-user" aria-describedby="emailHelp" placeholder="Ingrese su dirección de Email..."></asp:TextBox>
                                            </div>
                                            <div class="form-group">
                                                <asp:TextBox ID="tbPassword" runat="server" cssClass="form-control form-control-user" type="password" placeholder="Password"></asp:TextBox>
                                                </div>
                                            <div class="form-group">
                                                <asp:Button ID="btnIngresar" clsClass="btn btn-primary btn-user btn-block" runat="server" Text="Ingresar" OnClick="btnIngresar_Click" />
                                            </div>
                                        </form>
                                        <hr>
                                        <asp:Label ID="confirmacionEstado" runat="server"></asp:Label>
                                        <%--custom-control-label--%>
                                        <div class="text-center">
                                            <a class="small" href="RecuperoPassword.aspx">Olvidaste tu Password?</a>
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
