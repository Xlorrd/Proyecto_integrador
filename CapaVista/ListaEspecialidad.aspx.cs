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
    public partial class ListaEspecialidad : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if (!IsPostBack)
            {
                MostrarEspecialidad();
            }
        }
        public void MostrarEspecialidad()
        {
            List<Mostrar_especialidadResult> lista = new List<Mostrar_especialidadResult>();
            lista =LogicaEspecialidad.MostrarEspecialidad();
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
                Response.Redirect("~/AgregarEspecialidad.aspx?cod=" + codigo, true);
            }
            else if (e.CommandName == "Eliminar")
            {               
                    LogicaEspecialidad.delete(codigo);
                    MostrarEspecialidad();
                
            }

        }
        protected void img_lupa_Click(object sender, ImageClickEventArgs e)
        {
            List<Especialidad> lis = new List<Especialidad>();
            List<sp_buscar_especialidad_xdescripcionResult> cap = new List<sp_buscar_especialidad_xdescripcionResult>();
            string op = ddl_criterio.SelectedValue;
            if (op != "0")
            {
                switch (op)
                {
                    case "N":
                        cap = LogicaEspecialidad.BuscarEspecialidadxDescripcion(txt_buscar.Text);
                        if (cap != null)
                        {
                            if (txt_buscar.Text == "")
                            {
                                MostrarEspecialidad();

                            }
                            else { 
                            GridView1.DataSource = cap;
                            GridView1.DataBind();
                            }
                        }
                        else
                        {
                            MostrarEspecialidad();
                        }
                        break;
                }
            }
        }
        protected void grd_espe_SelectedIndexChanged(object sender, EventArgs e)
        {

        }

        protected void ddl_criterio_SelectedIndexChanged(object sender, EventArgs e)
        {

        }

        protected void txt_buscar_TextChanged(object sender, EventArgs e)
        {

        }

        protected void lnk_nuevo_Click(object sender, EventArgs e)
        {
            Response.Redirect("~/AgregarEspecialidad.aspx");
        }

        protected void GridView1_SelectedIndexChanged(object sender, EventArgs e)
        {

        }
    }
}