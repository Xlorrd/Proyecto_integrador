using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using CapaDatos;

namespace CapaNegocio
{
    public class LogicaEspecialidadMedico
    {
        public static BaseCitasDataContext dc = new BaseCitasDataContext();

        public static List<EspecialidadMedico> ObtenerEspeMedico()
        {
            //var lista = dc.Tbl_Productos.Where(pro => pro.pro_estado == 'A');
            var lista = dc.EspecialidadMedico;
            return lista.ToList();


        }
        
        public static List <Mostrar_espe_medicoResult> Mostrar_espe_me()
        {
            var esm = dc.Mostrar_espe_medico();
            return esm.ToList();
        }

        public static List<Mostrar_espe_mas_medicoResult> Mostrar_espe_mas_me()
        {
            var em = dc.Mostrar_espe_mas_medico();
            return em.ToList();
        }

        public static List<sp_buscar_espemed_xmedicoResult> BuscarMedEspe(string nombre)
        {
            var medespe = dc.sp_buscar_espemed_xmedico(nombre);
            return medespe.ToList();
        }

        public static List<sp_buscar_especialidad_medico_xidResult> BuscarMedEspexid(int id)
        {
            var medespe = dc.sp_buscar_especialidad_medico_xid(id);
            return medespe.ToList();
        }
        public static EspecialidadMedico ObtenerEspeMedicoid(int id)
        {
            var espemedid = dc.EspecialidadMedico.FirstOrDefault(espe => espe.espe_id.Equals(id));
            return espemedid;
        }

        public static EspecialidadMedico ObtenerEspeMedicoNombre(String nombre)
        {
            var espemnombre = dc.EspecialidadMedico.FirstOrDefault(espe => espe.Medico.Equals(nombre));
            return espemnombre;
        }
        public static bool AutentificarEspeMedico(string nom)
        {
            var auto = dc.EspecialidadMedico.Any(espe => espe.Medico.Equals(nom));
            return auto;
        }

        // METODOS PARA MODIFICAR

        public static void save(EspecialidadMedico espe)
        {
            try
            {

                dc.EspecialidadMedico.InsertOnSubmit(espe);
                dc.SubmitChanges();


            }
            catch (Exception ex)
            {
                throw new ArgumentException("los datos no han sido guardados <br/>" + ex.Message);
            }
        }


        public static void modify(EspecialidadMedico espe)
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


                dc.sp_eliminar_espemed(espe);
                dc.SubmitChanges();



            }
            catch (Exception ex)
            {
                throw new ArgumentException("Error al Borrar <br/>" + ex.Message);
            }
        }
    }
}
