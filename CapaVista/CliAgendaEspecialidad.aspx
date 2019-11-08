<%@ Page Title="" Language="C#" MasterPageFile="~/MenuCliente.Master" AutoEventWireup="true" CodeBehind="CliAgendaEspecialidad.aspx.cs" Inherits="CapaVista.ClienteMenu" %>

<asp:Content ID="Content2" ContentPlaceHolderID="cph_header" runat="server">

    Especialidades
</asp:Content>

<asp:Content ID="Content3" ContentPlaceHolderID="cph_titulo" runat="server">

    Especialidades
</asp:Content>

<asp:Content ID="usuario" ContentPlaceHolderID="cph_user" runat="server">
    <asp:Label ID="lbl_usuario" runat="server" Text=""></asp:Label>
</asp:Content>

<asp:Content ID="Content1" ContentPlaceHolderID="cph_formu" runat="server">


    
                          <div class="text-center">
                              <asp:RadioButtonList ID="RadioButtonList1" runat="server">
                              </asp:RadioButtonList>
                        <asp:Button ID="btn_regs_espe" runat="server" class="btn btn-primary mt-4"  Text="Siguiente" style="left: 0px; top: 0px" OnClick="btn_regs_espe_Click"  />
                    </div>

    
</asp:Content>