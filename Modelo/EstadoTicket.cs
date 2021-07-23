using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace Modelo
{
        public class EstadoTicket
        {
            public int IDEstado { get; set; }
            public String nombre { get; set; }
            public override string ToString()
            {
                return nombre;
            }
        public EstadoTicket() { }
        public EstadoTicket(string nombre) {
            nombre = this.nombre;
        }
        public EstadoTicket(int id, string nombre)
        {
            IDEstado = id;
            nombre = this.nombre;
        }
        }
}
