using System;
using System.Collections.Generic;
using System.Configuration;
using System.Data;
using System.Data.SqlClient;
using System.Diagnostics.Contracts;
using System.Linq;
using System.Security.Cryptography;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace Login_InfoToolsSV
{
       
    public partial class Proveedor : System.Web.UI.Page
    {

        SqlConnection con = new SqlConnection(ConfigurationManager.ConnectionStrings["conexion"].ToString());

        public static string sID = "-1";
        public static string sOpc = "";

        protected void Page_Load(object sender, EventArgs e)
        {
            Response.AppendHeader("Cache-control", "no-store");

            if (!Page.IsPostBack)
            {
                if (Request.QueryString["id"] != null)
                {
                    sID = Request.QueryString["id"].ToString();
                    CargarDatos();
                }//

                if (Request.QueryString["op"] != null)
                {
                    sOpc = Request.QueryString["op"].ToString();

                    switch (sOpc)
                    {
                        case "C":
                            this.lbltitulo.Text = "Ingresar nuevo proveedor";
                            this.btningresa.Visible = true;
                            break;

                        case "R":
                            this.lbltitulo.Text = "Consulta de proveedor";
                            this.lblid.Visible = true;
                            this.id.Visible = true;
                            break;

                        case "U":
                            this.lbltitulo.Text = "Modificar proveedor";
                            this.btnactualizar.Visible = true;
                            break;

                        case "D":
                            this.lbltitulo.Text = "Eliminar proveedor";
                            this.btnborrar.Visible = true;
                            break;


                    }//

                }//

            }//

        }

        void CargarDatos()
        {
            con.Open();
            SqlDataAdapter da = new SqlDataAdapter("SP_LeerProveedor", con);
            da.SelectCommand.CommandType = CommandType.StoredProcedure;
            da.SelectCommand.Parameters.Add("@Id", SqlDbType.Int).Value = sID;
            DataSet ds = new DataSet();
            ds.Clear();
            da.Fill(ds);
            DataTable dt = ds.Tables[0];
            DataRow row = dt.Rows[0];
            id.Text = row[0].ToString();
            proveedor.Text = row[1].ToString();
            direccion.Text = row[2].ToString();
            telefono.Text = row[3].ToString();
            con.Close();
        }

        protected void btningresa_Click(object sender, EventArgs e)
        {
            SqlCommand cmd = new SqlCommand("SP_AddProveedor", con);
            cmd.CommandType = System.Data.CommandType.StoredProcedure;
            cmd.Parameters.Add("@NombreProv", System.Data.SqlDbType.VarChar).Value = proveedor.Text;
            cmd.Parameters.Add("@Direccion", System.Data.SqlDbType.VarChar).Value = direccion.Text;
            cmd.Parameters.Add("@Telefono", System.Data.SqlDbType.Int).Value = telefono.Text;
            con.Open();
            cmd.ExecuteNonQuery();
            con.Close();
            Response.Redirect("VerProveedor.aspx");
        }

        protected void btnactualizar_Click(object sender, EventArgs e)
        {
            SqlCommand cmd = new SqlCommand("SP_ActuaProveedor", con);
            con.Open();
            cmd.CommandType = System.Data.CommandType.StoredProcedure;
            cmd.Parameters.Add("@Id", System.Data.SqlDbType.Int).Value = sID;
            cmd.Parameters.Add("@NombreProv", System.Data.SqlDbType.VarChar).Value = proveedor.Text;
            cmd.Parameters.Add("@Direccion", System.Data.SqlDbType.VarChar).Value = direccion.Text;
            cmd.Parameters.Add("@Telefono", System.Data.SqlDbType.Int).Value = telefono.Text;
            cmd.ExecuteNonQuery();
            con.Close();
            Response.Redirect("VerProveedor.aspx");
        }

        protected void btnborrar_Click(object sender, EventArgs e)
        {
            SqlCommand cmd = new SqlCommand("SP_BorrarProveedor", con);
            con.Open();
            cmd.CommandType = System.Data.CommandType.StoredProcedure;
            cmd.Parameters.Add("@Id", System.Data.SqlDbType.Int).Value = sID;
            cmd.ExecuteNonQuery();
            con.Close();
            Response.Redirect("VerProveedor.aspx");
        }

        protected void btnvolver_Click(object sender, EventArgs e)
        {
            Response.Redirect("VerProveedor.aspx");
        }
    }
}