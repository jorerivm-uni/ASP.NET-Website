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
    public partial class Inventario : System.Web.UI.Page


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

        protected void opcion_Click(object sender, EventArgs e)
        {
            if (select1.Items[0].Selected)
            {
                this.btnbuscar.Visible = false;
                this.txtnombrebus.Visible = false;
                this.btnbuscarnombre.Visible = false;
                this.txtbuscanombre.Visible = false;
            }


            if (select1.Items[1].Selected)
            {
                this.btnbuscarnombre.Visible = true;
                this.txtbuscanombre.Visible = true;
                this.btnbuscar.Visible = false;
                this.txtnombrebus.Visible = false;

            }

            if (select1.Items[2].Selected)
            {
                this.btnbuscar.Visible = true;
                this.txtnombrebus.Visible = true;
                this.btnbuscarnombre.Visible = false;
                this.txtbuscanombre.Visible = false;
            }
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

        protected void btnbuscarnombre_Click(object sender, EventArgs e)
        {
            SqlCommand cmd = new SqlCommand("SP_BuscarProductoN", con);
            cmd.CommandType = CommandType.StoredProcedure;
            cmd.Parameters.Add("@Nombre", System.Data.SqlDbType.VarChar).Value = txtbuscanombre.Text;
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