using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using CapaDatos;
using System.Data.Linq;

namespace CapaNegocio
{
 public  class LogicaTipoUsuario
    {
        public static BaseCitasDataContext dc = new BaseCitasDataContext();

        public static List<Tipo_usuario> Obtenertipousuario()
        {
            var Lista = dc.Tipo_usuario.Where(tusu => tusu.estado_tipousu == 'A');
            return Lista.ToList();

        }
       

        public static List<Tipo_usuario> obtenerTipoU()
        {
            //var lista = dc.Tbl_Productos.Where(pro => pro.pro_estado == 'A');
            var lista = dc.Tipo_usuario;
            return lista.ToList();


        }

        public static Tipo_usuario ObtenerTipid(int id)
        {
            var tipus = dc.Tipo_usuario.FirstOrDefault(tip => tip.id_tipousu.Equals(id));
            return tipus;
        }

        public static Tipo_usuario Obtenertipunombre(String nombre)
        {
            var tipnombre = dc.Tipo_usuario.FirstOrDefault(tip => tip.nombre_tipousu.Equals(nombre));
            return tipnombre;
        }
        public static bool Autentificartipus(string nom)
        {
            var auto = dc.Citas.Any(cit => cit.Paciente.Equals(nom));
            return auto;
        }

        // METODOS PARA MODIFICAR

        public static void save(Tipo_usuario tip)
        {
            try
            {

                dc.Tipo_usuario.InsertOnSubmit(tip);
                dc.SubmitChanges();


            }
            catch (Exception ex)
            {
                throw new ArgumentException("los datos no han sido guardados <br/>" + ex.Message);
            }
        }


        public static void modify(Tipo_usuario tip)
        {
            try
            {


                dc.SubmitChanges();


            }
            catch (Exception ex)
            {
                throw new ArgumentException("Error al modificar <br/>" + ex.Message);
            }
        }

        public static void delete(Tipo_usuario tip)
        {
            try
            {


                dc.Tipo_usuario.DeleteOnSubmit(tip);
                dc.SubmitChanges();



            }
            catch (Exception ex)
            {
                throw new ArgumentException("Error al Borrar <br/>" + ex.Message);
            }
        }

    }
}
