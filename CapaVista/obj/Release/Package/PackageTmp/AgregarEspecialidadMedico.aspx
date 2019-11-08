<%@ Page Title="" Language="C#" MasterPageFile="~/Formulario.Master" AutoEventWireup="true" CodeBehind="AgregarEspecialidadMedico.aspx.cs" Inherits="CapaVista.AgregarEspecialidadMedico" %>
<asp:Content ID="Content1" ContentPlaceHolderID="cph_head" runat="server">
    <style type="text/css">
        .auto-style1 {
            width: 437px;
        }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="cph_login" runat="server">

      <center><table class="alt" style="width: 775px">

        <tr>
            <td class="auto-style6">
                
            </td>
            <td class="auto-style10">
                <asp:Label ID="lbl_mensaje" runat="server" Text="Label"></asp:Label>
            </td>
            <td class="auto-style1">
                <asp:Label ForeColor="White" ID="Especialid" runat="server" Text="Especialidad Médico"></asp:Label>
            </td>
            <td class="auto-style15">&nbsp;</td>
            
        </tr>
        <tr>
            <td class="auto-style3">
                &nbsp;</td>
            <td class="fa-inverse">
                Medico</td>
            <td class="auto-style1">
                <asp:DropDownList ID="ddl_medico" BackColor="#000000" runat="server" Height="40px" Width="437px">
                </asp:DropDownList>
            </td>
            <td class="auto-style15">&nbsp;</td>
        </tr>
        <tr>
            <td class="auto-style14">
                </td>
            <td class="fa-inverse">
                Especialidad</td>
            <td class="auto-style1">
                <asp:DropDownList ID="ddl_especialidad" BackColor="#000000" runat="server"  Height="40px" Width="437px">
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
