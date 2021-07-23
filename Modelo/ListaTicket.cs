using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace Modelo
{
    public class ListaTicket
    {
        public int IdTicket { get; set; }
        public int IDEstado { get; set; }
        public long IdCliente { get; set; }
        public long IdProducto { get; set; }
        public int IdTecnico { get; set; }
        public int IdServicio { get; set; }
        public long IDProducto { get; set; }
        public long NROSerie { get; set; }
        public String Estado { get; set; }
        public String Cliente { get; set; }
        public String Tecnico { get; set; }
        public DateTime FechaIngreso { get; set; }
        public DateTime FechaEgreso { get; set; }
        public String Producto { get; set; }
        public String problema { get; set; }
        public String diagnostico { get; set; }
        public String solucion { get; set; }
        public String servicio { get; set; }


    }
}
