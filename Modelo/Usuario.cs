using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace Modelo
{
    public class Usuario
    {

        public long Id { get; set; }
        public string Nombre { get; set; }
        public string Apellido { get; set; }
        public string DNI { get; set; }
        public Contacto infoContacto { get; set; }
        public int tipoUsuario { get; set; }

        public Usuario(string nombre)
        {
            Nombre = nombre;
        }
        public Usuario() { }
        public override string ToString()
        {
            return Nombre;
        }
    }
}
