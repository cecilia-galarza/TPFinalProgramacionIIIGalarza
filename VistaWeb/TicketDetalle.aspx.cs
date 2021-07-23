using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using Controlador;
using Modelo;

namespace VistaWeb
{
    public partial class TcketDetalle : System.Web.UI.Page
    {
        public ListaTicket listaTicket { get; set; }
        public ticketNegocio ticketnegocio { get; set; }
        public Usuario usuario { get; set; }
        protected void Page_Load(object sender, EventArgs e)
        {
            //si no existe usuario, me voy a la pagina de login
            usuario = new Usuario();
            usuario = (Usuario)Session[Session.SessionID + "usuarioLogueado"];
            if ((Session[Session.SessionID + "usuarioLogueado"]) == null) { Response.Redirect("Login.aspx"); }
            if (Request.QueryString["id"] == null) Response.Redirect("~/");
            int idseleccionado = Convert.ToInt32(Request.QueryString["id"]);

            if (!this.IsPostBack)
            {
                listaTicket = new ListaTicket();
                ticketnegocio = new ticketNegocio();
                listaTicket = ticketnegocio.DetalleCliente(idseleccionado);

                tbProducto.Text = Convert.ToString( listaTicket.Producto);
                tbserie.Text = Convert.ToString(listaTicket.NROSerie);
                tbObservaciones.Text = Convert.ToString(listaTicket.problema);
                tbDiagnostico.Text = Convert.ToString(listaTicket.diagnostico);
                tbSolucion.Text = Convert.ToString(listaTicket.solucion);
                tbEstado.Text = Convert.ToString(listaTicket.Estado);
            }

            }
    }
}