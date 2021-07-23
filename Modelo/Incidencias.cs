using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace Modelo
{
    class Incidencias
    {
        int id;
        Producto producto;
        Cliente cliente;
        Tecnico tecnico;
        string detalle;
        int estado;
        DateTime fechaIngreso;
        DateTime fechaFinalizacion;
    }
}
