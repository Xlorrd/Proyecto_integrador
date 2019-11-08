<%@ Page Title="" Language="C#" MasterPageFile="~/MenuCliente.Master" AutoEventWireup="true" CodeBehind="CliConfirmarCita.aspx.cs" Inherits="CapaVista.CliAgendaCita" %>
<asp:Content ID="Content1" ContentPlaceHolderID="cph_user" runat="server">
        <asp:Label ID="lbl_usuario" runat="server" Text=""></asp:Label>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="cph_titulo" runat="server">
  Motivo cita
</asp:Content>
<asp:Content ID="Content3" ContentPlaceHolderID="cph_formu" runat="server">
    <div class="row justify-content-center">
        <div class="col-lg-6 col-md-8">
          <div class="card bg-secondary shadow border-0">
            <div class="card-header bg-transparent pb-5">
              <div class="text-muted text-center mt-2 mb-4"><small>
                  <asp:Label ID="lbl_mensaje" runat="server" Text=""></asp:Label></small></div>
              <div class="text-center">
                
              
              </div>
            </div>
            <div class="card-body px-lg-5 py-lg-5">
        

                </div>
             
                <div class="input-group input-group-alternative mb-3">
                    <div class="input-group-prepend">
                      <span class="input-group-text"><i class="ni ni-hat-3"></i></span>
                    </div>
                      <asp:TextBox class="form-control"  ID="txt_motivo" runat="server" placeholder="Motivo Cita"></asp:TextBox>
                  </div>
              <div class="form-group">
                  <div class="input-group input-group-alternative mb-3">
                    
                      <asp:TextBox class="form-control"  ID="txt_especialidad" Visible="false" runat="server" ></asp:TextBox>
                  </div>
                    
                </div>
              
               <div class="text-center">
          <asp:Button ID="btn_siguiente" runat="server" class="btn btn-primary mt-4"  Text="Confirmar Cita" style="left: 0px; top: 0px; width: 170px;" OnClick="btn_siguiente_Click"  />
        </div>
            
            </div>
          </div>
        </div>
     
    
</asp:Content>
