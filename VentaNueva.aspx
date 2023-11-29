﻿<%@ Page Title="" Language="C#" MasterPageFile="~/Home.Master" AutoEventWireup="true" CodeBehind="VentaNueva.aspx.cs" Inherits="Login_InfoToolsSV.VentaNueva" %>
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
                
                    <h1>Productos Disponibles</h1>

                    <asp:GridView ID="gridProductos" runat="server" AutoGenerateColumns="False">
                        <Columns>
                            <asp:BoundField DataField="IdProducto" HeaderText="ID" />
                            <asp:BoundField DataField="Marca" HeaderText="Marca" />
                            <asp:BoundField DataField="Descripcion" HeaderText="Descripcion" />
                            <asp:BoundField DataField="IdCategoria" HeaderText="Categoria" />
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
                    <asp:Button ID="btnRealizarVenta" runat="server" Text="Finalizar Venta" OnClick="btnRealizarVenta_Click" />

            </div>
        </div>
    </div>

</main>
</asp:Content>
