<%@ Page Title="" Language="C#" MasterPageFile="~/Formulario.Master" AutoEventWireup="true" CodeBehind="ListaTipoUsuario.aspx.cs" Inherits="CapaVista.ListaTipoUsuario" %>
<asp:Content ID="Content1" ContentPlaceHolderID="cph_head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="cph_login" runat="server">

      <asp:UpdatePanel ID="UpdatePanel1" runat="server"><ContentTemplate>    <Center>
    <table class="alt"><asp:ScriptManager ID="ScriptManager1" runat="server"></asp:ScriptManager>
        <tr>
            <td class="auto-style3">
                <asp:LinkButton ID="lnk_nuevo" runat="server" OnClick="lnk_nuevo_Click">Nuevo</asp:LinkButton>
            </td>
            <td class="auto-style2" colspan="2">
              <center>  <asp:Label ID="Label2" ForeColor="White" runat="server" Text="ROLES USUARIO"></asp:Label></center>
            </td>
            <td class="auto-style5"></td>
        </tr>
        <tr>
            <td class="auto-style3">
                <asp:Label ID="Label1" ForeColor="White" runat="server" Text="Buscar por:"></asp:Label>
            </td>
            <td class="auto-style2">
                <asp:DropDownList ID="ddl_criterio" runat="server" OnSelectedIndexChanged="ddl_criterio_SelectedIndexChanged">
                    <asp:ListItem Text="Nombre" Value="N"></asp:ListItem>
                </asp:DropDownList>
            </td>
            <td class="auto-style4">
                <asp:TextBox ID="txt_buscar" runat="server"></asp:TextBox>
            </td>
            <td class="auto-style5">
             <asp:ImageButton ID="img_Lupa" runat="server" ImageUrl="~/images/search.png" Height="20px" Width="30px" OnClick="img_lupa_Click" />
            </td>
        </tr>
        <tr>
            <td class="auto-style3"></td>
            <td colspan="2">
                <asp:GridView ID="grd_tip" runat="server" AutoGenerateColumns="false" class="alt" OnRowCommand="grd_tip_RowCommand" OnSelectedIndexChanged="grd_tip_SelectedIndexChanged" PageSize="5" Width="100%">
                    <Columns>
                        <asp:TemplateField HeaderStyle-Width="17" ItemStyle-Width="17">
                            <ItemTemplate>
                                <asp:ImageButton ID="img_editar" runat="server" CommandArgument='<%#Eval("id_tipousu")%>' CommandName="Edit" Height="16px" ImageUrl="~/images/editar10.gif" Width="16px" />
                            </ItemTemplate>
                        </asp:TemplateField>
                        <asp:TemplateField HeaderStyle-Width="17" ItemStyle-Width="17">
                            <ItemTemplate>
                                <asp:ImageButton ID="img_eliminar" runat="server" CommandArgument='<%#Eval("id_tipousu")%>' CommandName="Eliminar" Height="16px" ImageUrl="~/images/eliminar.gif" OnClientClick="return confirm('Estas seguro que deseas eliminar el registro')" Width="16px" />
                            </ItemTemplate>
                        </asp:TemplateField>
                        <asp:TemplateField HeaderText="ID">
                            <ItemTemplate>
                                <asp:Label ID="id_tipousu" runat="server" text='<%#Eval("id_tipousu")%>'></asp:Label>
                            </ItemTemplate>
                        </asp:TemplateField>
                        <asp:TemplateField HeaderText="ROL">
                            <ItemTemplate>
                                <asp:Label ID="nombre_tipousu" runat="server" text='<%#Eval("nombre_tipousu")%>'></asp:Label>
                            </ItemTemplate>
                        </asp:TemplateField>
                        <asp:TemplateField HeaderText="ESTADO">
                            <ItemTemplate>
                                <asp:Label ID="estado_tipousu" runat="server" text='<%#Eval("estado_tipousu")%>'></asp:Label>
                            </ItemTemplate>
                        </asp:TemplateField>
                       
                    </Columns>
                </asp:GridView>
            </td>
            <td class="auto-style5">&nbsp;</td>
        </tr>
        </table></center></ContentTemplate></asp:UpdatePanel>

</asp:Content>
