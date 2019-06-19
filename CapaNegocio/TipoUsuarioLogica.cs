using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using CapaDatos;
using System.Data.Linq;

namespace CapaNegocio
{
 public  class TipoUsuarioLogica
    {
        public static DataClasses1DataContext dc = new DataClasses1DataContext();

        public static List<Tbl_Tipousuario> Obtenertipousuario()
        {
            var Lista = dc.Tbl_Tipousuario.Where(tusu => tusu.Tusu_Estado == 'A');
            return Lista.ToList();

        }
    }
}
