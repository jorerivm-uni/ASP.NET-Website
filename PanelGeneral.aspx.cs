using System;
using System.Collections.Generic;
using System.Data.SqlClient;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.HtmlControls;
using System.Web.UI.WebControls;

namespace Login_InfoToolsSV
{
    public partial class PanelGeneral : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            Response.AppendHeader("Cache-control", "no-store");
            if (!IsPostBack)
            {
                LlenarTabla();
            }
        }
        private void LlenarTabla()
        {
            // Conexión a la base de datos
            string connectionString = "Data Source=LAPTOP-V667GKAG;initial catalog=InfoToolsSV;integrated security=true";
            using (SqlConnection conexion = new SqlConnection(connectionString))
            {
                // Consulta SQL para obtener datos de la tabla
                string consulta = "SELECT idVenta, fechaRegistro, idClientes, nombreClientes, total FROM Venta";
                SqlCommand comando = new SqlCommand(consulta, conexion);

                // Abre la conexión y ejecuta la consulta
                conexion.Open();
                SqlDataReader lector = comando.ExecuteReader();

                // Llena dinámicamente la tabla HTML
                while (lector.Read())
                {
                    HtmlTableRow fila = new HtmlTableRow();

                    HtmlTableCell celdaID = new HtmlTableCell();
                    celdaID.InnerText = lector["idVenta"].ToString();
                    fila.Cells.Add(celdaID);

                    HtmlTableCell celdaFecha = new HtmlTableCell();
                    celdaFecha.InnerText = lector["fechaRegistro"].ToString();
                    fila.Cells.Add(celdaFecha);

                    HtmlTableCell celdaIdClientes = new HtmlTableCell();
                    celdaIdClientes.InnerText = lector["idClientes"].ToString();
                    fila.Cells.Add(celdaIdClientes);

                    HtmlTableCell celdaNombres = new HtmlTableCell();
                    celdaNombres.InnerText = lector["idClientes"].ToString();
                    fila.Cells.Add(celdaNombres);


                    HtmlTableCell celdaTotal = new HtmlTableCell();
                    celdaTotal.InnerText = lector["idClientes"].ToString();
                    fila.Cells.Add(celdaTotal);

                    datatablesSimple.Rows.Add(fila);
                }

                // Cierra la conexión
                lector.Close();
                conexion.Close();
            }
        }

        
    }
}