<%@ Page Title="" Language="C#" MasterPageFile="~/MenuCliente.Master" AutoEventWireup="true" CodeBehind="WebForm1.aspx.cs" Inherits="CapaVista.WebForm1" %>
<asp:Content ID="Content1" ContentPlaceHolderID="cph_formu" runat="server">
    <asp:GridView ID="GridView1" runat="server"></asp:GridView>

    <asp:CheckBoxList ID="CheckBoxList1" runat="server">
</asp:CheckBoxList>
<asp:DropDownList ID="DropDownList1" runat="server">
</asp:DropDownList>
<asp:RadioButtonList ID="RadioButtonList1" runat="server">
</asp:RadioButtonList>
<br />

    <asp:TextBox ID="TextBox1" runat="server" ></asp:TextBox>
    <asp:Button ID="Button1" runat="server" OnClick="Button1_Click" Text="Button" />

</asp:Content>