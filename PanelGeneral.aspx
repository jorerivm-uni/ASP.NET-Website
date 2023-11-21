<%@ Page Title="" Language="C#" MasterPageFile="~/Home.Master" AutoEventWireup="true" CodeBehind="PanelGeneral.aspx.cs" Inherits="Login_InfoToolsSV.PanelGeneral" %>
<asp:Content ID="Content1" ContentPlaceHolderID="title" runat="server">
    Inicio
   

</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="head" runat="server">

        <!-- poner script y stilos para algunos controles, css,javascript-->
    

</asp:Content>
<asp:Content ID="Content3" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">

    
  
        <div class="container ">
            <h1 class="mt-4">Panel General</h1>
            <ol class="breadcrumb mb-4">
                <li class="breadcrumb-item active">Acciones Rapidas</li>
            </ol>
            <div class="row"><!-- comienzo tarjetas-->
                <div class="col-xl-3 col-md-6">
                    <div class="card bg-primary text-white mb-4">
                        <div class="card-body">Nueva Venta</div>
                        <div class="card-footer d-flex align-items-center justify-content-between">
                            <a class="small text-white stretched-link" href="VentaWeb.aspx">Nueva Venta</a>
                            <div class="small text-white"><i class="fas fa-angle-right"></i></div>
                        </div>
                    </div>
                </div>
                <div class="col-xl-3 col-md-6">
                    <div class="card bg-warning text-white mb-4">
                        <div class="card-body">Ver Clientes</div>
                        <div class="card-footer d-flex align-items-center justify-content-between">
                            <a class="small text-white stretched-link" href="#">View Details</a>
                            <div class="small text-white"><i class="fas fa-angle-right"></i></div>
                        </div>
                    </div>
                </div>
                <div class="col-xl-3 col-md-6">
                    <div class="card bg-success text-white mb-4">
                        <div class="card-body">Nuevo Pedido</div>
                        <div class="card-footer d-flex align-items-center justify-content-between">
                            <a class="small text-white stretched-link" href="#">View Details</a>
                            <div class="small text-white"><i class="fas fa-angle-right"></i></div>
                        </div>
                    </div>
                </div>
                <div class="col-xl-3 col-md-6">
                    <div class="card bg-danger text-white mb-4">
                        <div class="card-body">Ver Inventario</div>
                        <div class="card-footer d-flex align-items-center justify-content-between">
                            <a class="small text-white stretched-link" href="#">View Details</a>
                            <div class="small text-white"><i class="fas fa-angle-right"></i></div>
                        </div>
                    </div>
                </div>
            </div><!-- fin tarjetas-->
            <div class="row"><!-- comienzo graficas-->
                <div class="col-xl-6">
                    <div class="card mb-4">
                        <div class="card-header">
                            <i class="fas fa-chart-area me-1"></i>
                            Resumen de Inventario
                        </div>
                        <div class="card-body"><canvas id="myAreaChart" width="100" height="40"></canvas></div>
                    </div>
                </div>
                <div class="col-xl-6">
                    <div class="card mb-4">
                        <div class="card-header">
                            <i class="fas fa-chart-bar me-1"></i>
                            Resumen de Ventas
                        </div>
                        <div class="card-body"><canvas id="myBarChart" width="100" height="40"></canvas></div>
                    </div>
                </div>
            </div><!-- fin graficas-->
            <div class="card mb-4">
                <div class="card-header">
                    <i class="fas fa-table me-1"></i>
                    Resumen de Ventas
                </div>
                <div class="card-body">
                    <table id="datatablesSimple" runat="server">
                        <thead>
                                <tr>
                                    <th># Venta</th>
                                    <th>Fecha</th>
                                    <th># Cliente</th>
                                    <th>Nombre</th>
                                    <th>Total</th>
        
                                </tr>
                            </thead>
                            <tfoot>
                                <tr>
                                    <th># Venta</th>
                                    <th>Fecha</th>
                                    <th># Cliente</th>
                                    <th>Nombre</th>
                                    <th>Total</th>
        
                                </tr>
                            </tfoot>
                            <tbody>
                                <!--Datos de la tabla "Venta"-->
                            </tbody>
                    </table>
                </div>
            </div>
           

        </div>
    

    
   
      


</asp:Content>