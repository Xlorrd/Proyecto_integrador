using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using CapaDatos;

namespace CapaNegocio
{
    public class LogicaPaciente
    {
        public static BaseCitasDataContext dc = new BaseCitasDataContext();

        public static List<Paciente> ObtenerPaciente()
        {
            //var lista = dc.Tbl_Productos.Where(pro => pro.pro_estado == 'A');
            var lista = dc.Paciente;
            return lista.ToList();


        }

        public static List<Mostrar_pacienteResult> MostrarPaciente()
        {
            var mp = dc.Mostrar_paciente();
            return mp.ToList();

        }

        public static List<sp_buscar_paciente_xnombreResult> Buscar_pacienre_xnombre(string nombre)

        {
        var bpxn = dc.sp_buscar_paciente_xnombre(nombre);
            return bpxn.ToList();
        }
        public static List<sp_obtener_pacientesResult> ObtenerPacientes(string paci)
        {
            var paciente = dc.sp_obtener_pacientes(paci);
            return paciente.ToList();
        }
        public static Paciente ObtenerPacienteid(int id)

        {
            var pacid = dc.Paciente.FirstOrDefault(pac => pac.paci_id.Equals(id));
            return pacid;
        }
        public static Paciente ObtenerPacientexpersona(int id)

        {
            var per = dc.Paciente.FirstOrDefault(pac => pac.per_id.Equals(id));
            return per;
        }
        public static Paciente ObtenerPacientenombre(String nombre)
        {
            var pacnombre = dc.Paciente.FirstOrDefault(pac => pac.Persona.Equals(nombre));
            return pacnombre;
        }
        public static bool AutentificarPaciente(string nom)
        {
            var auto = dc.Paciente.Any(pac => pac.Persona.Equals(nom));
            return auto;
        }

        // METODOS PARA MODIFICAR

        public static void save(Paciente pac)
        {
            try
            {

                dc.Paciente.InsertOnSubmit(pac);
                dc.SubmitChanges();


            }
            catch (Exception ex)
            {
                throw new ArgumentException("los datos no han sido guardados <br/>" + ex.Message);
            }
        }


        public static void modify(Paciente pac)
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

        public static void delete(int pac)
        {
            try
            {


                dc.sp_eliminar_paciente(pac);
                dc.SubmitChanges();



            }
            catch (Exception ex)
            {
                throw new ArgumentException("Error al Borrar <br/>" + ex.Message);
            }
        }
    }
}
