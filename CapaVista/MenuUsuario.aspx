<%@ Page Title="" Language="C#" MasterPageFile="~/Usuario.Master" AutoEventWireup="true" CodeBehind="MenuUsuario.aspx.cs" Inherits="CapaVista.MenuUsuario1" %>
<asp:Content ID="Content1" ContentPlaceHolderID="User" runat="server">
     <asp:Label  Font-Size="X-Large"   ID="usu" runat="server" Text="administrador"></asp:Label>
   <asp:Button CssClass="button special" ID="btn_cerrar" runat="server" Text="Cerrar" OnClick="btn_cerrar_Click" />
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="Menu" runat="server">


</asp:Content>
