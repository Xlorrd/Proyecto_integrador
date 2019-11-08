<%@ Page Title="" Language="C#" MasterPageFile="~/MenuDoctor.Master" AutoEventWireup="true" CodeBehind="DocAtenderCitas.aspx.cs" Inherits="CapaVista.DocAtenderCitas" %>
<asp:Content ID="Content1" ContentPlaceHolderID="cph_header" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="cph_user" runat="server">
</asp:Content>
<asp:Content ID="Content3" ContentPlaceHolderID="cph_titulo" runat="server">
</asp:Content>
<asp:Content ID="Content4" ContentPlaceHolderID="cph_formu" runat="server">

    <asp:ScriptManager ID="ScriptManager1" runat="server"></asp:ScriptManager>
     <center>
     <asp:GridView ID="GridView1" runat="server" OnRowCommand="GridView1_RowCommand" OnSelectedIndexChanged="GridView1_SelectedIndexChanged" CellPadding="4" ForeColor="#333333" GridLines="None">
                        <AlternatingRowStyle BackColor="White" ForeColor="#284775" />
                        <Columns>
                           
                            <asp:TemplateField HeaderStyle-Width="17" ItemStyle-Width="17">
                                <ItemTemplate>
            
                                    <asp:ImageButton ID="img_eliminar" runat="server" CommandArgument='<%#Eval("ID")%>' CommandName="Eliminar" Height="16px" ImageUrl="~/images/eliminar.gif" OnClientClick="return confirm('Estas seguro que deseas cancelar la Cita?')" Width="16px" />
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
         </center>
</asp:Content>
