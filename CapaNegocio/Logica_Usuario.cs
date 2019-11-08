using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using CapaDatos;

namespace CapaNegocio
{
   public class Logica_Usuario
    {
        public static BaseCitasDataContext dc = new BaseCitasDataContext();


        public static List<tempo_mostrar_usuarioResult> MostrarUsuario()
        {
            var usu = dc.tempo_mostrar_usuario();
            return usu.ToList();

        }
        public static void save(Tbl_usuario user)
        {
            try
            {

                dc.Tbl_usuario.InsertOnSubmit(user);
                dc.SubmitChanges();


            }
            catch (Exception ex)
            {
                throw new ArgumentException("los datos no han sido guardados <br/>" + ex.Message);
            }
        }

    }
}
