using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace CapaVista
{
    public partial class MenuCliente : System.Web.UI.MasterPage
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void btn_salir_click(object sender, EventArgs e)
        {
            Session["new"] = null;
            Session["con"] = null;
            Session["ConAntiguo"] = null;
            Response.Redirect("~/Cli_iniciar.aspx");
        }
    }
}