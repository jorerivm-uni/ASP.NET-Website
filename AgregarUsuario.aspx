<%@ Page Title="" Language="C#" MasterPageFile="~/Home.Master" AutoEventWireup="true" CodeBehind="AgregarUsuario.aspx.cs" Inherits="Login_InfoToolsSV.AgregarUsuario" %>
<asp:Content ID="Content1" ContentPlaceHolderID="title" runat="server">
    CRUD-USER
   

</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="head" runat="server">

        <!-- poner script y stilos para algunos controles, css,javascript-->

</asp:Content>
<asp:Content ID="Content3" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">


   

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
                                                <asp:Label ID="lblUsuario" runat="server" Text="Usuario:"></asp:Label>
                                                <asp:Textbox runat="server" ID="usuario" CssClass="form-control" type="text" placeholder="Lewandoski" ></asp:Textbox>
                                                
                                            </div>
                                            
                                            <div class="form-floating mb-3">
                                                
                                                <asp:Label ID="lblPassword" runat="server" Text="Contraseña:"></asp:Label>
                                                <asp:Textbox runat="server" ID="contra" CssClass="form-control" type="password" placeholder="********" ></asp:Textbox>
                                                                   
                                            </div>
                                                

                                           
                                                    <asp:Button runat="server" ID="btningresa" CssClass="btn btn-success form-control-sm" OnClick="RegistarClick"  Text="Crear" Visible="false" />
                                                    
                                                    <asp:Button runat="server" ID="btnborrar" CssClass="btn form-control-sm btn-danger"  Text="Borrar" visible="false" OnClick="btnborrar_Click"/>
                                                    <asp:Button runat="server" ID="btnvolver" CssClass="btn form-control-sm btn-dark" Text="Volver" visible="true" OnClick="btnvolver_Click"/>
                                              
                                                     

 
                                               
                                          
                                        </form>
                                     </div> <!--fin card body-->  

                         </div>
                    </div>
                </div>
            </div>

                                

    


</asp:Content>
