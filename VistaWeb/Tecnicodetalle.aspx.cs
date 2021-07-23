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
    public partial class Tecnicodetalle : System.Web.UI.Page
    {
        public int idseleccionado;
        public Usuario usuario { get; set; }
        public Ticket ticket { get; set; }
        public EstadoNegocio estadoNegocio { get; set; }
        public List<EstadoTicket> listaestado { get; set; }        
        public ListaTicket listaTicket { get; set; }
        public ticketNegocio ticketnegocio { get; set; }
        protected void Page_Load(object sender, EventArgs e)

        {
            //si no existe usuario, me voy a la pagina de login
            usuario = new Usuario();
            usuario = (Usuario)Session[Session.SessionID + "usuarioLogueado"];
            if ((Session[Session.SessionID + "usuarioLogueado"]) == null) { Response.Redirect("Login.aspx"); }

            //si no viene el ID, retrocedo
            if (Request.QueryString["id"] == null) Response.Redirect("TecnicoDefault.aspx");
            int idseleccionado = Convert.ToInt32(Request.QueryString["id"]);

            if (!this.IsPostBack)
            {
                ticketnegocio = new ticketNegocio();
                listaTicket = new ListaTicket();
                listaTicket = ticketnegocio.DetalleTecnico(idseleccionado);

                              
                tbCliente.Text = listaTicket.Cliente;
                tbProducto.Text = listaTicket.Producto;
                tbSerie.Text = Convert.ToString(listaTicket.NROSerie);
                tbDiagnostico.Text = listaTicket.diagnostico;
                tbSolucion.Text = listaTicket.solucion;
                tbObservaciones.Text = listaTicket.problema;

                estadoNegocio = new EstadoNegocio();
                listaestado = new List<EstadoTicket>();
                listaestado = estadoNegocio.Listar();
                ddlEstado.DataSource = listaestado;
                ddlEstado.DataTextField = "nombre";
                ddlEstado.DataValueField = "IDEstado";
                ddlEstado.SelectedValue = Convert.ToString(listaTicket.IDEstado);
                ddlEstado.DataBind();
            }
        }
        protected void btnGuardar_Click(object sender, EventArgs e)
        {   
            ticketnegocio = new ticketNegocio();
            ticket = new Ticket();
            ticket.diagnostico = tbDiagnostico.Text;
            ticket.solucion = tbSolucion.Text;
            ticket.IDEstado = int.Parse(ddlEstado.SelectedValue);
            ticket.IDTicket = Convert.ToInt32(Request.QueryString["id"]);

            if (ticketnegocio.ActualizarTicketTecnico(ticket))
            {
                Response.Redirect("TecnicoDefault.aspx");
            }
            else
            {
                confirmacionEstado.CssClass = "text-danger";
                confirmacionEstado.Text = "No se pudo actualizar ticket";
            }


            
            
        }
    }
}