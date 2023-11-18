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
                <table id="datatablesSimple" runat="server">
                    <thead>
                        <tr>
                            <th>Codigo</th>
                            <th>Marca</th>
                            <th>Descripcion</th>
                            <th>Stock</th>
                            <th>Precio</th>

                        </tr>
                    </thead>
                    <tfoot>
                        <tr>
                            <th>Codigo</th>
                            <th>Marca</th>
                            <th>Descripcion</th>
                            <th>Stock</th>
                            <th>Precio</th>
                        </tr>
                    </tfoot>
                    <tbody>
                        <!--Datos de la tabla "Venta"-->
                    </tbody>
                </table>
            </div>
        </div>
    </div>
</main>
</asp:Content>
