<%@ Page Title="" Language="C#" MasterPageFile="~/Home.Master" AutoEventWireup="true" CodeBehind="VerProducto.aspx.cs" Inherits="Login_InfoToolsSV.VerProducto" %>
<asp:Content ID="Content1" ContentPlaceHolderID="title" runat="server">
    VerProductos
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content3" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">


        <body>
       
    <div class="card-header">
        <h2 class="text-center font-weight-light my-4">Listado de registros de productos</h2>
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
                    <asp:Button id="opcion" runat="server" Text="Elegir" CssClass="btn btn-primary form-control-sm" OnClick="Button1_Click"/>
                   
           
                     <asp:TextBox ID="txtnombrebus" runat="server" Visible="false"></asp:TextBox>
                     <asp:Button id="btnbuscar" runat="server"  OnClick="btnbuscar_Click" Visible="false" Class="btn btn-primary" Text="Buscar"/>

                    <asp:TextBox ID="txtbuscamarca" runat="server" Visible="false"></asp:TextBox>
                    <asp:Button id="btnbuscarmarca" runat="server" Visible="false" Text="Buscar" OnClick="btnbuscarMarca_Click" Class="btn btn-primary"/>

                </div>

            </div>
            
        </div>
    <br />
    <div class="container">
        <div class="row">
            <div class="col align-self-end" >
                <asp:Button runat="server" ID="BtnCreate" CssClass="btn btn-success form-control-sm" Text="Ingresar" OnClick="BtnCreate_Click"/>
            </div>
        </div>
    </div>
    <br />
    <div class="text-center font-weight-light">
        <div class="table medium">
            <asp:GridView runat="server" ID="gvproducto" class="table table-borderless table-hover">
                <Columns>
                    <asp:TemplateField HeaderText="Opciones">
                        <ItemTemplate>
                            <asp:Button runat="server" Text="Leer" CssClass="btn form-control-sm btn-info" ID="BtnLeer" OnClick="BtnLeer_Click"/>
                            <asp:Button runat="server" Text="Actualizar" CssClass="btn form-control-sm btn-warning" ID="BtnActualizar" OnClick="BtnActualizar_Click"/>
                            <asp:Button runat="server" Text="Borrar" CssClass="btn form-control-sm btn-danger" ID="BtnBorrar" OnClick="BtnBorrar_Click"/>
                        </ItemTemplate>
                    </asp:TemplateField>
                </Columns>
            </asp:GridView>
        </div>
    </div>
        
</body>





</asp:Content>
