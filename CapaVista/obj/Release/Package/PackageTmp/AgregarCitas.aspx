<%@ Page Title="" Language="C#" MasterPageFile="~/Formulario.Master" AutoEventWireup="true" CodeBehind="AgregarCitas.aspx.cs" Inherits="CapaVista.ListaCitas" %>
<asp:Content ID="Content1" ContentPlaceHolderID="cph_head" runat="server">
    <style type="text/css">
        .auto-style3 {
            height: 21px;
            width: 114px;
        }
        .auto-style6 {
            width: 114px;
        }
        .auto-style10 {
            width: 259px;
        }
        .auto-style11 {
            width: 259px;
            height: 21px;
        }
        .auto-style13 {
            width: 259px;
            height: 27px;
        }
        .auto-style14 {
            width: 114px;
            height: 27px;
        }
        .auto-style15 {
            width: 165px;
        }
        .auto-style16 {
            width: 561px;
        }
        .auto-style17 {
            height: 21px;
            width: 561px;
        }
        .auto-style18 {
            width: 561px;
            height: 27px;
        }
        .auto-style22 {
            width: 165px;
            height: 5px;
        }
        .auto-style23 {
            width: 114px;
            height: 5px;
        }
        .auto-style24 {
            width: 259px;
            height: 5px;
        }
        .auto-style25 {
            width: 561px;
            height: 5px;
        }
        .auto-style26 {
            margin-left: 47;
        }
        </style>
    </asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="cph_login" runat="server">
    <center><table class="alt" style="width: 775px">

        <tr>
            <td class="auto-style23">
                
            </td>
            <td class="auto-style24"></td>
            <td class="auto-style25"></td>
            <td class="auto-style22"></td>
            
        </tr>
        <tr>
            <td class="auto-style3">
                &nbsp;</td>
            <td class="auto-style11">
                <asp:Label ForeColor="White" ID="Label1" runat="server" Text="Estado"></asp:Label>
            </td>
            <td class="auto-style17">
                <asp:DropDownList ForeColor="#999999"  ID="ddl_estado" runat="server" OnSelectedIndexChanged="ddl_estado_SelectedIndexChanged">
                    <asp:ListItem>Reservado</asp:ListItem>
                    <asp:ListItem>Cancelado</asp:ListItem>
                </asp:DropDownList>
            </td>
            <td class="auto-style15">&nbsp;</td>
        </tr>
        <tr>
            <td class="auto-style14">
                &nbsp;</td>
            <td class="auto-style13">
                <asp:Label ForeColor="White" ID="Label2" runat="server" Text="Paciente"></asp:Label>
            </td>
            <td class="auto-style18">
                <asp:DropDownList ID="ddlpaciente" runat="server" BackColor="Black">
                </asp:DropDownList>
            </td>
            <td class="auto-style15">&nbsp;</td>
        </tr>
        <tr>
            <td class="auto-style6">
                &nbsp;</td>
            <td class="auto-style10">
                &nbsp;</td>
            <td class="auto-style16">
                <asp:Label ID="Label3" runat="server" ForeColor="White" Text="Horario"></asp:Label>
                <asp:RadioButtonList ID="radhorario" runat="server" Width="440px" CssClass="auto-style26">
                </asp:RadioButtonList>
            </td>
            <td class="auto-style15">
                &nbsp;</td>
        </tr>
        <tr>
            <td class="auto-style6">&nbsp;</td>
            <td class="auto-style10">
                Motivo de la cita</td>
            <td class="auto-style16">
                <asp:TextBox ID="txt_motivo" runat="server"></asp:TextBox>
            </td>
            <td class="auto-style15">
                &nbsp;</td>
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
