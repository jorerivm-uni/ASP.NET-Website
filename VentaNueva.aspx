<%@ Page Title="" Language="C#" MasterPageFile="~/Home.Master" AutoEventWireup="true" CodeBehind="VentaNueva.aspx.cs" Inherits="Login_InfoToolsSV.VentaNueva" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
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
                <form id="form1" runat="server">
                    <h1>Productos Disponibles</h1>

                    <!-- Aquí se muestra la lista de productos -->
                    <asp:GridView ID="gridProductos" runat="server" AutoGenerateColumns="False">
                        <Columns>
                            <asp:BoundField DataField="codigo" HeaderText="Codigo" />
                            <asp:BoundField DataField="descripcion" HeaderText="Nombre" />
                            <asp:BoundField DataField="stock" HeaderText="Cantidad" />
                            <asp:BoundField DataField="precio" HeaderText="Precio" />  
                            
                        </Columns>
                    </asp:GridView>

                    <h2>Realizar Venta</h2>

                    <!-- Formulario para realizar la venta -->
                    <asp:DropDownList ID="ddlProductos" runat="server" AppendDataBoundItems="true">
                        <asp:ListItem Text="-- Seleccione un producto --" Value="" />
                        <!-- Opciones del producto llenadas dinámicamente desde la base de datos -->
                    </asp:DropDownList>
                    <!--asp:TextBox ID="txtCantidad" runat="server" type="number" min="1" placeholder="Cantidad" required=""></asp:TextBox-->
                    <asp:Button ID="btnAgregar" runat="server" Text="Agregar al Carrito" OnClick="btnAgregar_Click" />

                    <!-- Mostrar carrito de compras o detalles de la venta aquí -->

                    <asp:Button ID="btnRealizarVenta" runat="server" Text="Finalizar Venta" OnClick="btnRealizarVenta_Click" />
                </form>
        </div>
    </div>
</main>
</asp:Content>
