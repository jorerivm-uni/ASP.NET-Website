using System;
using System.Collections.Generic;
using System.Configuration;
using System.Data.SqlClient;
using System.Data;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace Login_InfoToolsSV
{
    public partial class Graficas : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            obtenerDatos();
        }

        protected string obtenerDatos()
        {

            SqlConnection conexionSQL = new SqlConnection("Data Source=LAPTOP-V667GKAG;initial catalog=InfoToolsSV;integrated security=true");


            SqlCommand cmd = new SqlCommand();
            cmd.CommandText = "SP_grafica";
            cmd.CommandType = CommandType.StoredProcedure;
            cmd.Connection = conexionSQL;
            conexionSQL.Open();

            DataTable Datos = new DataTable();
            Datos.Load(cmd.ExecuteReader());
            conexionSQL.Close();


            string strDatos;

            strDatos = "[['Categoria','Stock'],";

            foreach (DataRow dr in Datos.Rows)
            {
                strDatos = strDatos + "[";
                strDatos = strDatos + "'" + dr[0] + "'" + "," + dr[1];
                strDatos = strDatos + "],";
            }
            strDatos = strDatos + "]";


            return strDatos;
        }

       


    }
}