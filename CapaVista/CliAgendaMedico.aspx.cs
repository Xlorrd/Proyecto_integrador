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
    public partial class CliAgendaMedico : System.Web.UI.Page
    {
        private EspecialidadMedico info = new EspecialidadMedico();

        protected void Page_Load(object sender, EventArgs e)
        {

            if (!IsPostBack)
            {

                if (Request["espe_id"] != null)
                {
                    
                    int codigo = Convert.ToInt32(Request["espe_id"]);
                    info = LogicaEspecialidadMedico.ObtenerEspeMedicoid(codigo);
                    if (info != null)
                    {
                        
                        rd_medhor.Text = info.espmed_id.ToString();
                        


                    }
                }
                cargarhormed();
                btn_siguiente.Visible = false;
                boton();
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

        public void boton()
        {
            if (rd_medhor.SelectedValue != null)
            {
                btn_siguiente.Visible = true;
            }
        }


        public void cargarhormed()
        {
            int codigo = Convert.ToInt32(Request["espe_id"]);
            List<sp_buscar_especialidad_medico_xidResult> Lista = new List<sp_buscar_especialidad_medico_xidResult>();
            Lista = LogicaEspecialidadMedico.BuscarMedEspexid(codigo);
            //  Lista.Insert(0, new sp_buscar_especialidad_medico_xidResult() { Médico = "" });
            rd_medhor.DataSource = Lista;
            rd_medhor.DataTextField = "Médico";
            rd_medhor.DataValueField = "ID";
            rd_medhor.DataBind();

        

        }

        private void capturar_MedicoEspecialista()
        {

            int codigo = Convert.ToInt32(rd_medhor.Text);
 
            Response.Redirect("~/CliAgendaHorario.aspx?espmed_id=" + codigo, true);

        }
        protected void btn_regs_espe_Click(object sender, EventArgs e)
        {
            Response.Redirect("~/CliAgendaEspecialidad.aspx");
        }

        protected void btn_siguiente_Click(object sender, EventArgs e)
        {
            capturar_MedicoEspecialista();
        }

        
    }

    
}

