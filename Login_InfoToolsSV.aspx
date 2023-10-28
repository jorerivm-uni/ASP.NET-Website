<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Login_InfoToolsSV.aspx.cs" Inherits="Login_InfoToolsSV.Login_InfoToolsSV" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
    <meta name="viewport" content="width=device-width, initial-scale=1.0" />
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.0.0-beta3/dist/css/bootstrap.min.css" rel="stylesheet" />
    <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.0.0-beta3/dist/js/bootstrap.bundle.min.js"></script>
    <script src="https://code.jquery.com/jquery-3.6.0.min.js"></script>
    <link href="Recursos/CSS/Estilos.css" rel="stylesheet" /><link href="https://cdn.jsdelivr.net/npm/simple-datatables@7.1.2/dist/style.min.css" rel="stylesheet" />
    <link href="Recursos/CSS/styles.css" rel="stylesheet" />
    <link href="Recursos/CSS/style.css" rel="stylesheet" /><!--Background-->
    <script src="https://use.fontawesome.com/releases/v6.3.0/js/all.js" crossorigin="anonymous"></script>
    <title>Login</title>
</head>
<body class="sb-nav-fixed">
    <div class="header">
    <nav class="sb-topnav navbar navbar-expand navbar-dark bg-dark">
    <!-- Navbar Brand-->
    <a class="navbar-brand ps-3">Varela Gym</a>
    </nav>
    </div>
    <section class="home wow flash" id="home">
        <div class="container">
            <div class="wrapper">
    <div class="formcontent">
        <form id="formulario_login" runat="server">
            <div class="form-control">
                <div class="row">
                    <asp:Label class="h2" ID="lblBienvenida" runat="server" Text="Bienvenido/a Varela Gym"></asp:Label>
                </div>
                <div>
                    <asp:Label ID="lblUsuario" runat="server" Text="Usuario:"></asp:Label>
                    <asp:TextBox ID="tbUsuario" CssClass="form-control" runat="server" placeholder="Nombre de Usuario"></asp:TextBox>
                </div>
                <div>
                    <asp:Label ID="lblPassword" runat="server" Text="Password:"></asp:Label>
                    <asp:TextBox ID="tbPassword" CssClass="form-control" TextMode="Password" runat="server" placeholder="Password"></asp:TextBox>
                </div>
                <hr />
                <div class="row">
                    <asp:Label runat="server" CssClass="alert-danger" ID="lblError"></asp:Label>
                </div>
                <br />
                <div class="row">
                    <asp:Button ID="BtnIngresar" CssClass="btn btn-primary btn-dark" runat="server" Text="Ingresar" OnClick="BtnIngresar_Click" />
                </div>
            </div>
        </form>
    </div>
</div>
        </div>
        

    </section>
    
</body>
</html>
