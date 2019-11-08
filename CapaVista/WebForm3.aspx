<%@ Page Title="" Language="C#" MasterPageFile="~/prueba.Master" AutoEventWireup="true" CodeBehind="WebForm3.aspx.cs" Inherits="CapaVista.WebForm3" %>
<asp:Content ID="Content1" ContentPlaceHolderID="cph_header" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="cph_user" runat="server">
</asp:Content>
<asp:Content ID="Content3" ContentPlaceHolderID="cph_formu" runat="server">
    <asp:TextBox ID="usu_id" runat="server"></asp:TextBox>

    <asp:FileUpload ID="FileUpload1" acept=".jpg" runat="server" />

    <asp:Button ID="Button1" runat="server" Text="Button" OnClick="Button1_Click" />
    <asp:Label ID="lbl_mensaje" runat="server" Text="Label"></asp:Label>
    <br />
    <asp:Image ID="Image1" runat="server" />
    <br />
    <br />
    <asp:Button ID="cargar" runat="server" Text="Button" OnClick="cargar_Click" />


    <div>

        <asp:Repeater ID="repeater" runat="server">
            <ItemTemplate>

            </ItemTemplate>
        </asp:Repeater>
    </div>
</asp:Content>
