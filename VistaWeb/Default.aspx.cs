using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using Modelo;
using Controlador;

namespace VistaWeb
{
    public partial class Default : Page
    {
        public List<ListaTicket> listado { get; set; }
        public Usuario usuario { get; set; }
        public ticketNegocio negocio { get; set; }

        protected void Page_Load(object sender, EventArgs e)
        {
            //si no existe usuario, me voy a la pagina de login
            usuario = new Usuario();
            usuario = (Usuario)Session[Session.SessionID + "usuarioLogueado"];
            if ((Session[Session.SessionID + "usuarioLogueado"]) == null) { Response.Redirect("Login.aspx"); }
            
            int filtro = -1;
            if (Request.QueryString["condicion"] == null)
            {
                filtro = -1;
            }
            else
            {
                String condicion = Request.QueryString["condicion"];
                switch (condicion)
                {
                    case "Todos":
                        filtro = -1;
                        break;
                    case "Ingresado":
                        filtro = 1;
                        break;
                    case "Enproceso":
                        filtro = 2;
                        break;
                    case "Aceptado":
                        filtro = 3;
                        break;
                    case "Rechazado":
                        filtro = 4;
                        break;
                    case "Finalizado":
                        filtro = 5;
                        break;
                    default:
                        filtro = -1;
                        break;
                }
            }

            negocio = new ticketNegocio();
            listado = new List<ListaTicket>();

            listado = negocio.listarTicketsClientes(usuario.Id, filtro);
            
        }
    }
}