using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

using CapaDatos;
using CapaNegocio;

namespace CapaVista
{
    public partial class WebForm1 : System.Web.UI.Page
    {
        private EspecialidadMedico info = new EspecialidadMedico();

        protected void Page_Load(object sender, EventArgs e)
        {
            if (!IsPostBack)
            {
                if (Request["cod"] != null)
                {
              
                    
                    int codigo = Convert.ToInt32(Request["cod"]);
                    info = LogicaEspecialidadMedico.ObtenerEspeMedicoid(codigo);
                    if (info != null)
                    {

                        RadioButtonList1.Text = info.espmed_id.ToString();
                  
                                           
                    }
                }
                mdhorario();
            }
        }


        public void cargar()
        {
           

            List<sp_buscar_especialidad_medico_xidResult> lista = new List<sp_buscar_especialidad_medico_xidResult>();
            lista = LogicaEspecialidadMedico.BuscarMedEspexid(2);
            EspecialidadMedico d = new EspecialidadMedico();

            d = LogicaEspecialidadMedico.ObtenerEspeMedicoid(2);
         
            if (lista != null)
            {
                GridView1.DataSource = lista;
                GridView1.DataBind();

                CheckBoxList1.Items.Add("d");
                CheckBoxList1.DataBind();

                RadioButtonList1.DataSource = lista;
                RadioButtonList1.DataBind();

                DropDownList1.DataSource = lista;
                DropDownList1.DataBind();
                
            }
        }
        public void mdhorario()
        {
            List<sp_buscar_especialidad_medico_xidResult> Lista = new List<sp_buscar_especialidad_medico_xidResult>();
            Lista = LogicaEspecialidadMedico.BuscarMedEspexid(2);
            Lista.Insert(0, new sp_buscar_especialidad_medico_xidResult() { Médico = "" });
            RadioButtonList1.DataSource = Lista;
            RadioButtonList1.DataTextField = "Médico";
            RadioButtonList1.DataValueField = "ID";
            RadioButtonList1.DataBind();
        }


        protected void Button1_Click(object sender, EventArgs e)
        {
            cargar();
        }
    }


}