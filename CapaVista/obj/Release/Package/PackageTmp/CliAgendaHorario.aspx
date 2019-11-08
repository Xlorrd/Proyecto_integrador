<%@ Page Title="" Language="C#" MasterPageFile="~/MenuCliente.Master" AutoEventWireup="true" CodeBehind="CliAgendaHorario.aspx.cs" Inherits="CapaVista.CliAgendaHorario" %>
<asp:Content ID="Content1" ContentPlaceHolderID="cph_titulo" runat="server">
    Horarios disponibles
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="cph_formu" runat="server">
    <asp:RadioButtonList ID="rdl_medhor" runat="server">
    </asp:RadioButtonList>
        <div class="text-center">
                        <asp:Button ID="btn_siguiente" runat="server" class="btn btn-primary mt-4"  Text="Siguiente" style="left: 0px; top: 0px; width: 111px;" OnClick="btn_siguiente_Click"  />
         </div>
</asp:Content>

<asp:Content ID="usuario" ContentPlaceHolderID="cph_user" runat="server">
    <asp:Label ID="lbl_usuario" runat="server" Text=""></asp:Label>

          

</asp:Content>
