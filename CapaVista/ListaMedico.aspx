﻿<%@ Page Title="" Language="C#" MasterPageFile="~/Formulario.Master" AutoEventWireup="true" CodeBehind="ListaMedico.aspx.cs" Inherits="CapaVista.ListaMedico" %>
<asp:Content ID="Content1" ContentPlaceHolderID="cph_head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="cph_login" runat="server">
    <asp:UpdatePanel ID="UpdatePanel1" runat="server"><ContentTemplate>    <Center>
    <table class="alt"><asp:ScriptManager ID="ScriptManager1" runat="server"></asp:ScriptManager>
        <tr>
            <td class="auto-style7">
                <asp:LinkButton ID="lnk_nuevo" runat="server" OnClick="lnk_nuevo_Click">Nuevo</asp:LinkButton>
            </td>
            <td class="auto-style8" colspan="2">
              <center> <asp:Label ID="Label2" ForeColor="White" runat="server" Text="ESPECIALIDAD"></asp:Label> </center>
            </td>
            <td class="auto-style9"></td>
        </tr>
        <tr>
            <td class="auto-style15">
                <asp:Label ID="Label1" ForeColor="White" runat="server" Text="Buscar por:"></asp:Label>
            </td>
            <td class="auto-style12">
                <asp:DropDownList ID="ddl_criterio" runat="server" OnSelectedIndexChanged="ddl_criterio_SelectedIndexChanged" CssClass="auto-style11">
                       <asp:ListItem Text="Nombre" Value="N"></asp:ListItem>
                </asp:DropDownList>
            </td>
            <td class="auto-style4">
                <asp:TextBox ID="txt_buscar" runat="server" Width="325px" OnTextChanged="txt_buscar_TextChanged"></asp:TextBox>
            </td>
            <td class="auto-style13">
           <asp:ImageButton ID="img_Lupa" runat="server" ImageUrl="~/images/search.png" Height="20px" Width="30px" OnClick="img_lupa_Click" />
            </td>
        </tr>
        <tr>
            <td class="auto-style15"></td>
            <td colspan="2">
                <asp:GridView ID="GridView1" runat="server" CellPadding="4" ForeColor="#333333" GridLines="None" OnSelectedIndexChanged="GridView1_SelectedIndexChanged">
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
            <td class="auto-style13"></td>
        </tr>
        </table></center></ContentTemplate></asp:UpdatePanel>
</asp:Content>