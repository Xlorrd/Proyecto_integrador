<%@ Page Title="" Language="C#" MasterPageFile="~/Login.Master" AutoEventWireup="true" CodeBehind="Sesion.aspx.cs" Inherits="CapaVista.Sesion" %>
<asp:Content ID="Content1" ContentPlaceHolderID="cph_head" runat="server">
    <style type="text/css">
        .auto-style7 {
            width: 286px;
        }
        </style>
</asp:Content>

<asp:Content ID="Content2" ContentPlaceHolderID="cph_contenido" runat="server">

</asp:Content>

<asp:Content ID="Content3" runat="server" contentplaceholderid="cph_login">
    <asp:UpdatePanel ID="UpdatePanel1" runat="server"><ContentTemplate>
   <center><table class="alt">
        <tr>
            <td>
            <asp:Label ID="Label1" runat="server" Text="Usuario"></asp:Label>
            </td>
            <td class="auto-style7">
            <asp:TextBox ID="txt_usu" runat="server"  Width="275px"></asp:TextBox>
                <asp:ScriptManager ID="ScriptManager1" runat="server">
                </asp:ScriptManager>
            </td>
            
        </tr>
        <tr>
            <td>
            <asp:Label ID="Label2" runat="server" Text="Contraseña"></asp:Label>
            </td>
            <td class="auto-style7">
            <asp:TextBox ID="txt_pas" TextMode="Password" runat="server" Width="273px"></asp:TextBox>
            </td>
           
        </tr>
    </table></center> 
            <asp:Label ID="intento" runat="server" Text=""></asp:Label>
                <asp:Button ID="btn_iniciar" runat="server" CssClass="button alt" OnClick="btn_iniciar_Click" Text="Iniciar" Width="104px" />
               <br />
        <br />
               <a href ="RestablecerPass.aspx"> Olvidaste tu contraseña </a>
  </ContentTemplate></asp:UpdatePanel>
            
</asp:Content>

