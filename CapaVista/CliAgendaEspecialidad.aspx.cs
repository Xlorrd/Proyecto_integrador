using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using CapaDatos;
using CapaNegocio;
using System.Data.Linq;

namespace CapaVista
{
    public partial class ClienteMenu : System.Web.UI.Page
    {
        private Especialidad info = new Especialidad();
        protected void Page_Load(object sender, EventArgs e)
        {
            if (!IsPostBack)
            {
                MostrarEspecialidad();
             
                              
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
        private void MostrarEspecialidad()
        {

            List<Especialidad> Lista = new List<Especialidad>();
            Lista = LogicaEspecialidad.ObtenerEspecialidad();
            //Lista.Insert(0, new Especialidad() { espe_descripcion = "" });

            RadioButtonList1.DataSource = Lista;
            RadioButtonList1.DataTextField = "espe_descripcion";
            RadioButtonList1.DataValueField = "espe_id";
            RadioButtonList1.DataBind();


            //GridView1.DataSource = Lista;
            //rd_especialidad.DataTextField = "espe_descripcion";
            //rd_especialidad.DataValueField = "espe_id";
            //rd_especialidad.DataBind();


            //List<Mostrar_especialidadResult> lista = new List<Mostrar_especialidadResult>();
            //lista = LogicaEspecialidad.MostrarEspecialidad();
            //if (lista != null)
            //{
            //    .DataSource = lista;
            //    .DataBind();
            //}

        }


        private void capturar_especialidad()
        {

            int codigo = Convert.ToInt32(RadioButtonList1.Text);
            Response.Redirect("~/CliAgendaMedico.aspx?espe_id=" + codigo, true);

        }
       


        protected void btn_regs_espe_Click(object sender, EventArgs e)
        {

            capturar_especialidad();
           // Response.Redirect("~/AgregarEspecialidadMedico.aspx?cod=" + codigo, true);
        }

        protected void rd_especialidad_SelectedIndexChanged(object sender, EventArgs e)
        {

        }

        protected void GridView1_SelectedIndexChanged(object sender, EventArgs e)
        {

        }
    }
}