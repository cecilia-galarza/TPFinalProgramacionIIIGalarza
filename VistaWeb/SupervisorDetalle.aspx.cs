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
    public partial class SupervisorDetalle : System.Web.UI.Page
    {   
        public Usuario usuario { get; set; }
        public List<Usuario> listaTecnicos { get; set; }
        public ListaTicket listaTicket { get; set; }
        public ticketNegocio ticketnegocio { get; set; }
        public UsuarioNegocio usuarionegocio { get; set; }

        protected void Page_Load(object sender, EventArgs e)
        {
            //si no existe usuario, me voy a la pagina de login
            usuario = new Usuario();
            usuario = (Usuario)Session[Session.SessionID + "usuarioLogueado"];
            if ((Session[Session.SessionID + "usuarioLogueado"]) == null) { Response.Redirect("Login.aspx"); }

            //si no viene el ID, retrocedo
            if (Request.QueryString["id"] == null) Response.Redirect("SupervisorAsignacionTicket.aspx");
            int idseleccionado = Convert.ToInt32(Request.QueryString["id"]);

            if (!this.IsPostBack)
            {
                ticketnegocio = new ticketNegocio();
                listaTicket = new ListaTicket();
                listaTicket = ticketnegocio.DetalleSupervisor(idseleccionado);

                usuarionegocio = new UsuarioNegocio();
                listaTecnicos = new List<Usuario>();
                listaTecnicos = usuarionegocio.ListarTecnicosPorServicio(listaTicket.IdServicio);
                
                ddlTecnicos.DataSource = listaTecnicos;
                ddlTecnicos.DataTextField = "Nombre";
                ddlTecnicos.DataValueField = "Id";
                ddlTecnicos.DataBind();

                TBCliente.Text = listaTicket.Cliente;
                TBproducto.Text = listaTicket.Producto;
                TBserie.Text = Convert.ToString(listaTicket.NROSerie);
                TBTipodeServicio.Text = listaTicket.servicio;
                TBObservaciones.Text = listaTicket.problema;
            }
        }

        protected void btnAsignar_Click(object sender, EventArgs e)
        {
            usuarionegocio = new UsuarioNegocio();

            if (usuarionegocio.AsignarTecnico(Convert.ToInt64(ddlTecnicos.SelectedValue), Convert.ToInt64(Request.QueryString["id"])))
            {
                confirmacionEstado.CssClass = "text-success";
                confirmacionEstado.Text = "Tecnico asignado correctamente";
                Response.Redirect("SupervisorAsignacionTicket.aspx");
            }
            else
            {
                confirmacionEstado.CssClass = "text-danger";
                confirmacionEstado.Text = "tecnico NO pudo ser creado";
            }
        }
    }
}