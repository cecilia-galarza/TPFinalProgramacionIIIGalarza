using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using Modelo;

namespace Controlador
{
    public class ProductoNegocio
    {
        public List<Productos> Listar()
        {
            List<Productos> lista = new List<Productos>();
            AccesoDatos datos = new AccesoDatos();
            try
            {
                string consulta = "select p.IDProducto, p.nombre, p.descripcion, sp.NROSerie " +
                    "from productos as P " +
                    "inner join serieProducto as SP on SP.IDProducto = P.IDProducto ";
                datos.setConsulta(consulta);
                datos.ejecutarLectura();
                while (datos.Lector.Read())
                {
                    Productos aux = new Productos();
                    aux.id = datos.Lector.GetInt64(0);
                    aux.nombre=datos.Lector.GetString(1);
                    aux.detalle = datos.Lector.GetString(2);
                    aux.nroserie = datos.Lector.GetInt64(3);
                    lista.Add(aux);
                }
                return lista;
            }
            catch (Exception ex)
            {

                throw ex;
            }
        }

        public List<Productos> ListarPorCliente(long idCliente)
        {
            List<Productos> lista = new List<Productos>();
            AccesoDatos datos = new AccesoDatos();
            try
            {
                string consulta = "select p.IDProducto, p.nombre, p.descripcion, sp.NROSerie " +
                    "from productos as P " +
                    "inner join serieProducto as SP on SP.IDProducto = P.IDProducto " +
                    "WHERE SP.IDUsuario = " + idCliente;
                datos.setConsulta(consulta);
                datos.ejecutarLectura();
                while (datos.Lector.Read())
                {
                    Productos aux = new Productos();
                    aux.id = datos.Lector.GetInt64(0);
                    aux.nombre = datos.Lector.GetString(1);
                    aux.detalle = datos.Lector.GetString(2);
                    aux.nroserie = datos.Lector.GetInt64(3);
                    lista.Add(aux);
                }
                return lista;
            }
            catch (Exception ex)
            {

                throw ex;
            }
        }
    }
}
