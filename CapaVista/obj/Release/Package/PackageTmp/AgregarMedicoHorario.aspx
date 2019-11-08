<%@ Page Title="" Language="C#" MasterPageFile="~/Formulario.Master" AutoEventWireup="true" CodeBehind="AgregarMedicoHorario.aspx.cs" Inherits="CapaVista.AgregarMedicoHorario" %>
<asp:Content ID="Content1" ContentPlaceHolderID="cph_head" runat="server">
    <style type="text/css">
        .auto-style1 {
            width: 192px;
        }
        .auto-style2 {
            color: #fff;
            width: 192px;
        }
        .auto-style3 {
            width: 113px;
        }
        .auto-style4 {
            width: 376px;
        }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="cph_login" runat="server">


      <center><table class="alt" style="width: 775px">

        <tr>
            <td class="auto-style6">
                
            </td>
            <td class="auto-style1">
                <asp:Label ID="lbl_mensaje" runat="server" Text="Label"></asp:Label>
            </td>
            <td class="auto-style4">&nbsp;</td>
            <td class="auto-style15">&nbsp;</td>
            
        </tr>
        <tr>
            <td class="auto-style3">
                &nbsp;</td>
            <td class="auto-style2">
                Medico especialista</td>
            <td class="auto-style4">
                <asp:DropDownList ID="ddl_medico" runat="server" BackColor="Black">
                </asp:DropDownList>
            </td>
            <td class="auto-style15">&nbsp;</td>
        </tr>
        <tr>
            <td class="auto-style14">
                &nbsp;</td>
            <td class="auto-style2">
                Fecha</td>
            <td class="auto-style4">
                <asp:TextBox ID="txt_fecha" runat="server"></asp:TextBox>
            </td>
            <td class="auto-style15">&nbsp;</td>
        </tr>
        <tr>
            <td class="auto-style6">
                &nbsp;</td>
            <td class="auto-style2">
                Hora inicio</td>
            <td class="auto-style4">
                <asp:TextBox ID="txt_hi" runat="server"></asp:TextBox>
            </td>
            <td class="auto-style15">&nbsp;</td>
        </tr>
        <tr>
            <td class="auto-style6">&nbsp;</td>
            <td class="auto-style2">
                Hora fin</td>
            <td class="auto-style4">
                <asp:TextBox ID="txt_hf" runat="server"></asp:TextBox>
            </td>
            <td class="auto-style15">&nbsp;</td>
        </tr>
          <tr>
            <td class="auto-style6">
                
            </td>
            <td class="auto-style1">Estado</td>
            <td class="auto-style4">
                <asp:TextBox ID="txt_estado" runat="server"></asp:TextBox>
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
