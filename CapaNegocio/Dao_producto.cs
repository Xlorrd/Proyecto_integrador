using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using CapaDatos;
namespace CapaNegocio
{
  public  class Dao_producto
    {


        public static Examen_AlexDataContext dc = new Examen_AlexDataContext();

        public static List<Tbl_Producto> obtenerProducto()
        {

            var lista = dc.Tbl_Producto;
            return lista.ToList();


        }
        public static List<MostrarProductoResult> Mostrarproducto()
        {
            var espe = dc.MostrarProducto();
            return espe.ToList();
        }
        public static Tbl_Producto ObtenerProductoId(int id)
        {
            var comid = dc.Tbl_Producto.FirstOrDefault(cit => cit.pro_id.Equals(id));
            return comid;
        }




        // METODOS PARA MODIFICAR

        public static void save(Tbl_Producto pro)
        {
            try
            {

                dc.Tbl_Producto.InsertOnSubmit(pro);
                dc.SubmitChanges();

            }
            catch (Exception ex)
            {
                throw new ArgumentException("los datos no han sido guardados <br/>" + ex.Message);
            }
        }


        public static void modify(Tbl_Producto pro)
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

        public static void delete(int pro)
        {
            try
            {

                dc.sp_eliminar_producto(pro);
                dc.SubmitChanges();

            }
            catch (Exception ex)
            {
                throw new ArgumentException("Error al Borrar <br/>" + ex.Message);
            }
        }

    }
}