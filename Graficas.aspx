<%@ Page Title="" Language="C#" MasterPageFile="~/Home.Master" AutoEventWireup="true" CodeBehind="Graficas.aspx.cs" Inherits="Login_InfoToolsSV.Graficas" %>
<asp:Content ID="Content1" ContentPlaceHolderID="title" runat="server">
    Graficas
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



    <div id="piechart" style="width: 900px; height: 500px;"></div>






</asp:Content>
