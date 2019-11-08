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
    public partial class CliMostrarCitas : System.Web.UI.Page
    {

        Paciente infopaci = new Paciente();

        Citas info = new Citas();
        protected void Page_Load(object sender, EventArgs e)
        {
            if (!IsPostBack)
            {

                MostrarCitasxPacienteid();
                cargarCita();


            }
        }

        public void MostrarCitasxPacienteid()
        {
            List<Mostrar_Citas_xpacienteidResult> lista = new List<Mostrar_Citas_xpacienteidResult>();


            int cod = Convert.ToInt32(Session["paci_id"]);
            lista = LogicaCitas.BuscarCitaxPacienteid(cod);
            if (lista != null)
            {
                GridView1.DataSource = lista;
                GridView1.DataBind();
            }
        }

        private void cargarCita()
        {

            int cod = Convert.ToInt32(Session["paci_id"]);
            info = LogicaCitas.ObtenerCitaid(cod);
            //Session["cita_id"] = info.cita_id.ToString();

        }

         


        
        protected void GridView1_RowCommand(object sender, GridViewCommandEventArgs e)
        {

            int codigo = Convert.ToInt32(e.CommandArgument);
            if (e.CommandName == "Eliminar")
            {
                int cita_id = Convert.ToInt32(Session["cita_id"]);
                LogicaCitas.CancelarCita(codigo);
                MostrarCitasxPacienteid();

            }
            else if (e.CommandName == "")
            {

                
            }
        }
        protected void GridView1_SelectedIndexChanged(object sender, EventArgs e)
        {

        }
    }
}