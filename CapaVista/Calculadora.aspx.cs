using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace CapaVista
{
    public partial class Calculadora : System.Web.UI.Page
    {
        int antes = 0;
        int despues = 0;
        protected void Page_Load(object sender, EventArgs e)
        {

        }
        
        protected void btn0_Click(object sender, EventArgs e)
        {
            int uno = 0;
            lblcap1.Text = Convert.ToString(uno);
        }

        protected void btn1_Click(object sender, EventArgs e)
        {
          
        }
    }
}