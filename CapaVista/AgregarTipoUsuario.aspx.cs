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
    public partial class AgregarTipoUsuario : System.Web.UI.Page
    {
        private Tipo_usuario info = new Tipo_usuario();
        protected void Page_Load(object sender, EventArgs e)
        {
            if (!IsPostBack)
            {
                if (Request["cod"] != null)
                {
                    btn_modificar.Visible = true;
                    btn_nuevo.Enabled = false;
                    int codigo = Convert.ToInt32(Request["cod"]);
                    info = LogicaTipoUsuario.ObtenerTipid(codigo);
                    if (info != null)
                    {

                        txt_roll.Text = info.nombre_tipousu.ToString();
                        txt_estado.Text = info. estado_tipousu.ToString();
                   
                        btn_guardar.Visible = false;
                    }
                }
              
            }
        }

        private void Guardar()
        {
            try
            {
                lbl_mensaje.Text = "";
                info = new Tipo_usuario();

                info.nombre_tipousu = txt_roll.Text;
                info.estado_tipousu = Convert.ToChar( txt_estado.Text);
             

                LogicaTipoUsuario.save(info);
                lbl_mensaje.Visible = true;
                lbl_mensaje.Text = "Datos Guardados con exito";

            }
            catch (Exception ex)
            {
                lbl_mensaje.Visible = true;
                lbl_mensaje.Text = "Datos no Guardados" + ex.Message;
            }
        }
        protected void btn_nuevo_Click(object sender, EventArgs e)
        {

        }

        protected void btn_guardar_Click(object sender, EventArgs e)
        {
            Guardar();
        }

        protected void btn_modificar_Click(object sender, EventArgs e)
        {

        }

        protected void btn_regresar_Click(object sender, EventArgs e)
        {

        }
    }
}