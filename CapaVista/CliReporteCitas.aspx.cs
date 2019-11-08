using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using Microsoft.Reporting.WebForms;


namespace CapaVista
{
    public partial class CliReporteCitas : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if (!IsPostBack)
            {
                cargarreporte();
            }
        }
        private void cargarreporte()

        {
            int cod = Convert.ToInt32(Session["paci_id"]);
            ReportParameter p = new ReportParameter("paci_id", Convert.ToString(cod));
            ReportViewer1.LocalReport.SetParameters(p);
            ReportViewer1.LocalReport.Refresh();
        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            //TextBox1.Text = Session["paci_id"].ToString();

            //ReportParameter p = new ReportParameter("paci_id", TextBox1.Text);
            //ReportViewer1.LocalReport.SetParameters(p);
            //ReportViewer1.LocalReport.Refresh();
        }

        protected void btn_siguiente_Click(object sender, EventArgs e)
        {
            int cod = Convert.ToInt32(Session["paci_id"]);
            ReportParameter p = new ReportParameter("paci_id",Convert.ToString(cod));
            ReportViewer1.LocalReport.SetParameters(p);
            ReportViewer1.LocalReport.Refresh();

        }

        protected void ObjectDataSource1_Selecting(object sender, ObjectDataSourceSelectingEventArgs e)
        {

        }
    }
}