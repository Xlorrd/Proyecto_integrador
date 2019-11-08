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
    public partial class AgregarEspecialidadMedico : System.Web.UI.Page
    {
        private EspecialidadMedico info = new EspecialidadMedico();
        protected void Page_Load(object sender, EventArgs e)
        {
            if (!IsPostBack)
            {
       
                if (Request["cod"] != null)
                {
                    btn_modificar.Visible = true;
                    btn_nuevo.Enabled = false;
                    int codigo = Convert.ToInt32(Request["cod"]);
                    info = LogicaEspecialidadMedico.ObtenerEspeMedicoid(codigo);
                    if (info != null)
                    {

                        ddl_medico.Text = info.med_id.ToString();
                        ddl_especialidad.Text = info.espe_id.ToString();
                      

                        btn_guardar.Visible = false;
                    }
                }
                CargarMedico();
                CargarEspecialidad();
            }
        }
        private void CargarMedico()
        {

            List<Mostrar_medicoResult> Lista = new List<Mostrar_medicoResult>();
            Lista = LogicaMedico.Mostrar_medico();
            Lista.Insert(0, new Mostrar_medicoResult() { Médico = "Médicos" });
            ddl_medico.DataSource = Lista;
            ddl_medico.DataTextField = "Médico";
            ddl_medico.DataValueField = "ID";
            ddl_medico.DataBind();

        }

        private void CargarEspecialidad()
        {

            List<Especialidad> Lista = new List<Especialidad>();
            Lista = LogicaEspecialidad.ObtenerEspecialidad();
            Lista.Insert(0, new Especialidad() { espe_descripcion = "Especialidades" });
            ddl_especialidad.DataSource = Lista;
            ddl_especialidad.DataTextField = "espe_descripcion";
            ddl_especialidad.DataValueField = "espe_id";
            ddl_especialidad.DataBind();

        }


        private void Guardar_espe_medico()
        {
            try
            {
                lbl_mensaje.Text = "";
                info = new EspecialidadMedico();

                info.med_id =Convert.ToInt32( ddl_medico.SelectedValue);
                info.espe_id =Convert.ToInt32( ddl_especialidad.SelectedValue);
                            LogicaEspecialidadMedico.save(info);
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
            Guardar_espe_medico();
        }

        protected void btn_modificar_Click(object sender, EventArgs e)
        {

        }

        protected void btn_regresar_Click(object sender, EventArgs e)
        {

        }
    }
}