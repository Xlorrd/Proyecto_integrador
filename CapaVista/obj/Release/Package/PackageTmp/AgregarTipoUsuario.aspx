<%@ Page Title="" Language="C#" MasterPageFile="~/Formulario.Master" AutoEventWireup="true" CodeBehind="AgregarTipoUsuario.aspx.cs" Inherits="CapaVista.AgregarTipoUsuario" %>
<asp:Content ID="Content1" ContentPlaceHolderID="cph_head" runat="server">
    <style type="text/css">
        .auto-style1 {
            width: 326px;
        }
        .auto-style2 {
            width: 186px;
        }
        .auto-style3 {
            width: 160px;
        }
        .auto-style4 {
            color: #fff;
            width: 160px;
        }
        .auto-style5 {
            height: 21px;
        }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="cph_login" runat="server">

    
      <center><table class="alt" style="width: 775px">

        <tr>
            <td class="auto-style2">
                
            </td>
            <td class="auto-style3">&nbsp;</td>
            <td class="auto-style1">
                <asp:Label ID="lbl_mensaje" runat="server" Text=""></asp:Label>
            </td>
            <td class="auto-style15">&nbsp;</td>
            
        </tr>
        <tr>
            <td class="auto-style2">
                &nbsp;</td>
            <td class="auto-style4">
                Descripción rol</td>
            <td class="auto-style1">
                <asp:TextBox ID="txt_roll" runat="server" Width="324px" CssClass="auto-style9"></asp:TextBox>
            </td>
            <td class="auto-style15"></td>
        </tr>
        <tr>
            <td class="auto-style2">
                &nbsp;</td>
            <td class="auto-style4">
                Estdo</td>
            <td class="auto-style1">
                <asp:TextBox ID="txt_estado" runat="server" Width="322px"></asp:TextBox>
            </td>
            <td class="auto-style15">&nbsp;</td>
        </tr>
      <tr>
            <td colspan="4" class="auto-style5">
                               <center> <asp:Button ID="btn_nuevo" runat="server" CssClass="button alt" Text="Nuevo" Width="104px" OnClick="btn_nuevo_Click"  />
                                <asp:Button ID="btn_guardar" runat="server" CssClass="button alt" Text="Guardar" Width="104px" OnClick="btn_guardar_Click" />
                                <asp:Button ID="btn_modificar" runat="server" CssClass="button alt" Text="Modificar" Width="104px" OnClick="btn_modificar_Click"  />
                                <asp:Button ID="btn_regresar" runat="server" CssClass="button alt" Text="Regresar" Width="104px" OnClick="btn_regresar_Click"  />
                                   </center>
            
            </td>
        </tr>
   </table></center>

</asp:Content>
