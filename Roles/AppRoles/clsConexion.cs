using System;
using System.Collections.Generic;
using System.Data.SqlClient;
using System.Linq;
using System.Web;

namespace AppRoles
{
    public class clsConexion
    {
        public SqlConnection connection = new SqlConnection("Data Source=AP-SE105-01\\SQLEXPRESS;Initial Catalog=dbs_roles;Integrated Security=True");
    }
}