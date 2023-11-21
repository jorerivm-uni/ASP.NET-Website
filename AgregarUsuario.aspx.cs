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
    public partial class AgregarUsuario : System.Web.UI.Page
    {
        SqlConnection con = new SqlConnection(ConfigurationManager.ConnectionStrings["conexion"].ToString());
        string patron = "InfoToolsSV";

        public static string sID = "-1";
        public static string sOpc = "";


        protected void Page_Load(object sender, EventArgs e)
        {
            Response.AppendHeader("Cache-control", "no-store");


           /* if (!IsPostBack && Session["Usuario"]!=null) 
            {

               // Datos();
            
            }*/

            if (!Page.IsPostBack)
            {
                if (Request.QueryString["id"]!=null)
                {
                    sID = Request.QueryString["id"].ToString();
                    CargarDatos();
                }//

                if (Request.QueryString["op"]!=null)
                {
                    sOpc = Request.QueryString["op"].ToString();

                    switch (sOpc)
                    {
                        case "C":
                            this.lbltitulo.Text = "Ingresar nuevo usuario";
                            this.btningresa.Visible = true;
                            break;

                        case "R":
                            this.lbltitulo.Text = "Consulta de usuario";
                            break;

                        case "U":
                            this.lbltitulo.Text = "Modificar usuario";
                            this.btnactualizar.Visible = true;
                            break;

                        case "D":
                            this.lbltitulo.Text = "Eliminar usuario";
                            this.btnborrar.Visible = true;
                            break;


                    }//




                }//



            }//


        }

        void CargarDatos()
        {
            con.Open();
            SqlDataAdapter da = new SqlDataAdapter("SP_Leer", con);
            da.SelectCommand.CommandType = CommandType.StoredProcedure;
            da.SelectCommand.Parameters.Add("@Id", SqlDbType.Int).Value = sID;
            DataSet ds = new DataSet();
            ds.Clear();
            da.Fill(ds);
            DataTable dt = ds.Tables[0];
            DataRow row = dt.Rows[0];
            usuario.Text = row[1].ToString();
            contra.Text = row[2].ToString();
            con.Close();
        }
      

        void Limpiar()
        {
            usuario.Text = string.Empty;
            contra.Text = string.Empty;

        }

        protected void RegistarClick(object sender, EventArgs e)
        {

            try
            {
                SqlCommand cmd = new SqlCommand("SP_AgregarUsuario", con);
                cmd.CommandType = System.Data.CommandType.StoredProcedure;
                cmd.Parameters.Add("@Usuario", System.Data.SqlDbType.VarChar).Value = usuario.Text;
                cmd.Parameters.Add("@Contrasenia", System.Data.SqlDbType.VarChar).Value = contra.Text;
                cmd.Parameters.Add("@Patron", System.Data.SqlDbType.VarChar).Value = patron;
                con.Open();
                cmd.ExecuteNonQuery();
                con.Close();
                Limpiar();
                Response.Redirect("VerUsuario.aspx");
                //Response.Write("<script>alert('usuario agregado')</script>");

            }
            catch (Exception)
            {
                throw;
            }

                   
        
        
        } //fin metodo click

        /*
        protected void Actualizar()
        {
            Response.Redirect("VerUsuario.aspx");
        }

        protected void Borrar()
        {
            SqlCommand cmd = new SqlCommand("SP_Borrar", con);
            cmd.CommandType = System.Data.CommandType.StoredProcedure;
            cmd.Parameters.Add("@Id", System.Data.SqlDbType.Int).Value = sID;
            con.Open();
            cmd.ExecuteNonQuery();
            con.Close();
            Limpiar();
            Response.Redirect("VerUsuario.aspx");
        }
        */
       

        protected void btnactualizar_Click(object sender, EventArgs e)
        {
            Response.Redirect("VerUsuario.aspx");
        }

        protected void btnborrar_Click(object sender, EventArgs e)
        {
            SqlCommand cmd = new SqlCommand("SP_Borrar", con);
            cmd.CommandType = System.Data.CommandType.StoredProcedure;
            cmd.Parameters.Add("@Id", System.Data.SqlDbType.Int).Value = sID;
            con.Open();
            cmd.ExecuteNonQuery();
            con.Close();
            Limpiar();
            Response.Redirect("VerUsuario.aspx");
        }

        protected void btnvolver_Click(object sender, EventArgs e)
        {
            Response.Redirect("VerUsuario.aspx");
        }


        /*
            void Datos()
            {
                try
                {
                    SqlCommand cmd = new SqlCommand("SP_DatosUser", con);
                    cmd.CommandType = System.Data.CommandType.StoredProcedure;
                    con.Open();
                    SqlDataAdapter da = new SqlDataAdapter(cmd);
                    DataTable dt = new DataTable();
                    da.Fill(dt);
                    datos.DataSource = dt;
                    datos.DataBind();
                    con.Close();
                }
                catch (Exception)
                {
                    throw;
                }
            }

            */



    }//fin class



}