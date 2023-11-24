<%@ Page Title="" Language="C#" MasterPageFile="~/Home.Master" AutoEventWireup="true" CodeBehind="AgregarUsuario.aspx.cs" Inherits="Login_InfoToolsSV.AgregarUsuario" %>
<asp:Content ID="Content1" ContentPlaceHolderID="title" runat="server">
    CRUD-USER
   

</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="head" runat="server">

        <!-- poner script y stilos para algunos controles, css,javascript-->

</asp:Content>
<asp:Content ID="Content3" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">


    <!--<div class="field"><h2 class="text-center font-weight-light my-4">Registrar Usuario</h2></div>-->
    <!--titulo-->
    <div class="mx-auto" style="width:250px">
        <asp:Label runat="server" CssClass="h2" ID="lbltitulo"></asp:Label>
    </div>
                                 <div class="field">
                                        <form>
                                            <div class="form-floating mb-3">
                                                <asp:Label ID="lblUsuario" runat="server" Text="Usuario:"></asp:Label>
                                                <asp:Textbox runat="server" ID="usuario" CssClass="form-control" type="text" placeholder="Lewandoski" ></asp:Textbox>
                                                
                                            </div>
                                            
                                            <div class="form-floating mb-3">
                                                
                                                <asp:Label ID="lblPassword" runat="server" Text="Contraseña:"></asp:Label>
                                                <asp:Textbox runat="server" ID="contra" CssClass="form-control" type="password" placeholder="********" ></asp:Textbox>
                                                                   
                                            </div>
                                                

                                            <!--<div class="form-floating mb-3">
                                                <input class="form-control" id="rol" type="number" placeholder="Admin" />
                                                <label for="rol">Rol</label>
                                            </div>-->
                                            
                                           <!-- <div class="mt-4 mb-0">
                                                
                                                <div class="d-grid">-->
                                                    
                                                    <!--<a class="btn btn-primary btn-block" runat="server" id="registrar" Onclick="RegistrarClick" href="AgregarUsuario.aspx">Registrar</a>-->
                                                    <asp:Button runat="server" ID="btningresa" CssClass="btn btn-success form-control-sm" OnClick="RegistarClick"  Text="Crear" Visible="false" />
                                                    <asp:Button runat="server" ID="btnactualizar" CssClass="btn form-control-sm btn-warning" Text="Actualizar" visible="false" OnClick="btnactualizar_Click"/>
                                                    <asp:Button runat="server" ID="btnborrar" CssClass="btn form-control-sm btn-danger"  Text="Borrar" visible="false" OnClick="btnborrar_Click"/>
                                                    <asp:Button runat="server" ID="btnvolver" CssClass="btn form-control-sm btn-dark" Text="Volver" visible="true" OnClick="btnvolver_Click"/>
                                               <!-- </div>

                                            </div>-->
                                        </form>
                                    </div>

    <!--<asp:GridView class="table text-center mx-auto" runat="server" ID="datos" Width="100%">

    </asp:GridView>-->


</asp:Content>
