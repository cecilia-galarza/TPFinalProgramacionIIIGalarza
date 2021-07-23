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
    public partial class CrearTicket : System.Web.UI.Page
    {
        public List<Servicios> listaServicios { get; set; }
        servicioNegocio servicionegocio { get; set; }
        public List<Productos> listaProductos { get; set; }
        public Usuario usuario { get; set; }
        public List<Usuario> listaUsuario { get; set; }
        public UsuarioNegocio usuarioNegocio { get; set; }
        public ProductoNegocio productoNegocio { get; set; }
        public ListaTicket crearTicket { get; set; }
        public ticketNegocio ticketnegocio { get; set; }

        protected void Page_Load(object sender, EventArgs e)
        {
            //si no existe usuario, me voy a la pagina de login
            usuario = new Usuario();
            usuario = (Usuario)Session[Session.SessionID + "usuarioLogueado"];
            if ((Session[Session.SessionID + "usuarioLogueado"]) == null) { Response.Redirect("Login.aspx"); }

            if (!this.IsPostBack)
            {
                //lista de productos asociados al cliente
                productoNegocio = new ProductoNegocio();
                listaProductos = new List<Productos>();
                listaProductos = productoNegocio.ListarPorCliente(usuario.Id);
                ddlProducto.DataSource = listaProductos;
                ddlProducto.DataTextField = "nombre";
                ddlProducto.DataValueField = "id";
                ddlProducto.DataBind();

                ddlserie.DataSource = listaProductos;
                ddlserie.DataTextField = "nroserie";
                ddlserie.DataValueField = "nroserie";
                ddlserie.DataBind();

                servicionegocio = new servicioNegocio();
                listaServicios = new List<Servicios>();
                listaServicios = servicionegocio.listar();
                ddlServicio.DataSource = listaServicios;
                ddlServicio.DataTextField = "Nombre";
                ddlServicio.DataValueField = "IDTipo";
                ddlServicio.DataBind();
            }
        }
        

        protected void btnCrear_Click(object sender, EventArgs e)
        {
            crearTicket = new ListaTicket();
            crearTicket.IdCliente = usuario.Id;
            crearTicket.IDProducto = long.Parse(ddlProducto.SelectedValue);
            crearTicket.NROSerie = long.Parse(ddlserie.SelectedValue);
            crearTicket.problema = tbProblema.Text;
            crearTicket.IdServicio = int.Parse(ddlServicio.SelectedValue);

            ticketnegocio = new ticketNegocio();
            if (ticketnegocio.CrearTicket(crearTicket))
            {
                confirmacionEstado.CssClass = "text-success";
                confirmacionEstado.Text = "ticket creado correctamente";
                Response.Redirect("Default.aspx");
            }
            else
            {
                confirmacionEstado.CssClass = "text-danger";
                confirmacionEstado.Text = "ticket NO creado";
            }
        }
    }
}