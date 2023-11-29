<%@ Page Title="" Language="C#" MasterPageFile="~/Home.Master" AutoEventWireup="true" CodeBehind="Dashboard.aspx.cs" Inherits="Login_InfoToolsSV.Dashboard" %>
<asp:Content ID="Content1" ContentPlaceHolderID="title" runat="server">
    Dashboard
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="head" runat="server">

     <script type="text/javascript" src="https://www.gstatic.com/charts/loader.js"></script>
    <script type="text/javascript">
        google.charts.load('current', { 'packages': ['corechart'] });
        google.charts.setOnLoadCallback(drawChart);

        function drawChart() {

            var data = google.visualization.arrayToDataTable(<%=obtenerDatos()%>);

            var options = {
                title: 'Cantidad de productos'
            };

            var chart = new google.visualization.PieChart(document.getElementById('piechart'));

            chart.draw(data, options);
        }
    </script>

</asp:Content>
<asp:Content ID="Content3" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">

    <div class="container ">
            <h1 class="mt-4">Dashboard</h1>
            <ol class="breadcrumb mb-4">
                <li class="breadcrumb-item active">Información</li>
            </ol>
            <div class="row"><!-- comienzo tarjetas-->

                <div class="col-xl-3 col-md-6">
                    <div class="card bg-primary text-white mb-4">
                        <div class="card-body text-center">Cantidad de ventas</div>
                            <div class="text-center">
                                 <asp:Label runat="server" ID="lblcantidadventas"></asp:Label>
                            </div> 
                    </div>
                </div>

                 <div class="col-xl-3 col-md-6">
                    <div class="card bg-warning text-white mb-4">
                        <div class="card-body text-center">Ingresos por ventas</div>
                            <div class="text-center">
                                 <asp:Label runat="server" ID="lblingresosxventas"></asp:Label>
                            </div> 
                    </div>
                </div>

                <div class="col-xl-3 col-md-6">
                    <div class="card bg-success text-white mb-4">
                        <div class="card-body text-center">Total de productos</div>
                            <div class="text-center">
                                 <asp:Label runat="server" ID="lbltotalproductos"></asp:Label>
                            </div> 
                    </div>
                </div>

                  <div class="col-xl-3 col-md-6">
                    <div class="card bg-danger text-white mb-4">
                        <div class="card-body text-center">Total de proveedores</div>
                            <div class="text-center">
                                 <asp:Label runat="server" ID="lbltotalproveedores"></asp:Label>
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
                        <div id="piechart" style="width: 550px; height: 450px;"></div>
                        <!--<div class="card-body"><canvas id="myAreaChart" width="100" height="40"></canvas></div>-->
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
           
           

        </div>

</asp:Content>
