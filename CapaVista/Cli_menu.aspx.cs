using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using CapaDatos;
using CapaNegocio;

namespace CapaVista
{
    public partial class Cli_menu : System.Web.UI.Page
    {
        private Persona info = new Persona();
        private Paciente infopaci = new Paciente();

        protected void Page_Load(object sender, EventArgs e)
        {
            Session.Timeout = 10;

            if (Session["New"] != null)
            {
                CapturarPersona();
                CargarPaciente();
            }
            else
            {
                Response.Redirect("~/Cli_iniciar.aspx");
            }

        }

        private void CapturarPersona()
        {
            string codigo = Convert.ToString(Session["New"]);
            info = LogicaPersona.Obtenerpersonaxusuario(codigo);

            if (info != null)
            {


                Session["Name"] = info.per_apellidos.ToString();
                Session["Ape"] = info.per_nombres.ToString();
                Session["per_id"] = info.per_id.ToString();

                string apellido = Convert.ToString(Session["Ape"]);
                string nombre = Convert.ToString(Session["Name"]);

                Session["Nombres"] = nombre + ' ' + apellido;

                lbl_usuario.Text = Convert.ToString(Session["Nombres"]);

            }
        }

        private void CargarPaciente()
        {

            string codigo = Convert.ToString(Session["per_id"]);
            infopaci = LogicaPaciente.ObtenerPacientexpersona(Convert.ToInt32(codigo));

            if (infopaci != null)
            {
                Session["paci_id"] = infopaci.paci_id.ToString();

            }


        }
    }
}