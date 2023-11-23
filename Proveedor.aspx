<%@ Page Title="" Language="C#" MasterPageFile="~/Home.Master" AutoEventWireup="true" CodeBehind="Proveedor.aspx.cs" Inherits="Login_InfoToolsSV.Proveedor" %>
<asp:Content ID="Content1" ContentPlaceHolderID="title" runat="server">
    Proveedor
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="head" runat="server">

</asp:Content>
<asp:Content ID="Content3" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">

    <body>
        <div class="container">
            <div class="row justify-content-center">
                <div class="col-lg-7">
                    <div class="card shadow-lg border-0 rounded-lg mt-5">
                         <div class="card-header">
                             <h3 class="text-center font-weight-light my-4">
                                 <asp:Label runat="server" ID="lbltitulo"></asp:Label>
                             </h3>
                           
                         </div>
                                 <div class="card-body">
                                        <form>
                                            <div class="form-floating mb-3">
                                                <asp:Label ID="lblid" runat="server" Text="Id:" Visible="false"></asp:Label>
                                                <asp:Textbox runat="server" ID="id" CssClass="form-control" type="tel" placeholder="0" Visible="false"></asp:Textbox>
                                                
                                            </div>
                                            <div class="form-floating mb-3">
                                                <asp:Label ID="lblProveedor" runat="server" Text="Proveedor:"></asp:Label>
                                                <asp:Textbox runat="server" ID="proveedor" CssClass="form-control" type="text" placeholder="Axel"></asp:Textbox>
                                                
                                            </div>
                                            <div class="form-floating mb-3">
                                                
                                                <asp:Label ID="lblDireccion" runat="server" Text="Direccion:"></asp:Label>
                                                <asp:Textbox runat="server" ID="direccion" CssClass="form-control" type="text" placeholder="la caimana" ></asp:Textbox>
                                                                   
                                            </div>
                                             <div class="form-floating mb-3">
                                                
                                                <asp:Label ID="lblTel" runat="server" Text="Telefono:"></asp:Label>
                                                <asp:Textbox runat="server" ID="telefono" CssClass="form-control" type="tel" placeholder="80123456" ></asp:Textbox>
                                                                   
                                            </div>   
                                                                          
                                                  
                                                    <asp:Button runat="server" ID="btningresa" CssClass="btn btn-success form-control-sm" Text="Crear" Visible="false" OnClick="btningresa_Click"/>
                                                    <asp:Button runat="server" ID="btnactualizar" CssClass="btn form-control-sm btn-warning" Text="Actualizar" visible="false" OnClick="btnactualizar_Click"/>
                                                    <asp:Button runat="server" ID="btnborrar" CssClass="btn form-control-sm btn-danger"  Text="Borrar" visible="false" OnClick="btnborrar_Click"/>
                                                    <asp:Button runat="server" ID="btnvolver" CssClass="btn form-control-sm btn-dark" Text="Volver" visible="true" OnClick="btnvolver_Click"/>
                                               
                                          
                                        </form>
                                    </div>
                    </div>
                </div>
            </div>
        </div>
    
        

   

     </body>


</asp:Content>
