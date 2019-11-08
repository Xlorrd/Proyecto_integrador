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
    public partial class ListaCitas1 : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if (!IsPostBack)
            {
                MostrarCitas();
            
            }
        }
        
      
        public void MostrarCitas()
        {
            List<Mostrar_CitasResult> lista = new List<Mostrar_CitasResult>();
    
            lista = LogicaCitas.MostrarCitas();
            if(lista != null)
            {
                GridView1.DataSource = lista;
                    GridView1.DataBind();
            }
        }
        public void cargarlista()
        {
           
        }
        protected void lnk_nuevo_Click(object sender, EventArgs e)
        {
            Response.Redirect("~/AgregarCitas.aspx");
        }


        protected void img_lupa_Click(object sender, ImageClickEventArgs e)
        {
            List<Citas> lis = new List<Citas>();
           List<sp_buscar_cita_xpacienteResult> cap = new List<sp_buscar_cita_xpacienteResult>();
           
            string op = ddl_criterio.SelectedValue;
            if (op != "0")
            {
                switch (op)
                {
                    case "N":
                        cap = LogicaCitas.BuscarPacienteNombre(txt_buscar.Text);
                        if (cap != null)
                        {
                            if (txt_buscar.Text == "")
                            {
                                MostrarCitas();
                            }
                            else { 
                            GridView1.DataSource = cap;
                            GridView1.DataBind();
                                 }
                        }
                        else
                        {
                            MostrarCitas();
                        }
                        break;
                }
            }
        }

        protected void grd_cita_SelectedIndexChanged(object sender, EventArgs e)
        {

        }

        protected void ddl_criterio_SelectedIndexChanged(object sender, EventArgs e)
        {

        }

        protected void lnk_nuevo_Click1(object sender, EventArgs e)
        {
            Response.Redirect("~/AgregarCitas.aspx");
        }

        protected void GridView1_SelectedIndexChanged(object sender, EventArgs e)
        {


        }
        protected void GridView1_RowCommand(object sender, GridViewCommandEventArgs e)
        {

            int codigo = Convert.ToInt32(e.CommandArgument);
            if (e.CommandName == "Edit")
            {
                Response.Redirect("~/AgregarCitas.aspx?cod=" + codigo, true);
            }
            else if (e.CommandName == "Eliminar")
            {
              
                    LogicaCitas.eliminar(codigo);
                    MostrarCitas();
            }
        }
        }


    }