<%@ Page Title="" Language="C#" MasterPageFile="~/Formulario.Master" AutoEventWireup="true" CodeBehind="AgregarMedico.aspx.cs" Inherits="CapaVista.AgregarMedico" %>
<asp:Content ID="Content1" ContentPlaceHolderID="cph_head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="cph_login" runat="server">
    <center><table class="alt" style="width: 775px">

        <tr>
            <td class="auto-style6">
                
            </td>
            <td class="auto-style10">
                <asp:Label ID="lbl_mensaje" runat="server" Text="Label"></asp:Label>
            </td>
            <td class="auto-style6">&nbsp;</td>
            <td class="auto-style15">&nbsp;</td>
            
        </tr>
        <tr>
            <td class="auto-style3">
                &nbsp;</td>
            <td class="fa-inverse">
                Med abreviatura</td>
            <td class="auto-style3">
                <asp:TextBox ID="txt_abre" runat="server" Width="190px" CssClass="auto-style9"></asp:TextBox>
            </td>
            <td class="auto-style15">&nbsp;</td>
        </tr>
        <tr>
            <td class="auto-style14">
                &nbsp;</td>
            <td class="fa-inverse">
                Persona</td>
            <td class="auto-style14">
                <asp:DropDownList ID="ddl_persona" BackColor="#000000" runat="server" OnSelectedIndexChanged="ddl_persona_SelectedIndexChanged">
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
