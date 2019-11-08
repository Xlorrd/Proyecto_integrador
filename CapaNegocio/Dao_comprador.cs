using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using CapaDatos;

namespace CapaNegocio
{
   public class Dao_comprador
    {

        public static Examen_AlexDataContext dc = new Examen_AlexDataContext();

        public static List<Tbl_Comprador> obtenerComprador()
        {

            var lista = dc.Tbl_Comprador;
            return lista.ToList();


        }
        public static List<MostrarCompradorResult> MostrarComprador()
        {
            var espe = dc.MostrarComprador();
            return espe.ToList();
        }
        public static Tbl_Comprador obtenercompradorid(int id)
        {
            var comid = dc.Tbl_Comprador.FirstOrDefault(cit => cit.com_id.Equals(id));
            return comid;
        }




        // METODOS PARA MODIFICAR

        public static void save(Tbl_Comprador compa)
        {
            try
            {

                dc.Tbl_Comprador.InsertOnSubmit(compa);
                dc.SubmitChanges();

            }
            catch (Exception ex)
            {
                throw new ArgumentException("los datos no han sido guardados <br/>" + ex.Message);
            }
        }


        public static void modify(Tbl_Comprador compa)
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

        public static void delete(int compa)
        {
            try
            {

                dc.sp_eliminar_comprador(compa);
                dc.SubmitChanges();

            }
            catch (Exception ex)
            {
                throw new ArgumentException("Error al Borrar <br/>" + ex.Message);
            }
        }

    }
}
