using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using CapaDatos;
using CapaNegocio;
using System.Data;
using System.Data.Linq;

namespace CapaVista
{
    public partial class ListaCitas : System.Web.UI.Page
    {
        private Citas info = new Citas();



        protected void Page_Load(object sender, EventArgs e)
        {
            if (!IsPostBack)
            {
                if (Request["cod"] != null)
                {
                    btn_modificar.Visible = true;
                    btn_nuevo.Enabled = false;
                    int codigo = Convert.ToInt32(Request["cod"]);
                    info = LogicaCitas.ObtenerCitaid(codigo);
                    if (info != null)
                    {

                        ddl_estado.Text = info.cita_estado.ToString();
                        ddlpaciente.Text = info.paci_id.ToString();
                        radhorario.Text = info.medhor_id.ToString();
                        txt_motivo.Text = info.cita_motivo.ToString();

                        btn_guardar.Visible = false;
                    }
                }
                Cargar_horario();
                Cargar_paciente();
            }

        }
      private void Cargar_horario()
        {

            List<Mostrar_medico_fecha_horarioResult> Lista = new List<Mostrar_medico_fecha_horarioResult>();
            Lista = LogicaMedicoHorario.Mostrar_medico_fecha_horario();
            Lista.Insert(0, new Mostrar_medico_fecha_horarioResult() { Datos = "" });
            radhorario.DataSource = Lista;
            radhorario.DataTextField = "Datos";
            radhorario.DataValueField = "ID";
            radhorario.DataBind();
        }

        private void Cargar_paciente()
        {

            List<Mostrar_pacienteResult> Lista = new List<Mostrar_pacienteResult>();
            Lista = LogicaPaciente.MostrarPaciente();
            Lista.Insert(0, new Mostrar_pacienteResult() { Paciente = "Pacientes" });
            ddlpaciente.DataSource = Lista;
            ddlpaciente.DataTextField = "Paciente";
            ddlpaciente.DataValueField = "ID";
            ddlpaciente.DataBind();
        }
        protected void btn_guardar_Click(object sender, EventArgs e)
        {

        }

        protected void btn_nuevo_Click(object sender, EventArgs e)
        {

        }

        protected void btn_modificar_Click(object sender, EventArgs e)
        {

        }

        protected void ra_CheckedChanged(object sender, EventArgs e)
        {

        }

        protected void txt_estado_TextChanged(object sender, EventArgs e)
        {

        }

        protected void btn_regresar_Click(object sender, EventArgs e)
        {

        }

        protected void ddl_estado_SelectedIndexChanged(object sender, EventArgs e)
        {

        }
    }
}