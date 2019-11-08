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
    public partial class ListaProducto : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if (!IsPostBack)
            {
                MostrarProducto();

            }

        }
        public void MostrarProducto()
        {
            List<MostrarProductoResult> lista = new List<MostrarProductoResult>();

            lista = Dao_producto.Mostrarproducto();
            if (lista != null)
            {
                GridView1.DataSource = lista;
                GridView1.DataBind();
            }
        }
        protected void GridView1_SelectedIndexChanged(object sender, EventArgs e)
        {

        }

        protected void lnk_nuevo_Click1(object sender, EventArgs e)
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

                Dao_producto.delete(codigo);
                MostrarProducto();
            }
        }
    }
}