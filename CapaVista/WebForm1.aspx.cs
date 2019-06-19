using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using CapaNegocio;

using CapaDatos;

namespace CapaVista
{
    public partial class WebForm1 : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            Ingresar();
        }

        public void Ingresar()
        {

            lblMensaje.Visible = false;
            if (string.IsNullOrEmpty(TextBox1.Text))
            {
                lblMensaje.Visible = true;
                lblMensaje.Text = "Ingrese  un usuario";
                return;
            }

            if (string.IsNullOrEmpty(TextBox2.Text))
            {

                lblMensaje.Visible = true;
                lblMensaje.Text = "Ingrese  una clave";
                return;
            }

            bool existe = UsuarioLogica.Autentificar(TextBox1.Text, TextBox2.Text);
            {
                if (existe)
                {
                    Tbl_Usuario usuario = new Tbl_Usuario();
                    usuario = UsuarioLogica.Autentificarlogin(TextBox1.Text, TextBox2.Text);
                    int tipousuario = usuario.Tusu_id;

                    if (tipousuario == 1)
                    {
                        Session["New"] = TextBox1.Text;
                        Response.Redirect("~/MenuAdministrador.aspx");

                    }
                }
                else
                {
                    lblMensaje.Visible = true;
                    lblMensaje.Text = " Datos incorrectos";
                    return;
                }
            }
        }
    }
}