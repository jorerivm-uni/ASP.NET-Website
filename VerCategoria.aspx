<%@ Page Title="" Language="C#" MasterPageFile="~/Home.Master" AutoEventWireup="true" CodeBehind="VerCategoria.aspx.cs" Inherits="Login_InfoToolsSV.VerCategoria" %>
<asp:Content ID="Content1" ContentPlaceHolderID="title" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content3" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">

    <body>
       
    <div class="card-header">
        <h2 class="text-center font-weight-light my-4">Listado de categorias de productos</h2>
    </div>
    <br />
        <div class="container">
            <div class="row">
                <div class="col align-self-end">

                    <div class="card-header">
                        <h5>
                            <asp:Label runat="server" Text="Buscador" ID="lblbuscar"></asp:Label>
                        </h5>
                     
                    </div>
           
                     <asp:TextBox ID="txtnombrebus" runat="server"></asp:TextBox>
                     <asp:Button id="btnbuscar" runat="server" Text="Buscar" CssClass="btn btn-primary form-control-sm" OnClick="btnbuscar_Click"/>

                </div>

            </div>
            
        </div>
    <br />
    <div class="container">
        <div class="row">
            <div class="col align-self-end">
                <asp:Button runat="server" ID="BtnCreate" CssClass="btn btn-success form-control-sm" Text="Crear" OnClick="BtnCreate_Click"/>
            </div>
        </div>
    </div>
    <br />
    <div class="container row">
        <div class="table small">
            <asp:GridView runat="server" ID="gvcategoria" class="table table-borderless table-hover">
                <Columns>
                    <asp:TemplateField HeaderText="Opciones del admin">
                        <ItemTemplate>
                            <asp:Button runat="server" Text="Leer" CssClass="btn form-control-sm btn-info" ID="BtnLeer"/>
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
