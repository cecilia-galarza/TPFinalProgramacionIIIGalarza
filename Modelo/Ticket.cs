using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace Modelo
{
    public class Ticket
    {
        public int IDTicket { get; set; }
        public long IDTecnico { get; set; }
        public long IDCliente { get; set; }
        public long IDProducto { get; set; }
        public int IDEstado { get; set; }
        public string problema { get; set; }
        public string diagnostico { get; set; }
        public string solucion { get; set; }
        public DateTime fechaIngreso { get; set; }
        public DateTime fechaEgreso { get; set; }
        public long nroserie { get; set; }
        public int IDServicio { get; set; }

    }
}
