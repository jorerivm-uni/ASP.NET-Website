<%@ Page Title="" Language="C#" MasterPageFile="~/Home.Master" AutoEventWireup="true" CodeBehind="VentaWeb.aspx.cs" Inherits="Login_InfoToolsSV.VentaWeb" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    VentaWeb
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <!--<div id="layoutSidenav_content">-->
    <main>
        <div class="container-fluid px-4">
            <h1 class="mt-4">Centro de Ventas</h1>
            <ol class="breadcrumb mb-4">
                <li class="breadcrumb-item active">Ventas</li>
            </ol>
            <div class="row">
                <div class="col-xl-3 col-md-6">
                    <div class="card bg-primary text-white mb-4">
                        <div class="card-body">Nueva Venta</div>
                        <div class="card-footer d-flex align-items-center justify-content-between">
                            <a class="small text-white stretched-link" href="VentaNueva.aspx">View Details</a>
                            <div class="small text-white"><i class="fas fa-angle-right"></i></div>
                        </div>
                    </div>
                </div>
                <div class="col-xl-3 col-md-6">
                    <!--div class="card bg-warning text-white mb-4">
                        <div class="card-body">Warning Card</div>
                        <div class="card-footer d-flex align-items-center justify-content-between">
                            <a class="small text-white stretched-link" href="#">View Details</a>
                            <div class="small text-white"><i class="fas fa-angle-right"></i></div>
                        </div>
                    </!--div>-->
                </div>
                <div class="col-xl-3 col-md-6">
                    <div class="card bg-success text-white mb-4">
                        <div class="card-body">Historial de Ventas</div>
                        <div class="card-footer d-flex align-items-center justify-content-between">
                            <a class="small text-white stretched-link" href="#">View Details</a>
                            <div class="small text-white"><i class="fas fa-angle-right"></i></div>
                        </div>
                    </div>
                </div>
                <div class="col-xl-3 col-md-6">
                    <!--<div class="card bg-danger text-white mb-4">
                        <div class="card-body">Danger Card</div>
                        <div class="card-footer d-flex align-items-center justify-content-between">
                            <a class="small text-white stretched-link" href="#">View Details</a>
                            <div class="small text-white"><i class="fas fa-angle-right"></i></div>
                        </div>
                    </div>-->
                </div>
            </div>
            <div class="row">
                <div class="col-xl-6">
                    <div class="card mb-4">
                        <div class="card-header">
                            <i class="fas fa-chart-area me-1"></i>
                            Ventas
                        </div>
                        <div class="card-body"><canvas id="myAreaChart" width="100" height="40"></canvas></div>
                    </div>
                </div>
                <div class="col-xl-6">
                    <div class="card mb-4">
                        <div class="card-header">
                            <i class="fas fa-chart-bar me-1"></i>
                            Historico Inventario 
                        </div>
                        <div class="card-body"><canvas id="myBarChart" width="100" height="40"></canvas></div>
                    </div>
                </div>
            </div>
            <div class="card mb-4">
                <div class="card-header">
                    <i class="fas fa-table me-1"></i>
                    Historico de Ventas
                </div>
                <div class="card-body">
                    <table id="datatablesSimple" runat="server">
                        <thead>
                            <tr>
                                <th>IdProducto</th>
                                <th>Nombre</th>
                                <th>Descripcion</th>
                                <th>Stock</th>
                                <th>Precio</th>
                            </tr>
                        </thead>
                        <tfoot>
                            <tr>
                                <th>IdProducto</th>
                                <th>Nombre</th>
                                <th>Descripcion</th>
                                <th>Stock</th>
                                <th>Precio</th>
                            </tr>
                        </tfoot>
                        <tbody>
                            <tr>
                               
                            </tr>
                        </tbody>
                    </table>
                </div>
            </div>
        </div>
    </main>
<!--</div>-->


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





</asp:Content>
    
