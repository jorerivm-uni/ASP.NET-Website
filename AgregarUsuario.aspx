<%@ Page Title="" Language="C#" MasterPageFile="~/Home.Master" AutoEventWireup="true" CodeBehind="AgregarUsuario.aspx.cs" Inherits="Login_InfoToolsSV.AgregarUsuario" %>
<asp:Content ID="Content1" ContentPlaceHolderID="title" runat="server">
    Agregar usuario
   

</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="head" runat="server">

        <!-- poner script y stilos para algunos controles, css,javascript-->

</asp:Content>
<asp:Content ID="Content3" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">


    <div class="field"><h2 class="text-center font-weight-light my-4">Registrar Usuario</h2></div>
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
                                            
                                            <div class="mt-4 mb-0">
                                                
                                                <div class="d-grid">
                                                    
                                                    <!--<a class="btn btn-primary btn-block" runat="server" id="registrar" Onclick="RegistrarClick" href="AgregarUsuario.aspx">Registrar</a>-->
                                                    <asp:Button runat="server" ID="ingresa" CssClass="button is-link" OnClick="RegistarClick"  Text="Enviar" />
                                                </div>

                                            </div>
                                        </form>
                                    </div>


</asp:Content>
