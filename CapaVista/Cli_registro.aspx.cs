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
    public partial class Cli_registro : System.Web.UI.Page
    {
        private Persona info = new Persona();
        private Paciente paci = new Paciente();
        private Medico med = new Medico();
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        private void Guardar_cuenta()
        {

            try
            {
             
                info = new Persona();

                info.per_nombres = txt_nombre.Text;
                info.per_apellidos =txt_apellido.Text;
                info.per_email = txt_correo.Text;
                info.per_contrasenia = txt_contra.Text;
                info.per_usuario = txt_correo.Text;
                info.id_tipousu =Convert.ToInt32(2);
                
             
              
                LogicaPersona.save(info);
                Label1.Visible = true;
                Label1.Text = "Datos Guardados con exito";

            }
            catch (Exception ex)
            {
                Label1.Text = "Problemasal guardar";
            }
        }
        //Agrega un paciente o doctor 
        //private void ValidarRoll()
        //{
        //    if (ddl_roll.Text==Convert.ToString(2))
        //    {
        //        paci = new Paciente();
        //        paci.per_id= Convert.ToInt32(ddl_roll.Text);

        //        LogicaPaciente.save(paci);


        //    }
        //    else if(ddl_roll.Text == Convert.ToString(3))
        //    {
        //        med = new Medico();
        //        med.per_id= Convert.ToInt32(ddl_roll.Text);
        //        LogicaMedico.save(med);

        //    }

        
        protected void btn_registra_Click(object sender, EventArgs e)
        {
            Guardar_cuenta();
           
        }
    }
}