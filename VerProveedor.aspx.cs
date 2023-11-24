using System;
using System.Collections.Generic;
using System.Configuration;
using System.Data;
using System.Data.SqlClient;
using System.Linq;
using System.Security.Cryptography;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace Login_InfoToolsSV
{
    public partial class VerProveedor : System.Web.UI.Page
    {
        //cadena de conexion
        readonly SqlConnection con = new SqlConnection(ConfigurationManager.ConnectionStrings["conexion"].ConnectionString);

        protected void Page_Load(object sender, EventArgs e)
        {
            Response.AppendHeader("Cache-control", "no-store");

            DatosProveedores();
        }

        void DatosProveedores()
        {
            SqlCommand cmd = new SqlCommand("SP_LeerProveedores", con);
            cmd.CommandType = CommandType.StoredProcedure;
            con.Open();
            SqlDataAdapter da = new SqlDataAdapter(cmd);
            DataTable dt = new DataTable();
            da.Fill(dt);
            gvproveedor.DataSource = dt;
            gvproveedor.DataBind();
            con.Close();
        }

        protected void BtnCreate_Click(object sender, EventArgs e)
        {
            Response.Redirect("Proveedor.aspx?op=C");
        }

        protected void BtnLeer_Click(object sender, EventArgs e)
        {
            string id;
            Button BtnConsultar = (Button)sender;
            GridViewRow selectedrow = (GridViewRow)BtnConsultar.NamingContainer;
            id = selectedrow.Cells[1].Text;

            Response.Redirect("Proveedor.aspx?id=" + id + "&op=R");
        }

        protected void BtnActualizar_Click(object sender, EventArgs e)
        {
            string id;
            Button BtnConsultar = (Button)sender;
            GridViewRow selectedrow = (GridViewRow)BtnConsultar.NamingContainer;
            id = selectedrow.Cells[1].Text;

            Response.Redirect("Proveedor.aspx?id=" + id + "&op=U");
        }

        protected void BtnBorrar_Click(object sender, EventArgs e)
        {
            string id;
            Button BtnConsultar = (Button)sender;
            GridViewRow selectedrow = (GridViewRow)BtnConsultar.NamingContainer;
            id = selectedrow.Cells[1].Text;

            Response.Redirect("Proveedor.aspx?id=" + id + "&op=D");
        }

        protected void btnbuscar_Click(object sender, EventArgs e)
        {
           
            SqlCommand cmd = new SqlCommand("SP_BuscarProveedor", con);
            cmd.CommandType = CommandType.StoredProcedure;
            cmd.Parameters.Add("@NombreProv", System.Data.SqlDbType.VarChar).Value = txtnombrebus.Text;
            con.Open();
            SqlDataAdapter da = new SqlDataAdapter(cmd);
            DataTable dt = new DataTable();
            da.Fill(dt);
            gvproveedor.DataSource = dt;
            gvproveedor.DataBind();
            con.Close();
        }



    }
}