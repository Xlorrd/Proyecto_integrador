using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using CapaDatos;

namespace CapaNegocio
{
    public class LogicaEspecialidad
    {
        public static BaseCitasDataContext dc = new BaseCitasDataContext();

        public static List<Especialidad> ObtenerEspecialidad()
        {
         
            var lista = dc.Especialidad;    
            return lista.ToList();


        }
        public static List<Mostrar_especialidadResult> MostrarEspecialidad()
        {
            var espe = dc.Mostrar_especialidad();
            return espe.ToList();
        }
        public static Especialidad ObtenerEspecialidadid(int id)
        {
            var espeid = dc.Especialidad.FirstOrDefault(cit => cit.espe_id.Equals(id));
            return espeid;
        }

        public static List<sp_buscar_especialidad_xdescripcionResult> BuscarEspecialidadxDescripcion(string descripcion)
        {

            var espe = dc.sp_buscar_especialidad_xdescripcion(descripcion);
            return espe.ToList();
        }
        public static Especialidad ObtenerEspecialidadnombre(String nombre)
        {
            var espenombre = dc.Especialidad.FirstOrDefault(cit => cit.espe_descripcion.Equals(nombre));
            return espenombre;
        }
        public static Especialidad ObtenerEspecialidadxid(int id)
        {
            var espei = dc.Especialidad.FirstOrDefault(esp => esp.espe_id.Equals(id));
            return espei;
        }
        public static bool AutentificarEspecialidad(string nom)
        {
            var auto = dc.Especialidad.Any(espe => espe.espe_descripcion.Equals(nom));
            return auto;
        }

        // METODOS PARA MODIFICAR

        public static void save(Especialidad espe)
        {
            try
            {
                    
                dc.Especialidad.InsertOnSubmit(espe);
                dc.SubmitChanges();
                
            }
            catch (Exception ex)
            {
                throw new ArgumentException("los datos no han sido guardados <br/>" + ex.Message);
            }
        }


        public static void modify(Especialidad espe)
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

        public static void delete(int espe)
        {
            try
            {
                
                dc.sp_eliminar_especialidad(espe);
                dc.SubmitChanges();
                                
            }
            catch (Exception ex)
            {
                throw new ArgumentException("Error al Borrar <br/>" + ex.Message);
            }
        }

    }
}
