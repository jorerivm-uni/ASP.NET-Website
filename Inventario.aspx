﻿<%@ Page Title="" Language="C#" MasterPageFile="~/Home.Master" AutoEventWireup="true" CodeBehind="Inventario.aspx.cs" Inherits="Login_InfoToolsSV.Inventario" %>
<asp:Content ID="Content1" ContentPlaceHolderID="title" runat="server">
    Inventario
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content3" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">


     <body>
       
          <header>
           <!-- comienzo Navbar de arriba-->
        <nav class="sb-topnav navbar navbar-expand navbar-dark bg-dark">
            <!-- Navbar Brand-->
            <a class="navbar-brand ps-3" href="PanelGeneral.aspx">Varela Gym</a>
            <!-- Sidebar Toggle-->
            <button class="btn btn-link btn-sm order-1 order-lg-0 me-4 me-lg-0" id="sidebarToggle" href="#!"><i class="fas fa-bars"></i></button>
            <!-- Navbar Search-->
            <form class="d-none d-md-inline-block form-inline ms-auto me-0 me-md-3 my-2 my-md-0">
                <div class="input-group">
                    <input class="form-control" type="text" placeholder="Search for..." aria-label="Search for..." aria-describedby="btnNavbarSearch" />
                    <button class="btn btn-primary" id="btnNavbarSearch" type="button"><i class="fas fa-search"></i></button>
                </div>
            </form>
            <!--fin  Navbar search-->
            <!--boton de user comienzo-->
            <ul class="navbar-nav ms-auto ms-md-0 me-3 me-lg-4">
                <li class="nav-item dropdown">
                    <a class="nav-link dropdown-toggle" id="navbarDropdown" href="#" role="button" data-bs-toggle="dropdown" aria-expanded="false"><i class="fas fa-user fa-fw"></i></a>
                    <ul class="dropdown-menu dropdown-menu-end" aria-labelledby="navbarDropdown">
                        <li><a class="dropdown-item" href="#!">Settings</a></li>
                        <li><a class="dropdown-item" href="#!">Activity Log</a></li>
                        <li><hr class="dropdown-divider" /></li>
                        <li><asp:Button ID="Btnsalir" CssClass="dropdown-item" runat="server" Text="Salir" OnClick="Btnsalir_Click"/><!-- salir va aca--></li>
                    </ul>
                </li>
            </ul>
            <!--boton de user fin-->
        </nav>
     <!--fin barra de arriba-->
       </header>




    <div class="card-header">
        <h2 class="text-center font-weight-light my-4">Inventario</h2>
    </div>
    <br />
        
    
    <div class="container">
            <div class="row">
                <div class="col align-self-end">

                    <div class="card-header">
                        <h4>
                            <asp:Label runat="server" Text="Buscador" ID="lblbuscar"></asp:Label>
                        </h4>
                     
                    </div>

                    <label for="select1">Buscar por:</label>
                    <select name="opc" id="select1" runat="server">
                        <option value="1" selected="selected">Opciones</option>
                        <option value="2"> Nombre</option>
                         <option value="3"> Categoria</option>

                    </select>
                    <asp:Button id="opcion" runat="server" Text="Elegir" CssClass="btn btn-primary form-control-sm" OnClick="opcion_Click"/>
                   
           
                     <asp:TextBox ID="txtnombrebus" runat="server" Visible="false"></asp:TextBox>
                     <asp:Button id="btnbuscar" runat="server" Visible="false" Class="btn btn-primary" Text="Buscar" OnClick="btnbuscar_Click"/>

                    <asp:TextBox ID="txtbuscanombre" runat="server" Visible="false"></asp:TextBox>
                    <asp:Button id="btnbuscarnombre" runat="server" Visible="false" Text="Buscar" Class="btn btn-primary" OnClick="btnbuscarnombre_Click"/>

                </div>

            </div>
            
        </div>
    
    <div class="text-center font-weight-light my-4">
        <div class="table large">
            <asp:GridView runat="server" ID="gvproducto" class="table table-borderless table-hover">
              
            </asp:GridView>
        </div>
    </div>
        
</body>



</asp:Content>
