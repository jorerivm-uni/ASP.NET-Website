<%@ Page Title="" Language="C#" MasterPageFile="~/Home.Master" AutoEventWireup="true" CodeBehind="Producto.aspx.cs" Inherits="Login_InfoToolsSV.Producto" %>
<asp:Content ID="Content1" ContentPlaceHolderID="title" runat="server">
    Producto
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
                                                <asp:Label ID="lblMarca" runat="server" Text="Nombre:"></asp:Label>
                                                <asp:Textbox runat="server" ID="nombre" CssClass="form-control" type="text" placeholder="Whey"></asp:Textbox>
                                                
                                            </div>

                                            <div class="form-floating mb-3">
                                                
                                                <asp:Label ID="lblDescripcion" runat="server" Text="Descripcion:"></asp:Label>
                                                <asp:Textbox runat="server" ID="descripcion" CssClass="form-control" type="text" placeholder="2 libras" ></asp:Textbox>
                                                                   
                                            </div>

                                             <div class="form-floating mb-3">
                                                
                                                <asp:Label ID="lblCategoria" runat="server" Text="Categoria:"></asp:Label>
                                                <asp:Textbox runat="server" ID="categoria" CssClass="form-control" type="text" placeholder="Proteina" ></asp:Textbox>
                                                                   
                                            </div>   

                                                 <div class="form-floating mb-3">
                                                
                                                <asp:Label ID="lblStock" runat="server" Text="Stock:"></asp:Label>
                                                <asp:Textbox runat="server" ID="stock" CssClass="form-control" type="tel" placeholder="7" ></asp:Textbox>
                                                                   
                                                </div>    
                                            
                                              <div class="form-floating mb-3">
                                                
                                                <asp:Label ID="lblPrecio" runat="server" Text="Precio:"></asp:Label>
                                                <asp:Textbox runat="server" ID="precio" CssClass="form-control" type="tel" placeholder="700"></asp:Textbox>
                                                                   
                                            </div>  

                                             <div class="form-floating mb-3">
                                                
                                                <asp:Label ID="lblFecha" runat="server" Text="Fecha:"></asp:Label>
                                                <asp:Textbox runat="server" ID="fecha" CssClass="form-control" TextMode="DateTime" placeholder="12/10/23" ></asp:Textbox>
                                                                   
                                            </div>  


                                              
                                                     

                                                    <asp:Button runat="server" ID="btningresa" CssClass="btn btn-success form-control-sm" Text="Crear" Visible="false" OnClick="btningresa_Click"/>
                                                    <asp:Button runat="server" ID="btnactualizar" CssClass="btn form-control-sm btn-warning" Text="Actualizar" visible="false" OnClick="btnactualizar_Click"/>
                                                    <asp:Button runat="server" ID="btnborrar" CssClass="btn form-control-sm btn-danger"  Text="Borrar" visible="false" OnClick="btnborrar_Click"/>
                                                    <asp:Button runat="server" ID="btnvolver" CssClass="btn form-control-sm btn-dark" Text="Volver" visible="true" OnClick="btnvolver_Click"/>
                                               
                                          
                                        </form>
                                     </div> <!--fin card body-->  

                         </div>
                    </div>
                </div>
            </div>
        <!--</div>--->
    
     </body>








</asp:Content>
