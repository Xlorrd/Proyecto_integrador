using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

using CapaDatos;
using System.Data.Linq;
using System.Configuration;
using System.Net.Mail;
using System.Net;


namespace CapaNegocio
{
  public  class UsuarioLogica
    {
        //instancia capa datos
        public static DataClasses1DataContext dc = new DataClasses1DataContext();
        // hacer lo que es un select * from

        public static List<Tbl_Usuario> Obtenerusuarios()
        {
            var Lista = dc.Tbl_Usuario.Where(usu => usu.usu_estado == 'A');
            return Lista.ToList();
        }

        //metodo para verificar credenciales  de login de cualquier usuario

        public static bool Autentificar(string nombre, String pass)
        {
            var auto = dc.Tbl_Usuario.Any(usu => usu.usu_estado == 'A' & usu.usu_nomlogin.Equals(nombre)
            & usu.usu_contrasenia.Equals(pass));
            return auto;
        }

        //verificar un usuario en especifico 

        public static Tbl_Usuario Autentificarlogin(String nombre, string pass)
        {
            var nlogin = dc.Tbl_Usuario.Single(usu => usu.usu_estado == 'A' & usu.usu_nomlogin.Equals(nombre)
            & usu.usu_contrasenia.Equals(pass));
            return nlogin;
        }

        // metodo de guardar 

        public static void save(Tbl_Usuario usuario)
        {
            try
            {
                usuario.usu_estado = 'A';
                usuario.usu_fechacreacion = DateTime.Now;
                dc.Tbl_Usuario.InsertOnSubmit(usuario);
                dc.SubmitChanges();
            }
            catch (Exception ex)
            {
                throw new ArgumentException("Los Datos no han sido guardados </br>" + ex.Message);
            }
        }

        public void EnviarEmail(string EnviarE, string ContraseñaRecuperar)
        {
            //ahora accedemos a lo que hay en el web config que es el correo y contraseña de administrador
            string correoAdministrador = ConfigurationManager.AppSettings["CorreoElectronico"].ToString();
            string contraseñaAdministrador = ConfigurationManager.AppSettings["ContraseñaCorreo"].ToString();

            string asunto = "Recuperacion de de Contraseña ";

            string body = "Su Contraseña es: " + ContraseñaRecuperar;

            //configuraciones smtp
            var smtp = new SmtpClient();
            {
                smtp.Host = "smtp.gmail.com";
                smtp.Port = 587;
                smtp.EnableSsl = true;
                smtp.DeliveryMethod = SmtpDeliveryMethod.Network;
                smtp.Credentials = new NetworkCredential(correoAdministrador, contraseñaAdministrador);
                smtp.Timeout = 20000; //tiempo de espera para mandar el correo 
            }

            try
            {
                smtp.Send(correoAdministrador, EnviarE, asunto, body);
            }
            catch (Exception ex)
            {
                //ScriptManager.RegisterClientScriptBlock(this.Page, this.GetType(), "AlertUsuario", "Window.onload - " +
              //"function(){alert ('El usuario no existe');};", true);

            }
        }
        public void EnviarHotmail(string EnviarE, string ContraseñaRecuperar)
        {
            //ahora accedemos a lo que hay en el web config que es el correo y contraseña de administrador
            string correoAdministrador = ConfigurationManager.AppSettings["CorreoElectronicoHot"].ToString();
            string contraseñaAdministrador = ConfigurationManager.AppSettings["ContraseñaCorreoHot"].ToString();

            string asunto = "Recuperacion de de Contraseña ";

            string body = "Su Contraseña es: " + ContraseñaRecuperar;

            //configuraciones smtp
            var smtp = new SmtpClient();
            {
                smtp.Host = "smtp.hotmail.com";
                smtp.Port = 465;
                smtp.EnableSsl = true;
                smtp.DeliveryMethod = SmtpDeliveryMethod.Network;
                smtp.Credentials = new NetworkCredential(correoAdministrador, contraseñaAdministrador);
                smtp.Timeout = 20000; //tiempo de espera para mandar el correo 
            }

            try
            {
                smtp.Send(correoAdministrador, EnviarE, asunto, body);
            }
            catch (Exception ex)
            {
                //ScriptManager.RegisterClientScriptBlock(this.Page, this.GetType(), "AlertUsuario", "Window.onload - " +
                //"function(){alert ('El usuario no existe');};", true);

            }
        }
    }
}
