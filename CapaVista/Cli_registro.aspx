<%@ Page Title="" Language="C#" MasterPageFile="~/Registro.Master" AutoEventWireup="true" CodeBehind="Cli_registro.aspx.cs" Inherits="CapaVista.Cli_registro" %>
<asp:Content ID="Content1" ContentPlaceHolderID="cph_registro" runat="server">
    <asp:ScriptManager ID="ScriptManager1" runat="server"></asp:ScriptManager>
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
                <small></small>
                  <asp:Label ID="Label1" runat="server" Text=""></asp:Label>
              </div>
            
                <div class="form-group">
                  <div class="input-group input-group-alternative mb-3">
                    <div class="input-group-prepend">
                      <span class="input-group-text"><i class="ni ni-hat-3"></i></span>
                    </div>
                      <asp:TextBox class="form-control"  ID="txt_nombre" runat="server" placeholder="Nombre"></asp:TextBox>
                      <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" ControlToValidate="txt_nombre" EnableViewState="False" ErrorMessage="*" ForeColor="Red"></asp:RequiredFieldValidator>
                  </div>
                    <div class="input-group input-group-alternative mb-3">
                    <div class="input-group-prepend">
                      <span class="input-group-text"><i class="ni ni-hat-3"></i></span>
                    </div>
                      <asp:TextBox class="form-control"  ID="txt_apellido" runat="server" placeholder="Apellido"></asp:TextBox>
                        <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" ControlToValidate="txt_apellido" ErrorMessage="*" ForeColor="Red"></asp:RequiredFieldValidator>
                  </div>
                </div>
                <div class="form-group">
                  <div class="input-group input-group-alternative mb-3">
                    <div class="input-group-prepend">
                      <span class="input-group-text"><i class="ni ni-email-83"></i></span>
                    </div>
                      <asp:TextBox class="form-control"  ID="txt_correo" runat="server" placeholder="Correo"></asp:TextBox>
                      <asp:RequiredFieldValidator ID="RequiredFieldValidator3" runat="server" ControlToValidate="txt_correo" ErrorMessage="*" ForeColor="Red"></asp:RequiredFieldValidator>
                  &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                      <asp:RegularExpressionValidator ID="RegularExpressionValidator1" runat="server" ControlToValidate="txt_correo" ErrorMessage="Formato incorrecto" ForeColor="Red" ValidationExpression="\w+([-+.']\w+)*@\w+([-.]\w+)*\.\w+([-.]\w+)*"></asp:RegularExpressionValidator>
                  </div>
                </div>
                <div class="form-group">
                  <div class="input-group input-group-alternative">
                    <div class="input-group-prepend">
                      <span class="input-group-text"><i class="ni ni-lock-circle-open"></i></span>
                    </div>
                   <asp:TextBox class="form-control"   TextMode="Password" ID="txt_contra" runat="server" placeholder="Contraseña"></asp:TextBox>
                      <asp:RequiredFieldValidator ID="RequiredFieldValidator4" runat="server" ControlToValidate="txt_contra" ErrorMessage="*" ForeColor="Red"></asp:RequiredFieldValidator>
                  </div>
                </div>
                <div class="input-group input-group-alternative mb-3">
                    
                  </div>
              
                <div class="text-center">
                  <asp:Button ID="btn_registra" class="btn btn-primary mt-4" runat="server" Text="Crear Cuenta" OnClick="btn_registra_Click" />
                </div>
            
            </div>
          </div>
        </div>
      </div>
</asp:Content>
