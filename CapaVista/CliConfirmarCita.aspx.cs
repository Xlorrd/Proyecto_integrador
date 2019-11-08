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
    public partial class CliAgendaCita : System.Web.UI.Page
    {
        Especialidad espe = new Especialidad();
        private Citas info = new Citas();
        protected void Page_Load(object sender, EventArgs e)
        {
            Session.Timeout = 10;

            if (Session["New"] != null)
            {
                lbl_usuario.Text = Session["Nombres"].ToString();
            }
            else
            {
                Response.Redirect("~/Cli_iniciar.aspx");
            }
            CapturaEspecialidad();


        }

        protected void btn_siguiente_Click(object sender, EventArgs e)
        {
            ReservarHorario();
            GuardarCita();
       
        }

        private void CapturaEspecialidad()
        {
            int codigo = Convert.ToInt32(Request["espe_id"]);
            //espe = LogicaEspecialidad.ObtenerEspecialidadxid(Convert.ToInt32(codigo));

            //if (espe != null)
            //{

            //    txt_especialidad.Text = espe.espe_descripcion.ToString();

            //}
          
            txt_especialidad.Text = Convert.ToString(Session["paci_id"]);
        }
        private void GuardarCita()
        {
            try
            {
                info = new Citas();

                

                int paciente = Convert.ToInt32(Request["paci_id"]);
                int medicohorario = Convert.ToInt32(Request["medhor_id"]);
                info.cita_estado = "Reservado";
                info.paci_id = Convert.ToInt32( txt_especialidad.Text);
                info.medhor_id = medicohorario;
                info.cita_motivo = txt_motivo.Text;
                LogicaCitas.save(info);

                lbl_mensaje.Text = "Cita reservada";

                btn_siguiente.Visible = false;
                Response.Redirect("~/Cli_menu.aspx");

            }
            catch (Exception ex)
            {
                lbl_mensaje.Text = " Problemas al guardar ";
            }
        }

        private void ReservarHorario()
        {
            int codigo = Convert.ToInt32(Request["medhor_id"]);

            LogicaMedicoHorario.reservarmedhor(codigo);
           
        }
    }
}