using System;
using System.Collections.Generic;
using System.Configuration;
using System.Data.SqlClient;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace Login_InfoToolsSV
{
    public partial class AgregarUsuario : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            Response.AppendHeader("Cache-control", "no-store");
        }


        SqlConnection con = new SqlConnection(ConfigurationManager.ConnectionStrings["conexion"].ToString());
        string patron = "InfoToolsSV";


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

            }
            catch (Exception)
            {
                throw;
            }





    
        
        
        
        } 
    
    
    
    
    }



}