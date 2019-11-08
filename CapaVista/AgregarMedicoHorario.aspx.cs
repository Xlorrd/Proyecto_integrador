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
    public partial class AgregarMedicoHorario : System.Web.UI.Page
    {
        private Medico_Horario info = new Medico_Horario();
        protected void Page_Load(object sender, EventArgs e)
        {
            if (!IsPostBack)
            {

                if (Request["cod"] != null)
                {
                    btn_modificar.Visible = true;
                    btn_nuevo.Enabled = false;
                    int codigo = Convert.ToInt32(Request["cod"]);
                    info = LogicaMedicoHorario.ObtenerMedicoHorarioid(codigo);
                    if (info != null)
                    {

                        ddl_medico.Text = info.espmed_id.ToString();
                        txt_fecha.Text = info.medhor_fecha.ToString();
                        txt_hi.Text = info.medhor_hora_ini.ToString();
                        txt_hf.Text = info.medhor_hora_fin.ToString();
                        txt_estado.Text = info.medhor_estado.ToString();

                        btn_guardar.Visible = false;
                    }
                }
                Cargar_medico_especialidad();
                txt_estado.Visible = false;


            }
        }

        private void Cargar_medico_especialidad()
        {
            List<Mostrar_espe_mas_medicoResult> Lista = new List<Mostrar_espe_mas_medicoResult>();
            Lista = LogicaEspecialidadMedico.Mostrar_espe_mas_me();
            Lista.Insert(0, new Mostrar_espe_mas_medicoResult() {  md = "Nombre" });
            ddl_medico.DataSource = Lista;
            ddl_medico.DataTextField = "md";
            ddl_medico.DataValueField = "espmed_id";
            ddl_medico.DataBind();
        }

        private void Guardar_medico_horario()
        {
            try
            {
                lbl_mensaje.Text = "";
                info = new Medico_Horario();

                info.espmed_id = Convert.ToInt32(ddl_medico.SelectedValue);
                info.medhor_fecha = txt_fecha.Text;
                info.medhor_hora_ini = txt_hi.Text;
                info.medhor_hora_fin = txt_hf.Text;
                info.medhor_estado = "Disponible";
              

                LogicaMedicoHorario.save(info);
                lbl_mensaje.Visible = true;
                lbl_mensaje.Text = "Datos Guardados con exito";

            }
            catch (Exception ex)
            {
                lbl_mensaje.Visible = true;
                lbl_mensaje.Text = "Datos no Guardados" + ex.Message;
            }
        }

        protected void btn_nuevo_Click(object sender, EventArgs e)
        {

        }

        protected void btn_guardar_Click(object sender, EventArgs e)
        {
            Guardar_medico_horario();
        }

        protected void btn_regresar_Click(object sender, EventArgs e)
        {

        }

        protected void btn_modificar_Click(object sender, EventArgs e)
        {

        }
    }
}