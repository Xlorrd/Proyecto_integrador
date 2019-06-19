<%@ Page Title="" Language="C#" MasterPageFile="~/Administrador.Master" AutoEventWireup="true" CodeBehind="MenuAdministrador.aspx.cs" Inherits="CapaVista.MenuAdministrador" %>
<asp:Content ID="Content1" ContentPlaceHolderID="User" runat="server">
    
    
    <asp:Label  Font-Size="X-Large"   ID="usu" runat="server" Text="Invitado"></asp:Label>
 
  
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="Menu" runat="server">
        <center><asp:button id="btn_salir" cssclass="button special" runat="server" text="Cerrar Sesión " onclick="btn_salir_click"/></center>
      
          <li><a href="MenuAdministrador.aspx">Inicio</a></li>
		  <li><a href="Calculadora.html">Sistema Calculadora</a></li>
   		  <li><a href="Calculadora.html">Sistema Calculadora</a></li>
    
        
</asp:Content>
