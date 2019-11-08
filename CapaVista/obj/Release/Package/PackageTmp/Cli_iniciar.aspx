<%@ Page Title="" Language="C#" MasterPageFile="~/Registro.Master" AutoEventWireup="true" CodeBehind="Cli_iniciar.aspx.cs" Inherits="CapaVista.Cli_iniciar" %>
<asp:Content ID="Content1" ContentPlaceHolderID="cph_registro" runat="server">
    <asp:ScriptManager ID="ScriptManager1" runat="server"></asp:ScriptManager> <asp:UpdatePanel ID="UpdatePanel1" runat="server">   
          <ContentTemplate>
            
    <div class="row justify-content-center">
        <div class="col-lg-6 col-md-8">
          <div class="card bg-secondary shadow border-0">
            <div class="card-header bg-transparent pb-5">
              <div class="text-muted text-center mt-2 mb-4"><small>Conectar con</small></div>
              <div class="text-center">
                <a href="#" class="btn btn-neutral btn-icon mr-4">
                  <span class="btn-inner--icon"><img src="../bienes/img/icons/common/github.svg"></span>
                  <span class="btn-inner--text">Github</span>
                </a>
                <a href="#" class="btn btn-neutral btn-icon">
                  <span class="btn-inner--icon"><img src="../bienes/img/icons/common/google.svg"></span>
                  <span class="btn-inner--text">Google</span>
                </a>
              </div>
            </div>
            <div class="card-body px-lg-5 py-lg-5">
              <div class="text-center text-muted mb-4">
                  <asp:Label ID="intento" runat="server" Text=""></asp:Label>
                
              </div>
            
                        <div class="form-group">
                  <div class="input-group input-group-alternative mb-3">
                    <div class="input-group-prepend">
                      <span class="input-group-text"><i class="ni ni-email-83"></i></span>
                    </div>
                      <asp:TextBox class="form-control"  ID="txt_usuario" runat="server" placeholder="Usuario"></asp:TextBox>
                  </div>
                </div>
                <div class="form-group">
                  <div class="input-group input-group-alternative">
                    <div class="input-group-prepend">
                      <span class="input-group-text"><i class="ni ni-lock-circle-open"></i></span>
                    </div>
                   <asp:TextBox class="form-control"  TextMode="Password" ID="txt_contra" runat="server" placeholder="Contrasena"></asp:TextBox>
                  </div>
                </div>
                             
                <div class="text-center">
                  <asp:Button ID="btn_ingresar" class="btn btn-primary mt-4" runat="server" Text="Ingresar" OnClick="btn_registra_Click" style="left: 0px; top: 0px" />
                </div>
            
            </div>
          </div>
        </div>
      </div>
         </ContentTemplate></asp:UpdatePanel>
</asp:Content>
