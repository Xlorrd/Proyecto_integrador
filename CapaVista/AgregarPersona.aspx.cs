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
    public partial class AgregarPersona : System.Web.UI.Page
    {
        private Persona info = new Persona();
        protected void Page_Load(object sender, EventArgs e)
        {

            if (!IsPostBack)
            {
                if (Request["cod"] != null)
                {
                    btn_modificar.Visible = true;
                    btn_nuevo.Enabled = false;
                    int codigo = Convert.ToInt32(Request["cod"]);
                    info = LogicaPersona.ObtenerPersonaid(codigo);
                    if (info != null)
                    {

                        txt_nombre.Text = info.per_nombres.ToString();
                        txt_apellido.Text = info.per_apellidos.ToString();
                        txt_cedula.Text = info.per_cedula.ToString();
                        txt_correo.Text = info.per_email.ToString();
                        txt_telefono.Text = info.per_telefono.ToString();
                        txt_nacimiento.Text = info.per_fechanacimiento.ToString();
                        txt_genero.Text = info.per_genero.ToString();
                        txt_direccion.Text = info.per_direccion.ToString();
                        txt_usuario.Text = info.per_usuario.ToString();
                        txt_contra.Text = info.per_contrasenia.ToString();

                        ddl_tipousu.SelectedValue = info.id_tipousu.ToString();

                        btn_guardar.Visible = false;
                    }
                }
                CargarRoll();
            }
            

        }
        private void CargarRoll()
        {

            List<Tipo_usuario> Lista = new List<Tipo_usuario>();
            Lista = LogicaTipoUsuario.Obtenertipousuario();
            Lista.Insert(0, new Tipo_usuario() { nombre_tipousu = "..." });
            ddl_tipousu.DataSource = Lista;
            ddl_tipousu.DataTextField = "nombre_tipousu";
            ddl_tipousu.DataValueField = "id_tipousu";
            ddl_tipousu.DataBind();

        }
        private void Guardar()
        {
            try
            {
                lbl_mensaje.Text = "";
                info = new Persona();
 
                info.per_nombres =txt_nombre.Text;
                info.per_apellidos= txt_apellido.Text;
                info.per_cedula= Convert.ToInt32( txt_cedula.Text);
                info.per_email= txt_correo.Text;
                info.per_telefono = txt_telefono.Text;
                info.per_fechanacimiento=  Convert.ToString( txt_nacimiento.Text);
                info.per_genero = txt_genero.Text;
                info.per_direccion= Convert.ToString( txt_direccion);
                info.per_usuario= txt_usuario.Text;
                info.per_contrasenia= txt_contra.Text;
                info.id_tipousu = Convert.ToInt32(ddl_tipousu.SelectedValue);

                LogicaPersona.save(info);
                lbl_mensaje.Visible = true;
                lbl_mensaje.Text = "Datos Guardados con exito";

            }
            catch (Exception ex)
            {
                lbl_mensaje.Visible = true;
                lbl_mensaje.Text = "Datos no Guardados" + ex.Message;
            }
        }
        protected void TextBox4_TextChanged(object sender, EventArgs e)
        {

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