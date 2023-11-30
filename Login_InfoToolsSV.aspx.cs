using System;
using System.Configuration;
using System.Data.SqlClient;
using System.Data;

namespace Login_InfoToolsSV
{
    public partial class Login_InfoToolsSV : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            Response.AppendHeader("Cache-control", "no-store");

        }

        string patron = "InfoToolsSV";
        protected void BtnIngresar_Click(object sender, EventArgs e)
        {

            if (tbUsuario.Text == "" || tbPassword.Text == "")
            {
                lblError.Text = "Los campos no pueden quedar vacíos!";
            }
            else
            {
                try
                {

                    string conectar = ConfigurationManager.ConnectionStrings["conexion"].ConnectionString;
                    SqlConnection sqlConectar = new SqlConnection(conectar);
                    SqlCommand cmd = new SqlCommand("SP_ValidarUsuario", sqlConectar)
                    {
                        CommandType = CommandType.StoredProcedure
                    };
                    cmd.Connection.Open();
                    cmd.Parameters.Add("@Usuario", SqlDbType.VarChar, 50).Value = tbUsuario.Text;
                    cmd.Parameters.Add("@Contrasenia", SqlDbType.VarChar, 50).Value = tbPassword.Text;
                    cmd.Parameters.Add("@Patron", SqlDbType.VarChar, 50).Value = patron;
                    SqlDataReader dr = cmd.ExecuteReader();
                    if (dr.Read())
                    {
                        //Agregamos una sesion de usuario 
                       
                        Session["Usuario"] = dr[1].ToString();
                        

                        
                        Response.Redirect("PanelGeneral.aspx");
                    }
                    else
                    {
                        lblError.Text = "Usuario o Contraseña incorrecta";
                    }

                    cmd.Connection.Close();

                }
                catch (Exception)
                {
                    throw;
                }

          
            
            }
        
        
        
        
        }


    }
}