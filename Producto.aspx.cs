using System;
using System.Collections.Generic;
using System.Configuration;
using System.Data;
using System.Data.SqlClient;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace Login_InfoToolsSV
{
    public partial class Producto : System.Web.UI.Page


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
                            this.lbltitulo.Text = "Ingresar nuevo productos";
                            this.btningresa.Visible = true;
                            break;

                        case "R":
                            this.lbltitulo.Text = "Consulta de producto";
                            this.lblid.Visible = true;
                            this.id.Visible = true;
                            break;

                        case "U":
                            this.lbltitulo.Text = "Modificar producto";
                            this.btnactualizar.Visible = true;
                            break;

                        case "D":
                            this.lbltitulo.Text = "Eliminar producto";
                            this.btnborrar.Visible = true;
                            break;


                    }//

                }//

            }//


        }

        void CargarDatos()
        {
            con.Open();
            SqlDataAdapter da = new SqlDataAdapter("SP_LeerProducto", con);
            da.SelectCommand.CommandType = CommandType.StoredProcedure;
            da.SelectCommand.Parameters.Add("@Id", SqlDbType.Int).Value = sID;
            DataSet ds = new DataSet();
            ds.Clear();
            da.Fill(ds);
            DataTable dt = ds.Tables[0];
            DataRow row = dt.Rows[0];
            id.Text = row[0].ToString();
            nombre.Text = row[1].ToString();
            descripcion.Text = row[2].ToString();
            categoria.Text = row[3].ToString();
            stock.Text = row[4].ToString();
            precio.Text = row[5].ToString();
            DateTime d = (DateTime)row[6];
            fecha.Text = d.ToString("dd/MM/yyyy");
            con.Close();
        }



        protected void btningresa_Click(object sender, EventArgs e)
        {
            SqlCommand cmd = new SqlCommand("SP_AddProducto", con);
            cmd.CommandType = System.Data.CommandType.StoredProcedure;
            cmd.Parameters.Add("@Nombre", System.Data.SqlDbType.VarChar).Value = nombre.Text;
            cmd.Parameters.Add("@Descripcion", System.Data.SqlDbType.VarChar).Value = descripcion.Text;
            cmd.Parameters.Add("@Categoria", System.Data.SqlDbType.VarChar).Value = categoria.Text;
            cmd.Parameters.Add("@Stock", System.Data.SqlDbType.Int).Value = stock.Text;
            cmd.Parameters.Add("@Precio", System.Data.SqlDbType.Decimal).Value = precio.Text;
            cmd.Parameters.Add("@Fecha", System.Data.SqlDbType.Date).Value = fecha.Text;
            con.Open();
            cmd.ExecuteNonQuery();
            con.Close();
            Response.Redirect("VerProducto.aspx");
        }

        protected void btnactualizar_Click(object sender, EventArgs e)
        {
            SqlCommand cmd = new SqlCommand("SP_ActuaProducto", con);
            cmd.CommandType = System.Data.CommandType.StoredProcedure;
            cmd.Parameters.Add("@Id", System.Data.SqlDbType.Int).Value = sID;
            cmd.Parameters.Add("@Nombre", System.Data.SqlDbType.VarChar).Value = nombre.Text;
            cmd.Parameters.Add("@Descripcion", System.Data.SqlDbType.VarChar).Value = descripcion.Text;
            cmd.Parameters.Add("@Categoria", System.Data.SqlDbType.VarChar).Value = categoria.Text;
            cmd.Parameters.Add("@Stock", System.Data.SqlDbType.Int).Value = stock.Text;
            cmd.Parameters.Add("@Precio", System.Data.SqlDbType.Decimal).Value = precio.Text;
            cmd.Parameters.Add("@Fecha", System.Data.SqlDbType.Date).Value = fecha.Text;
            con.Open();
            cmd.ExecuteNonQuery();
            con.Close();
            Response.Redirect("VerProducto.aspx");
        }

        protected void btnborrar_Click(object sender, EventArgs e)
        {
            SqlCommand cmd = new SqlCommand("SP_BorrarProducto", con);
            con.Open();
            cmd.CommandType = System.Data.CommandType.StoredProcedure;
            cmd.Parameters.Add("@Id", System.Data.SqlDbType.Int).Value = sID;
            cmd.ExecuteNonQuery();
            con.Close();
            Response.Redirect("VerProducto.aspx");
        }

        protected void btnvolver_Click(object sender, EventArgs e)
        {
            Response.Redirect("VerProducto.aspx");
        }

        protected void Btnsalir_Click(object sender, EventArgs e)
        {
            Session["Usuario"] = null;
            Response.Redirect("Login_InfoToolsSV.aspx");
            HttpContext.Current.Session.Abandon();
        }
    }
}