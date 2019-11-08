    using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using CapaDatos;

namespace CapaNegocio
{
   public class LogicaPersona
    {
        public static BaseCitasDataContext dc = new BaseCitasDataContext();

        public static List<Persona> ObtenerPersona()
        {
            //var lista = dc.Tbl_Productos.Where(pro => pro.pro_estado == 'A');
            var lista = dc.Persona;
            return lista.ToList();


        }


        public static List<Mostrar_personasResult> MostrarPersonas()
        {

            var mp = dc.Mostrar_personas();
            return mp.ToList();

        }


        public static List<sp_buscar_persona_xapellidoResult> Buscar_persona_xapellido(string apellido)
        {
            var bpxa = dc.sp_buscar_persona_xapellido(apellido);
            return bpxa.ToList();
        }

        public static List<sp_buscar_persona_IDEResult> Buscar_persona_xid(int per_id)
        {

            var per = dc.sp_buscar_persona_IDE(per_id);
            return per.ToList();
        }


        public static Persona ObtenerPersonaid(int id)
        {
            var perid = dc.Persona.FirstOrDefault(per => per.per_id.Equals(id));
            return perid;
        }

        public static Persona ObtenerPersonanombre(String nombre)
        {
            var pernombre = dc.Persona.FirstOrDefault(per => per.per_nombres.Equals(nombre));
            return pernombre;
        }

        public static Persona Obtenerpersonaxusuario(string usuario)
        {
            var perusu = dc.Persona.FirstOrDefault(espe => espe.per_usuario.Equals(usuario));
            return perusu;
        }
        public static bool AutentificarPersona(string nom)
        {
            var auto = dc.Persona.Any(per => per.per_nombres.Equals(nom));
            return auto;
        }

        // METODOS PARA MODIFICAR

        public static void save(Persona per)
        {
            DateTime fecha = DateTime.Now;
            string alx = fecha.ToString("yyyyMMdd");
            try
            {  
                per.per_estado = "A";
                per.per_fechaCreacion = alx;
                dc.Persona.InsertOnSubmit(per);
                dc.SubmitChanges();


            }
            catch (Exception ex)
            {
                throw new ArgumentException("los datos no han sido guardados <br/>" + ex.Message);
            }
        }

        public static void Registra_usuario(Persona per)
        {
            DateTime fecha = DateTime.Now;
            string alx= fecha.ToString("yyyyMMdd");

            try
            {

                dc.sp_registrar_persona_login
                    (per.per_nombres,
                    per.per_apellidos,
                    per.per_email,
                    per.per_usuario,
                    per.per_contrasenia,
                    per.per_estado,
                    per.per_fechaCreacion = alx,
                    per.per_id); 
                dc.SubmitChanges();


            }
            catch (Exception ex)
            {
                throw new ArgumentException("los datos no han sido guardados <br/>" + ex.Message);
            }
        }

        public static void modify(Persona per)
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

        public static void delete(int  per)
        {
            try
            {


                dc.sp_eliminar_persona(per);
                dc.SubmitChanges();



            }
            catch (Exception ex)
            {
                throw new ArgumentException("Error al Borrar <br/>" + ex.Message);
            }
        }
    }
}
