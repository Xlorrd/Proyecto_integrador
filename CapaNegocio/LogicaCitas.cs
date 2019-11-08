using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using CapaDatos;


namespace CapaNegocio
{
    public class LogicaCitas
    {
        public static BaseCitasDataContext dc = new BaseCitasDataContext();

        public static List<Citas> ObtenerCita()
        {
            //var lista = dc.Citas.Where(pro => pro.cita_estado == "Reservado");

            var lista = dc.Citas;
            return lista.ToList();
        }

        public static List<Mostrar_CitasResult> MostrarCitas()
        {
            var list = dc.Mostrar_Citas();
            return list.ToList();
        }

        public static Citas ObtenerCitaid(int id)
        {
            var citid = dc.Citas.FirstOrDefault(cit => cit.cita_id.Equals(id));
            return citid;
        }
     
        public static List<sp_buscar_cita_idResult> BuscarCita(int id)
        {
            var citid = dc.sp_buscar_cita_id(id);

                    return citid.ToList();



                    }

        
        public static List<sp_buscar_cita_xpacienteResult>BuscarPacienteNombre(string nombre)
        {
            var pac = dc.sp_buscar_cita_xpaciente(nombre);
            return pac.ToList();
        }

        public static List<Mostrar_Citas_xpacienteidResult> BuscarCitaxPacienteid(int id)
        {
            var pac = dc.Mostrar_Citas_xpacienteid(id);
            return pac.ToList();
        }




        public static Citas ObtenerCitanombre(String nombre)
        {
            var citnombre = dc.Citas.FirstOrDefault(cit => cit.Paciente.Equals(nombre));
            return citnombre;
        }
        public static bool Autentificarcita(string nom)
        {
            var auto = dc.Citas.Any(cit => cit.Paciente.Equals(nom));
            return auto;
        }

        // METODOS PARA MODIFICAR

        public static void save(Citas cit)
        {
            try
            {

                dc.Citas.InsertOnSubmit(cit);
                dc.SubmitChanges();


            }
            catch (Exception ex)
            {
                throw new ArgumentException("los datos no han sido guardados <br/>" + ex.Message);
            }
        }


        public static void modify(Citas cit)
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
        public static void CancelarCita(int cit)
        {
            try
            {


                dc.sp_cancelar_cita(cit);


            }
            catch (Exception ex)
            {
                throw new ArgumentException("Error al modificar <br/>" + ex.Message);
            }
        }
        public static void cargar(int cit)
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
        public static void delete(Citas cit)
        {
            try
            {


                dc.Citas.DeleteOnSubmit(cit);
                dc.SubmitChanges();



            }
            catch (Exception ex)
            {
                throw new ArgumentException("Error al Borrar <br/>" + ex.Message);
            }
        }

        public static void eliminar(int cit)
        {
            try
            {
                
                dc.sp_eliminar_cita(cit);
                dc.SubmitChanges();

            }
            catch (Exception ex)
            {
                throw new ArgumentException("Error al Borrar <br/>" + ex.Message);
            }
        }

        public static void ObtenerCita2()
        {
          
        }
    }
}
