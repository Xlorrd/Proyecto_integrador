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
    public partial class WebForm3 : System.Web.UI.Page
    {
        private Tbl_usuario info = new Tbl_usuario();
        protected void Page_Load(object sender, EventArgs e)
        {
            if (!IsPostBack)
            {
                MostrarCitas();
            }
        }

        public void MostrarCitas()
        {
            List<tempo_mostrar_usuarioResult> lista = new List<tempo_mostrar_usuarioResult>();

            lista = Logica_Usuario.MostrarUsuario();
            if (lista != null)
            {
                //GridView1.DataSource = lista;
                //GridView1.DataBind();
            }
        }


        private void Guardar()
        {
            try
            {
                lbl_mensaje.Text = "";
                info = new Tbl_usuario();

                info.usu_id = Convert.ToInt32( usu_id.Text);
                info.usu_foto = FileUpload1.FileBytes;


                Logica_Usuario.save(info);
                lbl_mensaje.Visible = true;
                lbl_mensaje.Text = "Datos Guardados con exito";

            }
            catch (Exception ex)
            {
                lbl_mensaje.Visible = true;
                lbl_mensaje.Text = "Datos no Guardados" + ex.Message;
            }
        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            Guardar();
        }

        protected void GridView1_SelectedIndexChanged(object sender, EventArgs e)
        {

        }

        protected void cargar_Click(object sender, EventArgs e)
        {

        }
    }
}