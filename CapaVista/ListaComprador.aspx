<%@ Page Title="" Language="C#" MasterPageFile="~/Formulario.Master" AutoEventWireup="true" CodeBehind="ListaComprador.aspx.cs" Inherits="CapaVista.ListaComprador" %>
<asp:Content ID="Content1" ContentPlaceHolderID="cph_head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="cph_login" runat="server">

     <asp:UpdatePanel ID="UpdatePanel1" runat="server"><ContentTemplate>    <Center>
    <table class="alt"><asp:ScriptManager ID="ScriptManager1" runat="server"></asp:ScriptManager>
        <tr>
            <td class="auto-style3">
                <asp:LinkButton ID="lnk_nuevo" runat="server" OnClick="lnk_nuevo_Click1">Nuevo</asp:LinkButton>
            </td>
            <td class="auto-style2" colspan="2">
              <center class="fa-inverse">  Comprador</center>
            </td>
            <td class="auto-style5">&nbsp;</td>
        </tr>
        <tr>
            <td class="auto-style3">
                <asp:Label ID="Label1" ForeColor="White" runat="server" Text="Buscar por:"></asp:Label>
            </td>
            <td class="auto-style2">
                &nbsp;</td>
            <td class="auto-style4">
                &nbsp;</td>
            <td class="auto-style5">
                &nbsp;</td>
        </tr>
        <tr>
            <td class="auto-style3">
                &nbsp;</td>
            <td colspan="2">
                    <asp:GridView ID="GridView1" runat="server" OnRowCommand="GridView1_RowCommand" OnSelectedIndexChanged="GridView1_SelectedIndexChanged" CellPadding="4" ForeColor="#333333" GridLines="None">
                        <AlternatingRowStyle BackColor="White" ForeColor="#284775" />
                        <Columns>
                            <asp:TemplateField HeaderStyle-Width="17" ItemStyle-Width="17">
                                <ItemTemplate>
                                    <asp:ImageButton ID="img_editar" runat="server" CommandArgument='<%#Eval("ID")%>' CommandName="Edit" Height="16px" ImageUrl="~/images/editar10.gif" Width="16px" />
                                </ItemTemplate>
                                <HeaderStyle Width="17px" />
                                <ItemStyle Width="17px" />
                            </asp:TemplateField>
                            <asp:TemplateField HeaderStyle-Width="17" ItemStyle-Width="17">
                                <ItemTemplate>
            
                                    <asp:ImageButton ID="img_eliminar" runat="server" CommandArgument='<%#Eval("ID")%>' CommandName="Eliminar" Height="16px" ImageUrl="~/images/eliminar.gif" OnClientClick="return confirm('Estas seguro que deseas eliminar el registro')" Width="16px" />
                                </ItemTemplate>
                                <HeaderStyle Width="17px" />
                                <ItemStyle Width="17px" />
                            </asp:TemplateField>
                        </Columns>
                        <EditRowStyle BackColor="#999999" />
                        <FooterStyle BackColor="#5D7B9D" Font-Bold="True" ForeColor="White" />
                        <HeaderStyle BackColor="#5D7B9D" Font-Bold="True" ForeColor="White" />
                        <PagerStyle BackColor="#284775" ForeColor="White" HorizontalAlign="Center" />
                        <RowStyle BackColor="#F7F6F3" ForeColor="#333333" />
                        <SelectedRowStyle BackColor="#E2DED6" Font-Bold="True" ForeColor="#333333" />
                        <SortedAscendingCellStyle BackColor="#E9E7E2" />
                        <SortedAscendingHeaderStyle BackColor="#506C8C" />
                        <SortedDescendingCellStyle BackColor="#FFFDF8" />
                        <SortedDescendingHeaderStyle BackColor="#6F8DAE" />
                    </asp:GridView>
            </td>
            <td class="auto-style5">&nbsp;</td>
        </tr>
        </table></center></ContentTemplate></asp:UpdatePanel>
</asp:Content>
