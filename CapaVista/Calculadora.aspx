<%@ Page Title="" Language="C#" MasterPageFile="~/Formulario.Master" AutoEventWireup="true" CodeBehind="Calculadora.aspx.cs" Inherits="CapaVista.Calculadora" %>
<asp:Content ID="Content1" ContentPlaceHolderID="cph_head" runat="server">
    <style type="text/css">
.tg  {border-collapse:collapse;border-spacing:0;border-color:#aabcfe;}
.tg td{font-family:Arial, sans-serif;font-size:14px;padding:10px 5px;border-style:solid;border-width:1px;overflow:hidden;word-break:normal;border-color:#aabcfe;color:#669;background-color:#e8edff;}
.tg th{font-family:Arial, sans-serif;font-size:14px;font-weight:normal;padding:10px 5px;border-style:solid;border-width:1px;overflow:hidden;word-break:normal;border-color:#aabcfe;color:#039;background-color:#b9c9fe;}
.tg .tg-c51l{background-color:#D2E4FC;border-color:inherit;text-align:left}
.tg .tg-uys7{border-color:inherit;text-align:center}
.tg .tg-xldj{border-color:inherit;text-align:left}
.tg .tg-quj4{border-color:inherit;text-align:right}
.tg .tg-xv68{background-color:#D2E4FC;border-color:inherit;text-align:right}
       .auto-style10 {
           width: 69px;
       }
       .auto-style11 {
           width: 182px;
       }
       .auto-style12 {
           height: 26px;
       }
   </style>

</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="cph_login" runat="server">
     <asp:UpdatePanel ID="UpdatePanel1" runat="server">
        <ContentTemplate>
            	<h2>Calculadora </h2>
   <center> <table class="tg">
  <tr>
    <th class="tg-obcv" colspan="2">Results</th>
  </tr>
  <tr>
    <td colspan="2" class="auto-style12">
        <asp:ScriptManager ID="ScriptManager1" runat="server">
        </asp:ScriptManager>
        &nbsp;</td>
  </tr>
  <tr>
    <td class="auto-style11">
       <center> <asp:Label ID="lblcap1" runat="server" Text="dsadsa"></asp:Label></center>
        <br />
        <asp:Button ID="bnt7" runat="server" CssClass="button special" Height="44px" Text="7" Width="52px" />
        <asp:Button ID="btn8" runat="server" CssClass="button special" Height="44px" Text="8" Width="52px" />
        <asp:Button ID="btn9" runat="server" CssClass="button special" Height="44px" Text="9" Width="52px" />
        <br />
        <asp:Button ID="btn4" runat="server" CssClass="button special" Height="44px" Text="4" Width="52px" />
        <asp:Button ID="btn5" runat="server" CssClass="button special" Height="44px" Text="5" Width="52px" />
        <asp:Button ID="btn6" runat="server" CssClass="button special" Height="44px" Text="6" Width="52px" />
        <br />
        <asp:Button ID="btn1" runat="server" Height="44px" Text="1" CssClass="button special" Width="52px" OnClick="btn1_Click" />
        <asp:Button ID="btn2" runat="server" Height="44px" Text="2" CssClass="button special" Width="52px" />
        <asp:Button ID="btn3" runat="server" Height="44px" Text="3" CssClass="button special" Width="52px" />
        <br />
        <asp:Button ID="btn0" runat="server" Height="44px" Text="0" Width="108px"  CssClass="button special" OnClick="btn0_Click" />
        <asp:Button ID="btnComa" runat="server" Height="44px" Text="," Width="52px"   CssClass="button special" />
      </td>
    <td class="auto-style10">
        <br />
        <br />
        <asp:Button ID="btndel" runat="server" CssClass="button special" Height="63px"  style="margin-top: 0px" Text="sup" Width="38px" />
        <asp:Button ID="btnigual" runat="server" CssClass="button special" Height="115px" Text="=" Width="37px" style="margin-top: 3px" />
      </td>
  </tr>
  <tr>
    <td colspan="2">
        <asp:Button ID="btnmas" runat="server" Height="44px" CssClass="button special" Text="+" Width="52px" />
        <asp:Button ID="btnmenos" runat="server" Height="44px" Text="-" CssClass="button special" Width="52px" />
        <asp:Button ID="btnpor" runat="server" Height="44px" Text="*" CssClass="button special" Width="52px" />
        <asp:Button ID="btndiv" runat="server" Height="44px" Text="/" CssClass="button special" Width="52px" />
      </td>
  </tr>
</table></center>
    </ContentTemplate>
    </asp:UpdatePanel>
</asp:Content>
<asp:Content ID="Content3" ContentPlaceHolderID="cph_contenido" runat="server">
  

</asp:Content>
