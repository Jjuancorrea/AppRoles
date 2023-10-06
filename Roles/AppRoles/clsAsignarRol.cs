using System;
using System.Collections.Generic;
using System.Data.SqlClient;
using System.Data;
using System.Linq;
using System.Web;

namespace AppRoles
{
    public class clsAsignarRol
    {
        private string str_mensaje;
        public void fnt_agregar(string usuario, string rol, string fechaCaduca)
        {
            if (usuario == "" || rol == "" || fechaCaduca == ""  )
            {
                str_mensaje = "No puede mandar campos vacíos";
            }
            else
            {
               
                    clsConexion objConecta = new clsConexion();
                    SqlCommand con = new SqlCommand("SP_AsignarRol", objConecta.connection);
                    con.CommandType = CommandType.StoredProcedure;
                    con.Parameters.AddWithValue("@usuario", usuario);
                    con.Parameters.AddWithValue("@rol", rol);
                    con.Parameters.AddWithValue("@fecha_caduca", fechaCaduca);
                    objConecta.connection.Open();
                    con.ExecuteNonQuery();
                    objConecta.connection.Close();
                    str_mensaje = "Registro exitoso";
               
            }
        }
        public string getMensaje() { return this.str_mensaje; }
    }
}