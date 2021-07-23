using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace Modelo
{
    public class Persona
    {
        int Id { get; set; }
        string Nombre { get; set; }
        string Apellido { get; set; }
        string DNI { get; set; }
        Contacto Contacto { get; set; }
    }
}
