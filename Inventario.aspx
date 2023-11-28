<%@ Page Title="" Language="C#" MasterPageFile="~/Home.Master" AutoEventWireup="true" CodeBehind="Inventario.aspx.cs" Inherits="Login_InfoToolsSV.Inventario" %>
<asp:Content ID="Content1" ContentPlaceHolderID="title" runat="server">
    Inventario
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content3" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">


     <body>
       
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
