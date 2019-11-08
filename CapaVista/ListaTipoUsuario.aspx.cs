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
    public partial class ListaTipoUsuario : System.Web.UI.Page
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

            List<Tipo_usuario> lista = new List<Tipo_usuario>();
            lista = LogicaTipoUsuario.Obtenertipousuario();
            if (lista != null)
            {
                grd_tip.DataSource = lista;
                grd_tip.DataBind();
            }
        }

        protected void grd_tip_RowCommand(object sender, GridViewCommandEventArgs e)
        {

            int codigo = Convert.ToInt32(e.CommandArgument);
            if (e.CommandName == "Edit")
            {
                Response.Redirect("~/AgregarTipoUsuario.aspx?cod=" + codigo, true);
            }
            else if (e.CommandName == "Eliminar")
            {
                Tipo_usuario de = new Tipo_usuario();
                de = LogicaTipoUsuario.ObtenerTipid(codigo);
                if (de != null)
                {
                    LogicaTipoUsuario.delete(de);
                    cargar();
                }
            }

        }


        protected void lnk_nuevo_Click(object sender, EventArgs e)
        {
            Response.Redirect("~/AgregarTipoUsuario.aspx");
        }

        protected void img_lupa_Click(object sender, ImageClickEventArgs e)
        {
            List<Tipo_usuario> lis = new List<Tipo_usuario>();
            Tipo_usuario cap = new Tipo_usuario();
            string op = ddl_criterio.SelectedValue;
            if (op != "0")
            {
                switch (op)
                {
                    case "N":
                        cap = LogicaTipoUsuario.Obtenertipunombre(txt_buscar.Text);
                        if (cap != null)
                        {
                            lis.Add(cap);
                            grd_tip.DataSource = lis;
                            grd_tip.DataBind();
                        }
                        else
                        {
                            cargar();
                        }
                        break;
                }
            }
        }

        protected void ddl_criterio_SelectedIndexChanged(object sender, EventArgs e)
        {

        }

        protected void txt_buscar_TextChanged(object sender, EventArgs e)
        {

        }

        protected void grd_tip_SelectedIndexChanged(object sender, EventArgs e)
        {

        }
    }
}