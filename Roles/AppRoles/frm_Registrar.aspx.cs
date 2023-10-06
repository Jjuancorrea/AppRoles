using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace AppRoles
{
    public partial class frm_Registrar : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void btn_Guardar_Click(object sender, EventArgs e)
        {
            clsRegistrarPersonas objUsuarios = new clsRegistrarPersonas();
            objUsuarios.fnt_agregar(txtId.Text, txtPNombre.Text, txtSNombre.Text, txtPApellido.Text, txtSApellido.Text, txtContacto.Text, 
                txtCorreo.Text, cbxSexo.SelectedValue);
            lbl_mensaje.Text = objUsuarios.getMensaje();
        }

        protected void lnkRedireccion_Click(object sender, EventArgs e)
        {
            Response.Redirect("frmRoles.aspx");
        }
    }
}