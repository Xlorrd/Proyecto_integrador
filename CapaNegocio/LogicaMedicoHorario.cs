using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using CapaDatos;

namespace CapaNegocio
{
   public class LogicaMedicoHorario
    {
        public static BaseCitasDataContext dc = new BaseCitasDataContext();

        public static List<Medico_Horario> ObtenerMedicoHorario()
        {
            //var lista = dc.Tbl_Productos.Where(pro => pro.pro_estado == 'A');
            var lista = dc.Medico_Horario;
            return lista.ToList();


        }

        public static List<Mostrar_medico_horarioResult> Mostrar_horario()
            {
            var mh = dc.Mostrar_medico_horario();
            return mh.ToList();
        }
        public static List<Mostrar_medico_fecha_horarioResult> Mostrar_medico_fecha_horario()
        {
            var mfh = dc.Mostrar_medico_fecha_horario();
            return mfh.ToList();
        }
      
        public static List<sp_buscar_medico_horario_xmedicoResult> Buscar_medico_horario_xmedico(string me)
        {
            var medh = dc.sp_buscar_medico_horario_xmedico(me);
            return medh.ToList();
        }
       

        public static List<sp_buscar_medico_horario_xespemedResult> Buscar_medico_horario_xid(int me)
        {
            var medh = dc.sp_buscar_medico_horario_xespemed(me);
            return medh.ToList();
        }

        public static Medico_Horario ObtenerMedicoHorarioid(int id)
        {
            var medihid = dc.Medico_Horario.FirstOrDefault(med => med.medhor_id.Equals(id));
            return medihid;
        }

        public static Medico_Horario ObtenerMedicoHorarionombre(String nombre)
        {
            var medihnombre = dc.Medico_Horario.FirstOrDefault(med => med.medhor_fecha.Equals(nombre));
            return medihnombre;
        }

      
        public static bool AutentificarMedicoHorario(string nom)
        {
            var auto = dc.Medico_Horario.Any(med => med.medhor_fecha.Equals(nom));
            return auto;
        }

        // METODOS PARA MODIFICAR

        public static void save(Medico_Horario medh)
        {
            try
            {

                dc.Medico_Horario.InsertOnSubmit(medh);
                dc.SubmitChanges();


            }
            catch (Exception ex)
            {
                throw new ArgumentException("los datos no han sido guardados <br/>" + ex.Message);
            }
        }


        public static void modify(Medico_Horario medh)
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
        public static void reservarmedhor(int id)
        {
            try
            {

                dc.sp_reservar_medico_horario(id);

                dc.SubmitChanges();


            }
            catch (Exception ex)
            {
                throw new ArgumentException("Error al modificar <br/>" + ex.Message);
            }
        }



        public static void delete(int medh)
        {
            try
            {


                dc.sp_eliminar_medico_horario(medh);
                dc.SubmitChanges();



            }
            catch (Exception ex)
            {
                throw new ArgumentException("Error al Borrar <br/>" + ex.Message);
            }
        }
    }
}
