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
    public partial class ListaMedicoHorario : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

            if (!IsPostBack)
            {
                cargar();
            }

        }



        public void cargar()
        {

            List<Mostrar_medico_horarioResult> lista = new List<Mostrar_medico_horarioResult>();
            lista = LogicaMedicoHorario.Mostrar_horario();
            if (lista != null)
            {
                GridView1.DataSource = lista;
                GridView1.DataBind();
            }
        }
        protected void GridView1_RowCommand(object sender, GridViewCommandEventArgs e)
        {

            int codigo = Convert.ToInt32(e.CommandArgument);
            if (e.CommandName == "Edit")
            {
                Response.Redirect("~/AgregarMedicoHorario.aspx?cod=" + codigo, true);
            }
            else if (e.CommandName == "Eliminar")
            {
               
                    LogicaMedicoHorario.delete(codigo);
                    cargar();
                
            }

        }



        protected void lnk_nuevo_Click(object sender, EventArgs e)
        { 
            Response.Redirect("~/AgregarMedicoHorario.aspx");
        }

        protected void txt_buscar_TextChanged(object sender, EventArgs e)
        {

        }

        protected void ddl_criterio_SelectedIndexChanged(object sender, EventArgs e)
        {

        }

        protected void grd_med_SelectedIndexChanged(object sender, EventArgs e)
        {

        }

        protected void img_lupa_Click(object sender, ImageClickEventArgs e)
        {
            List<sp_buscar_medico_horario_xmedicoResult> cap = new List<sp_buscar_medico_horario_xmedicoResult>();
       
            string op = ddl_criterio.SelectedValue;
            if (op != "0")
            {
                switch (op)
                {
                    case "N":
                        cap = LogicaMedicoHorario.Buscar_medico_horario_xmedico(txt_buscar.Text);
                        if (cap != null)
                        {
                            if (txt_buscar.Text == "")
                            {
                                cargar();

                            }
                            else
                            {
                                GridView1.DataSource = cap;
                                GridView1.DataBind();
                            }
                        }
                        else
                        {
                            cargar();
                        }
                        break;
                }
            }
        }

        protected void GridView1_SelectedIndexChanged(object sender, EventArgs e)
        {

        }
    }
}