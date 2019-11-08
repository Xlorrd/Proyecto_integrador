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
    public partial class CliAgendaHorario : System.Web.UI.Page
    {
        private Medico_Horario info = new Medico_Horario();
        protected void Page_Load(object sender, EventArgs e)
        {

            if (!IsPostBack)
            {
                if (Request["espmed_id"] != null)
                {


                    int codigo = Convert.ToInt32(Request["espmed_id"]);
                    info = LogicaMedicoHorario.ObtenerMedicoHorarioid(codigo);
                    if (info != null)
                    {

                        rdl_medhor.Text = info.medhor_id.ToString();
                        string nombre = Convert.ToString(Session["Name"]);


                    }
                }
                CargarMedhor();
            }
            Session.Timeout = 10;

            if (Session["New"] != null)
            {
                lbl_usuario.Text = Session["Nombres"].ToString();
            }
            else
            {
                Response.Redirect("~/Cli_iniciar.aspx");
            }
        }


        private void CargarMedhor()
        {
            

            int codigo = Convert.ToInt32(Request["espmed_id"]);
            List<sp_buscar_medico_horario_xespemedResult> Lista = new List<sp_buscar_medico_horario_xespemedResult>();
            Lista = LogicaMedicoHorario.Buscar_medico_horario_xid(codigo);      
            rdl_medhor.DataSource = Lista;
            rdl_medhor.DataTextField = "Datos";
            rdl_medhor.DataValueField = "ID";
            rdl_medhor.DataBind();
         
        }

        protected void btn_siguiente_Click(object sender, EventArgs e)
        {
            int codigo = Convert.ToInt32(rdl_medhor.Text);
            Response.Redirect("~/CliConfirmarCita.aspx?medhor_id=" + codigo, true);
          
        }

        
    }
}