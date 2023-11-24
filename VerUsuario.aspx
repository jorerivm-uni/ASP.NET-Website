﻿<%@ Page Title="" Language="C#" MasterPageFile="~/Home.Master" AutoEventWireup="true" CodeBehind="VerUsuario.aspx.cs" Inherits="Login_InfoToolsSV.VerUsuario" %>
<asp:Content ID="Content1" ContentPlaceHolderID="title" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content3" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">

    <form>
    <div class="mx-auto" style="width:300px">
        <h2>Listado de registros</h2>
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
            <asp:GridView runat="server" ID="gvusuarios" class="table table-borderless table-hover">
                <Columns>
                    <asp:TemplateField HeaderText="Opciones del admin">
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
        </form>
</asp:Content>
