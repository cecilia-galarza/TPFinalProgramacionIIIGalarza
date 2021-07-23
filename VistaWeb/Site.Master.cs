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
    public partial class SiteMaster : MasterPage
    {
        public List<ListaTicket> listado { get; set; }
        public Usuario usuario { get; set; }
        public int tipoUsuario { get; set; }
        protected void Page_Load(object sender, EventArgs e)
        {
            //Saco el nombre del usuario
            usuario = new Usuario();
            usuario = (Usuario)Session[Session.SessionID + "usuarioLogueado"];
            if ((Session[Session.SessionID + "usuarioLogueado"]) != null) { lbNombreUsuarioMenu.Text = usuario.Nombre; }

            tipoUsuario = usuario.tipoUsuario;

        }
    }
}