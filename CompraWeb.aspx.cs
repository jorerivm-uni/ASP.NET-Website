using System;
using System.Collections.Generic;
using System.Configuration;
using System.Data.SqlClient;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.HtmlControls;
using System.Web.UI.WebControls;

namespace Login_InfoToolsSV
{
    public partial class CompraWeb : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if (!IsPostBack)
            {
                LlenarTabla();
            }
        }
        private void LlenarTabla()
        {
            // Conexión a la base de datos
            string cadenaConexion = ConfigurationManager.ConnectionStrings["conexion"].ConnectionString;
            using (SqlConnection conexion = new SqlConnection(cadenaConexion))
            {
                // Consulta SQL para obtener datos de la tabla
                string consulta = "SELECT  IdProducto, Nombre, Descripcion, Stock, Precio FROM Producto";
                SqlCommand comando = new SqlCommand(consulta, conexion);

                // Abre la conexión y ejecuta la consulta
                conexion.Open();
                SqlDataReader lector = comando.ExecuteReader();

                // Llena dinámicamente la tabla HTML
                while (lector.Read())
                {
                    HtmlTableRow fila = new HtmlTableRow();

                    //HtmlTableCell celdaID = new HtmlTableCell();
                    //celdaID.InnerText = lector["idProducto"].ToString();
                    //fila.Cells.Add(celdaID);

                    HtmlTableCell celdaCodigo = new HtmlTableCell();
                    celdaCodigo.InnerText = lector["IdProducto"].ToString();
                    fila.Cells.Add(celdaCodigo);

                    HtmlTableCell celdaMarca = new HtmlTableCell();
                    celdaMarca.InnerText = lector["Nombre"].ToString();
                    fila.Cells.Add(celdaMarca);

                    HtmlTableCell celdaDescripcion = new HtmlTableCell();
                    celdaDescripcion.InnerText = lector["Descripcion"].ToString();
                    fila.Cells.Add(celdaDescripcion);


                    HtmlTableCell celdaStock = new HtmlTableCell();
                    celdaStock.InnerText = lector["Stock"].ToString();
                    fila.Cells.Add(celdaStock);

                    HtmlTableCell celdaPrecio = new HtmlTableCell();
                    celdaPrecio.InnerText = lector["Precio"].ToString();
                    fila.Cells.Add(celdaPrecio);

                    datatablesSimple.Rows.Add(fila);
                }

                // Cierra la conexión
                lector.Close();
                conexion.Close();
            }
        }
    }
}