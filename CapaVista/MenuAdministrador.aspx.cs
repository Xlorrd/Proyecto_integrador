using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace CapaVista
{
    public partial class MenuAdministrador : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            Session.Timeout = 1;

            if (Session["New"] != null)
            {
                usu.Text = Session["New"].ToString();
            }
            else
            {
                Response.Redirect("~/Sesion.aspx");
            }

        }

       
        

        protected void btn_salir_click(object sender, EventArgs e)
        {
            Session["new"] = null;
            Session["con"] = null;
            Session["ConAntiguo"] = null;
            Response.Redirect("~/Sesion.aspx");
        }
    }
}