using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace Modelo
{
    public class Productos
    {
        public long id {get; set;}
        public string nombre {get; set;}
        public string detalle {get; set;}
        public long nroserie { get; set;}

        public Productos(string nombre)
        {
            this.nombre = nombre;
        }
        public Productos() { }
        public override string ToString()
        {
            return nombre;
        }
    }
}
