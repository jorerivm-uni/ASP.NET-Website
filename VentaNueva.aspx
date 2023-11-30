<%@ Page Title="" Language="C#" MasterPageFile="~/Home.Master" AutoEventWireup="true" CodeBehind="VentaNueva.aspx.cs" Inherits="Login_InfoToolsSV.VentaNueva" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    VentaNueva
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <main>
    <div class="container-fluid px-4">
        <h1 class="mt-4">Nueva Venta</h1>        
        <div class="card mb-4">
            <div class="card-header">
                <i class="fas fa-table me-1"></i>
                Articulos Disponibles
            </div>
            <div class="card-body">
                
                    <h1>Productos Disponibles</h1>

                    <asp:GridView ID="gridProductos" runat="server" AutoGenerateColumns="False">
                        <Columns>
                            <asp:BoundField DataField="IdProducto" HeaderText="ID" />
                            <asp:BoundField DataField="Nombre" HeaderText="Nombre" />
                            <asp:BoundField DataField="Descripcion" HeaderText="Descripcion" />
                            <asp:BoundField DataField="Categoria" HeaderText="Categoria" />
                            <asp:BoundField DataField="Stock" HeaderText="Cantidad" />
                            <asp:BoundField DataField="Precio" HeaderText="Precio" />  
                            <asp:BoundField DataField="FechaRegistro" HeaderText="Fecha de Registro" />  

                            
                        </Columns>
                    </asp:GridView>

                    <h2>Realizar Venta</h2>

                    <!-- Formulario para realizar la venta -->
                    <asp:DropDownList ID="ddlProductos" runat="server" AppendDataBoundItems="true">
                        <asp:ListItem Text="-- Seleccione un producto --" Value="" />
                    </asp:DropDownList>
                    <asp:TextBox ID="txtCantidad" runat="server" type="number" min="1" placeholder="Cantidad" required=""></asp:TextBox>
                    <asp:Button ID="btnAgregar" runat="server" Text="Agregar al Carrito" OnClick="btnAgregar_Click" CommandName="AddToCart" CommandArgument='<%# Eval("ID") %>'/><%-- --%>

                    <h2>Carrito de Compras</h2>
                    <asp:GridView ID="gridCarrito" runat="server" AutoGenerateColumns="False">
                        <Columns>
                            <asp:BoundField DataField="ID" HeaderText="ID" />
                            <asp:BoundField DataField="Nombre" HeaderText="Nombre" />
                            <asp:BoundField DataField="cantidad" HeaderText="Cantidad" />
                            <asp:BoundField DataField="Precio" HeaderText="Precio" />
                            <asp:BoundField DataField="Sub-Total" HeaderText="Sub-Total" />

                        </Columns>
                    </asp:GridView>
                    <asp:TextBox ID="TextBox" runat="server" type="text" ReadOnly="true" Text="Total C$"/>
                    <asp:TextBox ID="TotalVenta" runat="server" Type="Text" ReadOnly="true" />
                    <asp:Button ID="btnRealizarVenta" runat="server" Text="Finalizar Venta" OnClick="btnRealizarVenta_Click" />

            </div>
        </div>
    </div>

        <!-- comienzo Navbar de arriba-->
        <nav class="sb-topnav navbar navbar-expand navbar-dark bg-dark">
            <!-- Navbar Brand-->
            <a class="navbar-brand ps-3" href="PanelGeneral.aspx">Varela Gym</a>
            <!-- Sidebar Toggle-->
            <button class="btn btn-link btn-sm order-1 order-lg-0 me-4 me-lg-0" id="sidebarToggle" href="#!"><i class="fas fa-bars"></i></button>
            <!-- Navbar Search-->
            <form class="d-none d-md-inline-block form-inline ms-auto me-0 me-md-3 my-2 my-md-0">
                <div class="input-group">
                    <!--<input class="form-control" type="text" placeholder="Search for..." aria-label="Search for..." aria-describedby="btnNavbarSearch" />
                    <button class="btn btn-primary" id="btnNavbarSearch" type="button"><i class="fas fa-search"></i></button>-->
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



</main>
</asp:Content>
