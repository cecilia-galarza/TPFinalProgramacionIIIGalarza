using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace Modelo
{
    public class Contacto
    {
        public string Direccion { get; set; }
        public string Telefono { get; set; }
        public string Celular { get; set; }
        public short CodigoPostal { get; set; }
        public Contacto(string direccion, string telefono, string celular,short codigoPostal)
        {
            Direccion = direccion;
            Telefono = telefono;
            Celular = celular;
            CodigoPostal = codigoPostal;
        }
    }
}
