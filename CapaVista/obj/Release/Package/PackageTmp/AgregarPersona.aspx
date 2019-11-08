<%@ Page Title="" Language="C#" MasterPageFile="~/Formulario.Master" AutoEventWireup="true" CodeBehind="AgregarPersona.aspx.cs" Inherits="CapaVista.AgregarPersona" %>
<asp:Content ID="Content1" ContentPlaceHolderID="cph_head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="cph_login" runat="server">

     <center>&nbsp;&nbsp;&nbsp; <table class="alt" style="width: 775px">

        <tr>
            <td class="auto-style6">
                
            </td>
            <td class="auto-style10">&nbsp;</td>
            <td class="auto-style6">
                <asp:Label ID="lbl_mensaje" runat="server" Text="  "></asp:Label>
            </td>
            <td class="auto-style15">&nbsp;</td>
            
        </tr>
        <tr>
            <td class="auto-style3">
                &nbsp;</td>
            <td class="fa-inverse">
                Nombres</td>
            <td class="auto-style3">
                <asp:TextBox ID="txt_nombre" runat="server" Width="181px" CssClass="auto-style9"></asp:TextBox>
            </td>
            <td class="auto-style15">&nbsp;</td>
        </tr>
        <tr>
            <td class="auto-style14">
                &nbsp;</td>
            <td class="fa-inverse">
                Apellidos</td>
            <td class="auto-style14">
                <asp:TextBox ID="txt_apellido" runat="server" Width="181px" CssClass="auto-style9"></asp:TextBox>
            </td>
            <td class="auto-style15">&nbsp;</td>
        </tr>
        <tr>
            <td class="auto-style6">
                &nbsp;</td>
            <td class="fa-inverse">
                Cédula</td>
            <td class="auto-style6">
                <asp:TextBox ID="txt_cedula" runat="server" Width="181px" CssClass="auto-style9"></asp:TextBox>
            </td>
            <td class="auto-style15">&nbsp;</td>
        </tr>
        <tr>
            <td class="auto-style6">&nbsp;</td>
            <td class="fa-inverse">
                Correo electrónico</td>
            <td class="auto-style6">
                <asp:TextBox ID="txt_correo" runat="server" Width="181px" CssClass="auto-style9"></asp:TextBox>
            </td>
            <td class="auto-style15">&nbsp;</td>
        </tr>
         <tr>
            <td class="auto-style6">&nbsp;</td>
            <td class="fa-inverse">
                Telefono</td>
            <td class="auto-style6">
                <asp:TextBox ID="txt_telefono" runat="server" Width="181px" CssClass="auto-style9"></asp:TextBox>
            </td>
            <td class="auto-style15">&nbsp;</td>
        </tr>

         <tr>
            <td class="auto-style6">&nbsp;</td>
            <td class="fa-inverse">
                Fecha nacimiento</td>
            <td class="auto-style6">
                <asp:TextBox ID="txt_nacimiento" runat="server" Width="181px" CssClass="auto-style9"></asp:TextBox>
            </td>
            <td class="auto-style15">&nbsp;</td>
        </tr>

         <tr>
            <td class="auto-style6">&nbsp;</td>
            <td class="fa-inverse">
                Género</td>
            <td class="auto-style6">
                <asp:TextBox ID="txt_genero" runat="server" Width="181px" CssClass="auto-style9"></asp:TextBox>
            </td>
            <td class="auto-style15">&nbsp;</td>
        </tr>
         <tr>
            <td class="auto-style6">&nbsp;</td>
            <td class="fa-inverse">
                Dirección</td>
            <td class="auto-style6">
                <asp:TextBox ID="txt_direccion" runat="server" Width="181px" CssClass="auto-style9"></asp:TextBox>
            </td>
            <td class="auto-style15">&nbsp;</td>
        </tr>

         <tr>
            <td class="auto-style6">&nbsp;</td>
            <td class="fa-inverse">
                Usuario</td>
            <td class="auto-style6">
                <asp:TextBox ID="txt_usuario" runat="server" Width="181px" CssClass="auto-style9" OnTextChanged="TextBox4_TextChanged"></asp:TextBox>
            </td>
            <td class="auto-style15">&nbsp;</td>
        </tr>
         <tr>
            <td class="auto-style6">&nbsp;</td>
            <td class="fa-inverse">
                Contraseña</td>
            <td class="auto-style6">
                <asp:TextBox ID="txt_contra" runat="server" Width="181px" CssClass="auto-style9"></asp:TextBox>
            </td>
            <td class="auto-style15">&nbsp;</td>
        </tr>

         <tr>
            <td class="auto-style6">&nbsp;</td>
            <td class="fa-inverse">
                Rol Usuario</td>
            <td class="auto-style6">
                <asp:DropDownList ID="ddl_tipousu" runat="server">
                </asp:DropDownList>
            </td>
            <td class="auto-style15">&nbsp;</td>
        </tr>

      <tr>
            <td colspan="4">
                               <center> <asp:Button ID="btn_nuevo" runat="server" CssClass="button alt" Text="Nuevo" Width="104px" OnClick="btn_nuevo_Click"  />
                                <asp:Button ID="btn_guardar" runat="server" CssClass="button alt" Text="Guardar" Width="104px" OnClick="btn_guardar_Click" />
                                <asp:Button ID="btn_modificar" runat="server" CssClass="button alt" Text="Modificar" Width="104px" OnClick="btn_modificar_Click"  />
                                <asp:Button ID="btn_regresar" runat="server" CssClass="button alt" Text="Regresar" Width="104px" OnClick="btn_regresar_Click"  />
                                   </center>
            
            </td>
        </tr>
   </table></center>


</asp:Content>
