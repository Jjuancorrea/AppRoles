using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace AppRoles
{
    public partial class frmRoles : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void btn_Guardar_Click(object sender, EventArgs e)
        {
            clsAsignarRol objUsuarios = new clsAsignarRol();
            objUsuarios.fnt_agregar(txtUsuario.Text, txtFechaCaduca.Text, cbxRol.SelectedValue);
            lbl_mensaje.Text = objUsuarios.getMensaje();
        }
    }
}