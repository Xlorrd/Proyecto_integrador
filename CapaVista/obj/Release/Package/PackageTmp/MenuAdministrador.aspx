<%@ Page Title="" Language="C#" MasterPageFile="~/Administrador.Master" AutoEventWireup="true" CodeBehind="MenuAdministrador.aspx.cs" Inherits="CapaVista.MenuAdministrador" %>



<asp:Content ID="Content1" ContentPlaceHolderID="User" runat="server">
    
        <center><asp:button id="btn_salir" cssclass="button special" runat="server" text="Cerrar Sesión " onclick="btn_salir_click"/></center>
    
    <asp:Label  Font-Size="X-Large"   ID="usu" runat="server" Text="Invitado"></asp:Label>
 
  
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="Menu" runat="server">
      
          <li><a href="MenuAdministrador.aspx">Inicio</a></li>
		  <li><a href="ListaCitas.aspx">Citas</a></li>
   		  <li><a href="ListaEspecialidad.aspx">Especialidades</a></li>
       		  <li><a href="ListaEspecialidadMedico.aspx">Médicos especialistas</a></li>
       		  <li><a href="ListaPaciente.aspx">Pacientes</a></li>
       		  <li><a href="ListaPersona.aspx">Personas</a></li>
       		  <li><a href="ListaTipousuario.aspx">Roles usuario</a></li>

       		  <li><a href="WebForm1.aspx">prueba</a></li>
    
        
</asp:Content>
