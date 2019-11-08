<%@ Page Title="" Language="C#" MasterPageFile="~/Formulario.Master" AutoEventWireup="true" CodeBehind="AgregarPaciente.aspx.cs" Inherits="CapaVista.AgregarPaciente" %>
<asp:Content ID="Content1" ContentPlaceHolderID="cph_head" runat="server">
    <style type="text/css">
        .auto-style1 {
            width: 11px;
        }
        .auto-style2 {
            margin-bottom: 0px;
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
            <td class="auto-style6">&nbsp;</td>
            <td class="auto-style1">&nbsp;</td>
            
        </tr>
        <tr>
            <td class="auto-style3">
                &nbsp;</td>
            <td class="fa-inverse">
                Peso</td>
            <td class="auto-style3">
                <asp:TextBox ID="txt_peso" runat="server" Width="181px" CssClass="auto-style9"></asp:TextBox>
            </td>
            <td class="auto-style1">&nbsp;</td>
        </tr>
        <tr>
            <td class="auto-style14">
                &nbsp;</td>
            <td class="fa-inverse">
                Tipo sangre</td>
            <td class="auto-style14">
                <asp:TextBox ID="txt_tiposangre" runat="server" Width="181px" CssClass="auto-style9"></asp:TextBox>
            </td>
            <td class="auto-style1">&nbsp;</td>
        </tr>
        <tr>
            <td class="auto-style6">
                &nbsp;</td>
            <td class="fa-inverse">
                Estatura</td>
            <td class="auto-style6">
                <asp:TextBox ID="txt_estatura" runat="server" Width="181px" CssClass="auto-style9"></asp:TextBox>
            </td>
            <td class="auto-style1">&nbsp;</td>
        </tr>
        <tr>
            <td class="auto-style6">&nbsp;</td>
            <td class="fa-inverse">
                Persona</td>
            <td class="auto-style6">
                <asp:DropDownList ID="ddl_persona" runat="server" CssClass="auto-style2" BackColor="Black">
                </asp:DropDownList>
            </td>
            <td class="auto-style1">&nbsp;</td>
        </tr>
         <tr>
            <td class="auto-style6" colspan="4">
                               <center> <asp:Button ID="btn_nuevo" runat="server" CssClass="button alt" Text="Nuevo" Width="104px" OnClick="btn_nuevo_Click"  />
                                <asp:Button ID="btn_guardar" runat="server" CssClass="button alt" Text="Guardar" Width="104px" OnClick="btn_guardar_Click" />
                                <asp:Button ID="btn_modificar" runat="server" CssClass="button alt" Text="Modificar" Width="104px" OnClick="btn_modificar_Click"  />
                                <asp:Button ID="btn_regresar" runat="server" CssClass="button alt" Text="Regresar" Width="104px" OnClick="btn_regresar_Click"  />
                                   </center>
            
             </td>
        </tr>
      </table></center>
</asp:Content>
