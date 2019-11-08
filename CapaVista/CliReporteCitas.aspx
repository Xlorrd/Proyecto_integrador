<%@ Page Title="" Language="C#" MasterPageFile="~/MenuCliente.Master" AutoEventWireup="true" CodeBehind="CliReporteCitas.aspx.cs" Inherits="CapaVista.CliReporteCitas" %>

<%@ Register Assembly="Microsoft.ReportViewer.WebForms" Namespace="Microsoft.Reporting.WebForms" TagPrefix="rsweb" %>
<asp:Content ID="Content1" ContentPlaceHolderID="cph_header" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="cph_user" runat="server">
</asp:Content>
<asp:Content ID="Content3" ContentPlaceHolderID="cph_titulo" runat="server">
          
</asp:Content>
<asp:Content ID="Content4" ContentPlaceHolderID="cph_formu" runat="server">
    <asp:UpdatePanel ID="UpdatePanel1" runat="server"> <ContentTemplate>
    <asp:ScriptManager ID="ScriptManager1" runat="server"></asp:ScriptManager>
        <div class="text-center">
            <br />
          <%--<asp:Button ID="btn_siguiente" runat="server" class="btn btn-primary mt-4"  Text="Cargar Reporte" style="left: 0px; top: 0px; width: 170px;" OnClick="btn_siguiente_Click"  />--%>
            <br />
            <rsweb:ReportViewer ID="ReportViewer1" runat="server" Width="100%"  BackColor="" ClientIDMode="AutoID" HighlightBackgroundColor="" InternalBorderColor="204, 204, 204" InternalBorderStyle="Solid" InternalBorderWidth="1px" LinkActiveColor="" LinkActiveHoverColor="" LinkDisabledColor="" PrimaryButtonBackgroundColor="" PrimaryButtonForegroundColor="" PrimaryButtonHoverBackgroundColor="" PrimaryButtonHoverForegroundColor="" SecondaryButtonBackgroundColor="" SecondaryButtonForegroundColor="" SecondaryButtonHoverBackgroundColor="" SecondaryButtonHoverForegroundColor="" SplitterBackColor="" ToolbarDividerColor="" ToolbarForegroundColor="" ToolbarForegroundDisabledColor="" ToolbarHoverBackgroundColor="" ToolbarHoverForegroundColor="" ToolBarItemBorderColor="" ToolBarItemBorderStyle="Solid" ToolBarItemBorderWidth="1px" ToolBarItemHoverBackColor="" ToolBarItemPressedBorderColor="51, 102, 153" ToolBarItemPressedBorderStyle="Solid" ToolBarItemPressedBorderWidth="1px" ToolBarItemPressedHoverBackColor="153, 187, 226" Height="576px">
                <LocalReport ReportPath="Report1.rdlc">
                    <DataSources>
                    <rsweb:ReportDataSource DataSourceId="ObjectDataSource1" Name="DataSet1" />
                </DataSources>
                </LocalReport>
            </rsweb:ReportViewer>
            <br />
            <asp:ObjectDataSource ID="ObjectDataSource1" runat="server" OldValuesParameterFormatString="original_{0}" SelectMethod="GetData" TypeName="CapaVista.DataSet1TableAdapters.DataTable1TableAdapter"></asp:ObjectDataSource>
            <br />
            <br />
            </div>
    
    <br />
    </ContentTemplate></asp:UpdatePanel>
</asp:Content>
