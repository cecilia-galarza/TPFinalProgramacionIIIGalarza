using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using Modelo;

namespace Controlador
{
    public class EstadoNegocio
    {
        public List<EstadoTicket> Listar()
        {
            List<EstadoTicket> estados = new List<EstadoTicket>();
            AccesoDatos datos = new AccesoDatos();
            try
            {
                string consulta = "select ET.IDEstado, ET.Nombre from EstadoTicket as ET";
                datos.setConsulta(consulta);
                datos.ejecutarLectura();
                while (datos.Lector.Read())
                {
                    EstadoTicket aux = new EstadoTicket();
                    aux.IDEstado = datos.Lector.GetInt32(0);
                    aux.nombre = datos.Lector.GetString(1);
                    estados.Add(aux);
                }
                return estados;
            }
            catch (Exception)
            {

                throw;
            }
        }
    }
}
