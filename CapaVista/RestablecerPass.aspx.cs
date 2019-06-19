using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Configuration;
using System.Net.Mail;
using System.Net;
using CapaDatos;
using CapaNegocio;
using System.Data.Linq;

namespace CapaVista
{
    public partial class RestablecerPass : System.Web.UI.Page
    {
        DataClasses1DataContext db = new DataClasses1DataContext();
        //protected void Page_Load(object sender, EventArgs e)
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            string usuario = txtUsuario.Text.Trim();

            var persona = db.Tbl_Usuario.Where(x => x.usu_nomlogin == usuario).FirstOrDefault();


            if (persona != null)
            {
                UsuarioLogica rec = new UsuarioLogica();
               rec.EnviarEmail(persona.usu_correo, persona.usu_contrasenia);
                txtUsuario.Attributes.Add("placeholder", "Correo enviado");
                lbl_ing.Text = "Correo enviado";
            }
            else
            {
                ScriptManager.RegisterClientScriptBlock(this.Page, this.GetType(), "AlertUsuario", "Window.onload - " +
                    "function(){alert ('El usuario no existe');};", true);
            }
           
        }

        
    }
}


