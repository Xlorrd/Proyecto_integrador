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
    public partial class AgregarPaciente : System.Web.UI.Page
    {
        private Paciente info = new Paciente();

        protected void Page_Load(object sender, EventArgs e)
        {
            if (!IsPostBack)
            {

                if (Request["cod"] != null)
                {
                    btn_modificar.Visible = true;
                    btn_nuevo.Enabled = false;
                    int codigo = Convert.ToInt32(Request["cod"]);
                    info = LogicaPaciente.ObtenerPacienteid(codigo);
                    if (info != null)
                    {

                        txt_peso.Text = info.paci_peso.ToString();
                        txt_tiposangre.Text = info.paci_tiposangre.ToString();
                        txt_estatura.Text = info.paci_estatura.ToString();
                        ddl_persona.Text = info.per_id.ToString();
               

                        btn_guardar.Visible = false;
                    }
                }
                CargarPersona();
          

            }
        }

        private void CargarPersona()
        {
            List<Mostrar_personasResult> lista = new List<Mostrar_personasResult>();
            lista = LogicaPersona.MostrarPersonas();
            lista.Insert(0, new Mostrar_personasResult() { Nombres = "Nombres" });
            ddl_persona.DataSource = lista;
            ddl_persona.DataTextField = "Nombres";
            ddl_persona.DataValueField = "ID";
            ddl_persona.DataBind();

        }

        private void Guardar_paciente()
        {
            try
            {
                lbl_mensaje.Text = "";
                info = new Paciente();

                info.paci_peso = txt_peso.Text;
                info.paci_estatura = txt_estatura.Text;
                info.paci_tiposangre = txt_tiposangre.Text;
                info.per_id = Convert.ToInt32(ddl_persona.SelectedValue);
           
                
                LogicaPaciente.save(info);
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
            Guardar_paciente();
        }

        protected void btn_modificar_Click(object sender, EventArgs e)
        {

        }

        protected void btn_regresar_Click(object sender, EventArgs e)
        {

        }
    }
}