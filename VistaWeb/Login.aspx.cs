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
    public partial class Login : System.Web.UI.Page
    {
        public int idUsuario { get; set; }
        public UsuarioNegocio usuarioNegocio { get; set; }
        public Usuario usuario { get; set; }
        public List<Usuario> listaUsuario { get; set; }
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void btnIngresar_Click(object sender, EventArgs e)
        {
            //Validar usuario
            usuarioNegocio = new UsuarioNegocio();
            usuario = usuarioNegocio.ValidarUsuario(tbEmail.Text, tbPassword.Text);
                if (usuario.Id != 0)
                {
                    Session[Session.SessionID + "usuarioLogueado"] = usuario;
                    switch (usuario.tipoUsuario)
                    {
                        case 4:
                            Response.Redirect("Default.aspx");
                            break;
                        case 3:
                            Response.Redirect("TecnicoDefault.aspx");
                            break;
                        case 2:
                            //creo una funcion lista tecnicos y la cargo en session
                            listaUsuario = new List<Usuario>();
                            listaUsuario = usuarioNegocio.ListarTecnicos();
                            Session[Session.SessionID + "listaTecnicos"] = listaUsuario;
                            Response.Redirect("SupervisorAsignacionTicket.aspx");
                            break;
                        default:
                            break;
                    }
                    confirmacionEstado.CssClass = "text-success";
                    confirmacionEstado.Text = "usuario Validado correctamente";
                }
                else
                {
                    confirmacionEstado.CssClass = "text-danger";
                    confirmacionEstado.Text = "usuario NO Validado";
                }
            }
    }
}