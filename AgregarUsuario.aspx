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
                                                <input class="form-control" id="usuario" type="text" placeholder="Lewandoski" />
                                                <label for="usuario">Usuario</label>
                                                
                                            </div>
                                            <div class="form-floating mb-3">
                                                <input class="form-control" id="contra" type="text" placeholder="********" />
                                                <label for="contra">Contraseña</label>
                                            </div>
                                            <div class="form-floating mb-3">
                                                <input class="form-control" id="rol" type="text" placeholder="Admin" />
                                                <label for="rol">Rol</label>
                                            </div>
                                            
                                            <div class="mt-4 mb-0">
                                                
                                                <div class="d-grid"><a class="btn btn-primary btn-block" runat="server" id="registrar" href="AgregarUsuario.aspx">Registrar</a></div>
                                            </div>
                                        </form>
                                    </div>


</asp:Content>
