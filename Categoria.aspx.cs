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
    public partial class Categoria : System.Web.UI.Page
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
                            this.lbltitulo.Text = "Ingresar nueva categoria";
                            this.btningresa.Visible = true;
                            break;
                        
                        case "U":
                            this.lbltitulo.Text = "Modificar categoria";
                            this.btnactualizar.Visible = true;
                            break;

                        case "D":
                            this.lbltitulo.Text = "Eliminar categoria";
                            this.btnborrar.Visible = true;
                            break;


                    }//

                }//

            }//



        }//pageload

        void CargarDatos()
        {
            con.Open();
            SqlDataAdapter da = new SqlDataAdapter("SP_LeerCategoria", con);
            da.SelectCommand.CommandType = CommandType.StoredProcedure;
            da.SelectCommand.Parameters.Add("@Id", SqlDbType.Int).Value = sID;
            DataSet ds = new DataSet();
            ds.Clear();
            da.Fill(ds);
            DataTable dt = ds.Tables[0];
            DataRow row = dt.Rows[0];
            categoria.Text = row[1].ToString();
            con.Close();
        }

        protected void btningresa_Click(object sender, EventArgs e)
        {
            SqlCommand cmd = new SqlCommand("SP_AddCategoria", con);
            cmd.CommandType = System.Data.CommandType.StoredProcedure;
            cmd.Parameters.Add("@Descripcion", System.Data.SqlDbType.VarChar).Value = categoria.Text;
            con.Open();
            cmd.ExecuteNonQuery();
            con.Close();
            Response.Redirect("VerCategoria.aspx");
        }

        protected void btnactualizar_Click(object sender, EventArgs e)
        {
            SqlCommand cmd = new SqlCommand("SP_ActuaCategoria", con);
            con.Open();
            cmd.CommandType = System.Data.CommandType.StoredProcedure;
            cmd.Parameters.Add("@Id", System.Data.SqlDbType.Int).Value = sID;
            cmd.Parameters.Add("@Descripcion", System.Data.SqlDbType.VarChar).Value = categoria.Text;
            cmd.ExecuteNonQuery();
            con.Close();
            Response.Redirect("VerCategoria.aspx");
        }

        protected void btnborrar_Click(object sender, EventArgs e)
        {
            SqlCommand cmd = new SqlCommand("SP_BorrarCategoria", con);
            con.Open();
            cmd.CommandType = System.Data.CommandType.StoredProcedure;
            cmd.Parameters.Add("@Id", System.Data.SqlDbType.Int).Value = sID;
            cmd.ExecuteNonQuery();
            con.Close();
            Response.Redirect("VerCategoria.aspx");
        }

        protected void btnvolver_Click(object sender, EventArgs e)
        {
            Response.Redirect("VerCategoria.aspx");
        }
    }
}