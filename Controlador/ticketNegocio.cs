using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using Modelo;

namespace Controlador
{
    public class ticketNegocio
    {
        public List<ListaTicket> listarTicketsClientes(long idCliente, int estado)
        {
            List<ListaTicket> lista = new List<ListaTicket>();
            AccesoDatos datos = new AccesoDatos();
            try
            {
                string consulta;
                if (estado == -1)
                {
                    consulta =
                    "SELECT T.IDTicket, ET.nombre, ISNULL(TEC.apellido + ' ' + TEC.nombre, 'Sin Asignar') AS TECNICO, T.FechaIngreso, ISNULL(T.FechaEgreso,'1900-01-01'), P.nombre " +
                    "FROM Ticket AS T " +
                    "INNER join EstadoTicket as ET on T.IDEstado = ET.IDEstado " +
                    "left join usuarios as TEC on T.IDTecnico = TEC.IDUsuario " +
                    "inner join usuarios as CLI on T.IDCliente = CLI.IDUsuario " +
                    "inner join productos as P on T.IDProducto = P.IDProducto " +
                    "WHERE T.IDCliente = " + idCliente +
                    " ORDER BY T.IDTicket DESC";
                }
                else
                {
                    consulta =
                    "SELECT T.IDTicket, ET.nombre, ISNULL(TEC.apellido + ' ' + TEC.nombre, 'Sin Asignar') AS TECNICO, T.FechaIngreso, ISNULL(T.FechaEgreso,'1900-01-01'), P.nombre " +
                    "FROM Ticket AS T " +
                    "INNER join EstadoTicket as ET on T.IDEstado = ET.IDEstado " +
                    "left join usuarios as TEC on T.IDTecnico = TEC.IDUsuario " +
                    "inner join usuarios as CLI on T.IDCliente = CLI.IDUsuario " +
                    "inner join productos as P on T.IDProducto = P.IDProducto " +
                    "WHERE T.IDCliente = " + idCliente + "AND T.IDEstado = " + estado +
                    " ORDER BY T.IDTicket DESC";
                }
                datos.setConsulta(consulta);
                datos.ejecutarLectura();
                while (datos.Lector.Read())
                {
                    ListaTicket aux = new ListaTicket();
                    aux.IdTicket = datos.Lector.GetInt32(0);
                    aux.Estado = datos.Lector.GetString(1);
                    aux.Tecnico = datos.Lector.GetString(2);
                    aux.FechaIngreso = datos.Lector.GetDateTime(3);
                    aux.FechaEgreso = datos.Lector.GetDateTime(4);
                    aux.Producto = datos.Lector.GetString(5);
                    lista.Add(aux);
                }
                return lista;
            }
            catch (Exception ex)
            {
                throw ex;
            }
            finally
            {
                datos.cerrarConexion();
            }

        }
        public List<ListaTicket> listarTicketsTecnicos(long IDTecnico, int estado)
        {
            List<ListaTicket> lista = new List<ListaTicket>();
            AccesoDatos datos = new AccesoDatos();
            try
            {
                string consulta;

                if(estado == -1)
                {
                    consulta =
                    "SELECT T.IDTicket, ET.nombre,  CLI.apellido + ' ' + CLI.nombre AS CLIENTE, T.FechaIngreso, P.nombre " +
                    "FROM Ticket AS T " +
                    "INNER join EstadoTicket as ET on T.IDEstado = ET.IDEstado " +
                    "inner join usuarios as CLI on T.IDCliente = CLI.IDUsuario " +
                    "inner join productos as P on T.IDProducto = P.IDProducto " +
                    "WHERE T.IDTecnico = " + IDTecnico + " AND T.IDEstado NOT IN (4, 5)" +
                    " ORDER BY T.IDTicket DESC";
                }
                else
                {
                    consulta =
                    "SELECT T.IDTicket, ET.nombre,  CLI.apellido + ' ' + CLI.nombre AS CLIENTE, T.FechaIngreso, P.nombre " +
                    "FROM Ticket AS T " +
                    "INNER join EstadoTicket as ET on T.IDEstado = ET.IDEstado " +
                    "inner join usuarios as CLI on T.IDCliente = CLI.IDUsuario " +
                    "inner join productos as P on T.IDProducto = P.IDProducto " +
                    "WHERE T.IDTecnico = " + IDTecnico + " AND T.IDEstado = " + estado +
                    " ORDER BY T.IDTicket DESC";
                }
                                
                datos.setConsulta(consulta);
                datos.ejecutarLectura();
                while (datos.Lector.Read())
                {
                    ListaTicket aux = new ListaTicket();
                    aux.IdTicket = datos.Lector.GetInt32(0);
                    aux.Estado = datos.Lector.GetString(1);
                    aux.Cliente = datos.Lector.GetString(2);
                    aux.FechaIngreso = datos.Lector.GetDateTime(3);
                    aux.Producto = datos.Lector.GetString(4);
                    lista.Add(aux);
                }
                return lista;
            }
            catch (Exception ex)
            {
                throw ex;
            }
            finally
            {
                datos.cerrarConexion();
            }

        }
        public List<ListaTicket> ListarSupervisor(int estado)
        {
            List<ListaTicket> lista = new List<ListaTicket>();
            AccesoDatos datos = new AccesoDatos();
            try
            {
                string consulta;

                if(estado == -1)
                {
                    consulta =
                    "select T.IDTicket, ET.nombre, CLI.nombre + ' ' + CLI.apellido AS CLIENTE, T.FechaIngreso, P.nombre, ISNULL(TEC.nombre + ' ' + TEC.apellido,'Sin Tec Asignado') as Tecnico " +
                    "from Ticket as T " +
                    "inner join EstadoTicket as ET on T.IDEstado = ET.IDEstado " +
                    "left join usuarios as TEC on T.IDTecnico = TEC.IDUsuario " +
                    "inner join usuarios as CLI on T.IDCliente = CLI.IDUsuario " +
                    "inner join productos as P on T.IDProducto = P.IDProducto " +
                    "WHERE T.IDTecnico IS NULL AND ET.nombre NOT LIKE 'Finalizado'";
                }
                else
                {
                    consulta =
                    "select T.IDTicket, ET.nombre, CLI.nombre + ' ' + CLI.apellido AS CLIENTE, T.FechaIngreso, P.nombre, ISNULL(TEC.nombre + ' ' + TEC.apellido,'Sin Tec Asignado') as Tecnico " +
                    "from Ticket as T " +
                    "inner join EstadoTicket as ET on T.IDEstado = ET.IDEstado " +
                    "left join usuarios as TEC on T.IDTecnico = TEC.IDUsuario " +
                    "inner join usuarios as CLI on T.IDCliente = CLI.IDUsuario " +
                    "inner join productos as P on T.IDProducto = P.IDProducto " +
                    "WHERE T.IDEstado = "+ estado;
                }
                datos.setConsulta(consulta);
                datos.ejecutarLectura();
                while (datos.Lector.Read())
                {
                    ListaTicket aux = new ListaTicket();
                    aux.IdTicket = datos.Lector.GetInt32(0);
                    aux.Estado = datos.Lector.GetString(1);
                    aux.Cliente = datos.Lector.GetString(2);
                    aux.FechaIngreso = datos.Lector.GetDateTime(3);
                    aux.Producto = datos.Lector.GetString(4);
                    aux.Tecnico = datos.Lector.GetString(5);
                    lista.Add(aux);
                }
                return lista;
            }
            catch (Exception ex)
            {
                throw ex;
            }
            finally
            {
                datos.cerrarConexion();
            }

        }
        public ListaTicket DetalleCliente(int idticket)
        {
            AccesoDatos datos = new AccesoDatos();
            ListaTicket aux = new ListaTicket();
            try
            {
                string consulta =
                    "select p.nombre, s.NROSerie, t.Problema, isnull(t.Diagnostico, 'Sin Diagnostico'), isnull(t.Solucion, 'Sin solucion'), e.nombre from Ticket as t " +
                    "inner join Productos as p on p.IDProducto = t.IDProducto " +
                    "inner join SerieProducto as S on s.IDProducto = t.IDProducto and s.IDUsuario = t.IDCliente " +
                    "inner join EstadoTicket as e on e.IDEstado = t.IDEstado  " +
                    "where t.IDTicket = " + idticket; 
                datos.setConsulta(consulta);
                datos.ejecutarLectura();
                while (datos.Lector.Read())
                {
                    aux.Producto = datos.Lector.GetString(0);
                    aux.NROSerie = datos.Lector.GetInt64(1);
                    aux.problema = datos.Lector.GetString(2);
                    aux.diagnostico = datos.Lector.GetString(3);
                    aux.solucion = datos.Lector.GetString(4);
                    aux.Estado = datos.Lector.GetString(5);
                    datos.cerrarConexion();
                    return aux;
                }
                return aux;
            }
            catch (Exception ex)
            {
                throw ex;
            }
            finally
            {
                datos.cerrarConexion();
            }
        }
        public ListaTicket DetalleSupervisor(int idticket)
        {
            AccesoDatos datos = new AccesoDatos();
            ListaTicket aux = new ListaTicket();
            try
            {
                string consulta =
                    "select u.nombre + ' ' + u.apellido as Cliente, p.nombre, SP.NROSerie, S.Nombre, t.Problema, t.IDServicio " +
                    "from Ticket as t " +
                    "inner join Productos as p on p.IDProducto = t.IDProducto " +
                    "inner join SerieProducto as SP on SP.IDProducto = t.IDProducto and SP.IDUsuario = t.IDCliente " +
                    "inner join Usuarios as u on u.IDUsuario = t.IDCliente " +
                    "inner join Servicios as S on S.IDServicio = t.IDServicio " +
                    "where t.IDTicket = " + idticket;
                datos.setConsulta(consulta);
                datos.ejecutarLectura();
                while (datos.Lector.Read())
                {
                    aux.Cliente = datos.Lector.GetString(0);
                    aux.Producto = datos.Lector.GetString(1);
                    aux.NROSerie = datos.Lector.GetInt64(2);
                    aux.servicio = datos.Lector.GetString(3);
                    aux.problema = datos.Lector.GetString(4);
                    aux.IdServicio = datos.Lector.GetInt32(5);
                    datos.cerrarConexion();
                    return aux;
                }
                return aux;
            }
            catch (Exception ex)
            {
                throw ex;
            }
            finally
            {
                datos.cerrarConexion();
            }
        }
        public bool CrearTicket(ListaTicket ticket)
        {
            AccesoDatos datos = new AccesoDatos();
            bool result = false;
            try
            {
                datos.setConsulta("insert into Ticket(IDCliente, IDProducto, problema, FechaIngreso, " +
                    "nroserie, IDServicio) values(@idcliente, @idproducto, @problema, @FechaIngreso, @nroserie, @idservicio)");
                datos.setParametro("@idcliente", ticket.IdCliente);
                datos.setParametro("@idproducto", ticket.IDProducto);
                datos.setParametro("@problema", ticket.problema);
                datos.setParametro("@FechaIngreso", DateTime.Now);
                datos.setParametro("@nroserie", ticket.NROSerie);
                datos.setParametro("@idservicio", ticket.IdServicio);
                datos.ejecutarAccion();
                result = true;
            }
            catch (System.Exception)
            {
                //throw;
            }
            finally
            {
                datos.cerrarConexion();
            }
            return result;
        }
        public bool ActualizarTicketTecnico(Ticket ticket)
        {
            AccesoDatos datos = new AccesoDatos();
            bool result = false;
            if (ticket.IDEstado == 4 || ticket.IDEstado == 5)
            {
                try
                {
                    datos.setConsulta("update ticket set diagnostico=@diagnostico, solucion=@solucion, IDEstado=@IDEstado, FechaEgreso=@FechaEgreso WHERE IDTicket=@IDTicket");
                    datos.setParametro("@diagnostico", ticket.diagnostico);
                    datos.setParametro("@solucion", ticket.solucion);
                    datos.setParametro("@IDEstado", ticket.IDEstado);
                    datos.setParametro("@IDTicket", ticket.IDTicket);
                    datos.setParametro("@FechaEgreso", DateTime.Now);
                    datos.ejecutarAccion();
                    result = true;
                }
                catch (Exception ex)
                {
                    //throw ex;
                }
                finally
                {
                    datos.cerrarConexion();
                }
            }
            else
            {
                try
                {
                    datos.setConsulta("update ticket set diagnostico=@diagnostico, solucion=@solucion, IDEstado=@IDEstado WHERE IDTicket=@IDTicket");
                    datos.setParametro("@diagnostico", ticket.diagnostico);
                    datos.setParametro("@solucion", ticket.solucion);
                    datos.setParametro("@IDEstado", ticket.IDEstado);
                    datos.setParametro("@IDTicket", ticket.IDTicket);
                    datos.ejecutarAccion();
                    result = true;
                }
                catch (Exception ex)
                {
                    //throw ex;
                }
                finally
                {
                    datos.cerrarConexion();
                }
            }

            return result;
        }
        public ListaTicket DetalleTecnico(int idticket)
        {
            AccesoDatos datos = new AccesoDatos();
            ListaTicket aux = new ListaTicket();
            try
            {
                string consulta =
                    "select u.nombre + ' ' + u.apellido as Cliente, p.nombre, SP.NROSerie, t.Problema, isnull(t.Diagnostico,''), isnull(t.Solucion,''), t.IDEstado " +
                    "from Ticket as t " +
                    "inner join Productos as p on p.IDProducto = t.IDProducto " +
                    "inner join SerieProducto as SP on SP.IDProducto = t.IDProducto and SP.IDUsuario = t.IDCliente " +
                    "inner join Usuarios as u on u.IDUsuario = t.IDCliente " +
                    "inner join Servicios as S on S.IDServicio = t.IDServicio " +
                    "where t.IDTicket = " + idticket;
                datos.setConsulta(consulta);
                datos.ejecutarLectura();
                while (datos.Lector.Read())
                {
                    aux.Cliente = datos.Lector.GetString(0);
                    aux.Producto = datos.Lector.GetString(1);
                    aux.NROSerie = datos.Lector.GetInt64(2);
                    aux.problema = datos.Lector.GetString(3);
                    aux.diagnostico = datos.Lector.GetString(4);
                    aux.solucion = datos.Lector.GetString(5);
                    aux.IDEstado = datos.Lector.GetInt32(6);
                    datos.cerrarConexion();
                    return aux;
                }
                return aux;
            }
            catch (Exception ex)
            {
                throw ex;
            }
            finally
            {
                datos.cerrarConexion();
            }
        }

    }
}
