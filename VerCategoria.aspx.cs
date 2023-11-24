using System;
using System.Collections.Generic;
using System.Data.SqlClient;
using System.Data;
using System.Drawing;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Configuration;

namespace Login_InfoToolsSV
{
    public partial class VerCategoria : System.Web.UI.Page
    {
        //cadena de conexion
        readonly SqlConnection con = new SqlConnection(ConfigurationManager.ConnectionStrings["conexion"].ConnectionString);

        protected void Page_Load(object sender, EventArgs e)
        {
            Response.AppendHeader("Cache-control", "no-store");

            DatosCategorias();
        }

        void DatosCategorias()
        {
            SqlCommand cmd = new SqlCommand("SP_LeerCategorias", con);
            cmd.CommandType = CommandType.StoredProcedure;
            con.Open();
            SqlDataAdapter da = new SqlDataAdapter(cmd);
            DataTable dt = new DataTable();
            da.Fill(dt);
            gvcategoria.DataSource = dt;
            gvcategoria.DataBind();
            con.Close();
        }

        protected void btnbuscar_Click(object sender, EventArgs e)
        {
            SqlCommand cmd = new SqlCommand("SP_BuscarCategoria", con);
            cmd.CommandType = CommandType.StoredProcedure;
            cmd.Parameters.Add("@Descripcion", System.Data.SqlDbType.VarChar).Value = txtnombrebus.Text;
            con.Open();
            SqlDataAdapter da = new SqlDataAdapter(cmd);
            DataTable dt = new DataTable();
            da.Fill(dt);
            gvcategoria.DataSource = dt;
            gvcategoria.DataBind();
            con.Close();
        }

        protected void BtnCreate_Click(object sender, EventArgs e)
        {
            Response.Redirect("Categoria.aspx?op=C");
        }

        protected void BtnActualizar_Click(object sender, EventArgs e)
        {
            string id;
            Button BtnConsultar = (Button)sender;
            GridViewRow selectedrow = (GridViewRow)BtnConsultar.NamingContainer;
            id = selectedrow.Cells[1].Text;

            Response.Redirect("Categoria.aspx?id=" + id + "&op=U");
        }

        protected void BtnBorrar_Click(object sender, EventArgs e)
        {
            string id;
            Button BtnConsultar = (Button)sender;
            GridViewRow selectedrow = (GridViewRow)BtnConsultar.NamingContainer;
            id = selectedrow.Cells[1].Text;

            Response.Redirect("Categoria.aspx?id=" + id + "&op=D");
        }


    }//
}//