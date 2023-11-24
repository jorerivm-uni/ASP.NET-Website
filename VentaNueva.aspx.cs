using System;
using System.Collections.Generic;
using System.Configuration;
using System.Data;
using System.Data.SqlClient;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.HtmlControls;
using System.Web.UI.WebControls;

namespace Login_InfoToolsSV
{
    public partial class VentaNueva : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if (!IsPostBack)
            {
                CargarProductos();
            }
        }
        protected void CargarProductos()
        {
            // Código para obtener los productos desde la base de datos
            // Conexión a la base de datos
            string cadenaConexion = ConfigurationManager.ConnectionStrings["conexion"].ConnectionString;
            using (SqlConnection conexion = new SqlConnection(cadenaConexion))
            {
                string consulta = "SELECT codigo, descripcion, stock, precio FROM Producto";
                SqlCommand comando = new SqlCommand(consulta, conexion);
                SqlDataAdapter adaptador = new SqlDataAdapter(comando);
                DataTable tablaProductos = new DataTable();

                conexion.Open();
                adaptador.Fill(tablaProductos);
                conexion.Close();

                // Mostrar productos en el GridView
                gridProductos.DataSource = tablaProductos;
                gridProductos.DataBind();

                // Mostrar productos en el DropDownList para venta
                ddlProductos.DataSource = tablaProductos;
                ddlProductos.DataTextField = "ID";
                ddlProductos.DataValueField = "Codigo";
                ddlProductos.DataTextField = "Nombre";
                ddlProductos.DataValueField = "descripcion";
                ddlProductos.DataTextField = "Disponible";
                ddlProductos.DataValueField = "stock";
                ddlProductos.DataTextField = "Precio";
                ddlProductos.DataValueField = "precio";
                ddlProductos.DataBind();
            }
        }

        protected void btnAgregar_Click(object sender, EventArgs e)
        {
            // Código para agregar un producto al carrito de compras
            // Puedes manejar la lógica para agregar productos al carrito aquí
        }

        protected void btnRealizarVenta_Click(object sender, EventArgs e)
        {
            // Código para finalizar la venta y registrar en la base de datos
            // Puedes manejar la lógica para registrar la venta aquí
        }
    }
}