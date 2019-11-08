using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using CapaDatos;


namespace CapaNegocio
{
   public class LogicaMedico
    {
        public static BaseCitasDataContext dc = new BaseCitasDataContext();

        public static List<Medico> ObtenerMedico()
        {
            //var lista = dc.Tbl_Productos.Where(pro => pro.pro_estado == 'A');
            var lista = dc.Medico;
            return lista.ToList();


        }

        public static List<Mostrar_medicoResult> Mostrar_medico()
        {
            var med = dc.Mostrar_medico();
            return med.ToList();
        }
        public static Medico ObtenerMedicoid(int id)
        {
            var medid = dc.Medico.FirstOrDefault(med => med.med_id.Equals(id));
            return medid;
        }

        public static List<sp_buscar_medico_xpersonaResult> Buscar_medico(string nombre)
        {
            var bmed = dc.sp_buscar_medico_xpersona(nombre);
            return bmed.ToList();
        }

        public static Medico ObteneMedicoNombre(String nombre)
        {
            var mednombre = dc.Medico.FirstOrDefault(med => med.med_abreviatura.Equals(nombre));
            return mednombre;
        }
        public static bool AutentificarMedico(string nom)
        {
            var auto = dc.Medico.Any(med => med.med_abreviatura.Equals(nom));
            return auto;
        }

        // METODOS PARA MODIFICAR

        public static void save(Medico med)
        {
            try
            {

                dc.Medico.InsertOnSubmit(med);
                dc.SubmitChanges();


            }
            catch (Exception ex)
            {
                throw new ArgumentException("los datos no han sido guardados <br/>" + ex.Message);
            }
        }


        public static void modify(Medico med)
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

        public static void delete(int med)
        {
            try
            {
                
                dc.sp_eliminar_medico(med);
                dc.SubmitChanges();
                               
            }
            catch (Exception ex)
            {
                throw new ArgumentException("Error al Borrar <br/>" + ex.Message);
            }
        }
    }
}
