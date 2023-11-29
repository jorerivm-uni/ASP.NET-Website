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
    public partial class VerProducto : System.Web.UI.Page
    {

        //cadena de conexion
        readonly SqlConnection con = new SqlConnection(ConfigurationManager.ConnectionStrings["conexion"].ConnectionString);

        protected void Page_Load(object sender, EventArgs e)
        {
            Response.AppendHeader("Cache-control", "no-store");
            DatosProductos();

           


        }

        void DatosProductos()
        {
            SqlCommand cmd = new SqlCommand("SP_LeerProductos", con);
            cmd.CommandType = CommandType.StoredProcedure;
            con.Open();
            SqlDataAdapter da = new SqlDataAdapter(cmd);
            DataTable dt = new DataTable();
            da.Fill(dt);
            gvproducto.DataSource = dt;
            gvproducto.DataBind();
            con.Close();
        }


        protected void btnbuscar_Click(object sender, EventArgs e)
        {
            SqlCommand cmd = new SqlCommand("SP_BuscarProducto", con);
            cmd.CommandType = CommandType.StoredProcedure;
            cmd.Parameters.Add("@Categoria", System.Data.SqlDbType.VarChar).Value = txtnombrebus.Text;
            con.Open();
            SqlDataAdapter da = new SqlDataAdapter(cmd);
            DataTable dt = new DataTable();
            da.Fill(dt);
            gvproducto.DataSource = dt;
            gvproducto.DataBind();
            con.Close();
        }

        protected void BtnLeer_Click(object sender, EventArgs e)
        {
            string id;
            Button BtnConsultar = (Button)sender;
            GridViewRow selectedrow = (GridViewRow)BtnConsultar.NamingContainer;
            id = selectedrow.Cells[1].Text;

            Response.Redirect("Producto.aspx?id=" + id + "&op=R");
        }

        protected void BtnActualizar_Click(object sender, EventArgs e)
        {
            string id;
            Button BtnConsultar = (Button)sender;
            GridViewRow selectedrow = (GridViewRow)BtnConsultar.NamingContainer;
            id = selectedrow.Cells[1].Text;

            Response.Redirect("Producto.aspx?id=" + id + "&op=U");
        }

        protected void BtnBorrar_Click(object sender, EventArgs e)
        {
            string id;
            Button BtnConsultar = (Button)sender;
            GridViewRow selectedrow = (GridViewRow)BtnConsultar.NamingContainer;
            id = selectedrow.Cells[1].Text;

            Response.Redirect("Producto.aspx?id=" + id + "&op=D");
        }

        protected void BtnCreate_Click(object sender, EventArgs e)
        {
            Response.Redirect("Producto.aspx?op=C");
        }

        //para la eleccion de busquedad
        protected void Button1_Click(object sender, EventArgs e)
        {

            if (select1.Items[0].Selected)
            {
                this.btnbuscar.Visible = false;
                this.txtnombrebus.Visible = false;
                this.btnbuscarmarca.Visible = false;
                this.txtbuscamarca.Visible = false;
            }


            if (select1.Items[1].Selected)
            {
                this.btnbuscarmarca.Visible = true;
                this.txtbuscamarca.Visible = true;
                this.btnbuscar.Visible = false;
                this.txtnombrebus.Visible = false;

            }

            if (select1.Items[2].Selected)
            {
                this.btnbuscar.Visible = true;
                this.txtnombrebus.Visible = true;
                this.btnbuscarmarca.Visible = false;
                this.txtbuscamarca.Visible = false;
            }
        }

        protected void btnbuscarMarca_Click(object sender, EventArgs e)
        {
            SqlCommand cmd = new SqlCommand("SP_BuscarProductoN", con);
            cmd.CommandType = CommandType.StoredProcedure;
            cmd.Parameters.Add("@Nombre", System.Data.SqlDbType.VarChar).Value = txtbuscamarca.Text;
            con.Open();
            SqlDataAdapter da = new SqlDataAdapter(cmd);
            DataTable dt = new DataTable();
            da.Fill(dt);
            gvproducto.DataSource = dt;
            gvproducto.DataBind();
            con.Close();
        }
    }
}