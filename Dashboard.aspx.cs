using System;
using System.Collections;
using System.Collections.Generic;
using System.Data.SqlClient;
using System.Data;
using System.Drawing;
using System.Linq;
using System.Security.Cryptography;
using System.Text.RegularExpressions;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Configuration;

namespace Login_InfoToolsSV
{
    public partial class Dashboard : System.Web.UI.Page
    {

        SqlConnection con = new SqlConnection(ConfigurationManager.ConnectionStrings["conexion"].ToString());

        protected void Page_Load(object sender, EventArgs e)
        {
            Response.AppendHeader("Cache-control", "no-store");
            TotalProductos();
            TotalProveedores();
            obtenerDatos();

        }

        void TotalProductos()
        {
            con.Open();
            SqlDataAdapter da = new SqlDataAdapter("SP_TotalProductos", con);
            da.SelectCommand.CommandType = CommandType.StoredProcedure;
            DataSet ds = new DataSet();
            ds.Clear();
            da.Fill(ds);
            DataTable dt = ds.Tables[0];
            DataRow row = dt.Rows[0];
            lbltotalproductos.Text = row[0].ToString();
            con.Close();
        }

        void TotalProveedores()
        {
            con.Open();
            SqlDataAdapter da = new SqlDataAdapter("SP_TotalProveedores", con);
            da.SelectCommand.CommandType = CommandType.StoredProcedure;
            DataSet ds = new DataSet();
            ds.Clear();
            da.Fill(ds);
            DataTable dt = ds.Tables[0];
            DataRow row = dt.Rows[0];
            lbltotalproveedores.Text = row[0].ToString();
            con.Close();
        }


        protected string obtenerDatos()
        {

            //SqlConnection conexionSQL = new SqlConnection("Data Source=LAPTOP-V667GKAG;initial catalog=InfoToolsSV;integrated security=true");


            SqlCommand cmd = new SqlCommand();
            cmd.CommandText = "SP_grafica";
            cmd.CommandType = CommandType.StoredProcedure;
            cmd.Connection = con;
            con.Open();

            DataTable Datos = new DataTable();
            Datos.Load(cmd.ExecuteReader());
            con.Close();


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

        protected void Btnsalir_Click(object sender, EventArgs e)
        {
            Session["Usuario"] = null;
            Response.Redirect("Login_InfoToolsSV.aspx");
            HttpContext.Current.Session.Abandon();
        }
    }//


}//