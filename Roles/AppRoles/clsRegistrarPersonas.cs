using System;
using System.Collections.Generic;
using System.Data.SqlClient;
using System.Data;
using System.Linq;
using System.Web;

namespace AppRoles
{
    public class clsRegistrarPersonas
    {
        private string str_mensaje;
        public void fnt_agregar(string Pkcodigo, string Pnombre, string Snombre, string Papellido, string Sapellido, string Contacto,
            string Correo, string Sexo)
        {
            if (Pkcodigo == "" || Pnombre == "" || Snombre == "" || Papellido == "" || Sapellido == "" || Contacto == "" || Correo == "" || Sexo == ""
                 )
            {
                str_mensaje = "No puede mandar campos vacíos";
            }
            else
            {
                try
                {
                    clsConexion objConecta = new clsConexion();
                    SqlCommand con = new SqlCommand("SP_registrarPers", objConecta.connection);
                    con.CommandType = CommandType.StoredProcedure;
                    con.Parameters.AddWithValue("@id", Pkcodigo);
                    con.Parameters.AddWithValue("@p_nombre", Pnombre);
                    con.Parameters.AddWithValue("@s_nombre", Snombre);
                    con.Parameters.AddWithValue("@p_apellido", Papellido);
                    con.Parameters.AddWithValue("@s_apellido", Sapellido);
                    con.Parameters.AddWithValue("@contacto", Contacto);
                    con.Parameters.AddWithValue("@correo", Correo);
                    con.Parameters.AddWithValue("@fkSexo", Sexo);
                    objConecta.connection.Open();
                    con.ExecuteNonQuery();
                    objConecta.connection.Close();
                    str_mensaje = "Registro exitoso";
                }
                catch (Exception) { str_mensaje = "Este registro ya existe"; }
            }
        }
        public string getMensaje() { return this.str_mensaje; }

    }
}