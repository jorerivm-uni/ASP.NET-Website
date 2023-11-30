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
                DataTable dtCarrito = (DataTable)Session["Carrito"];
                if (dtCarrito != null)
                {
                    gridCarrito.DataSource = dtCarrito;
                    gridCarrito.DataBind();
                }
            }
        }
        protected void CargarProductos()
        {
            
            string cadenaConexion = ConfigurationManager.ConnectionStrings["conexion"].ConnectionString;
            using (SqlConnection conexion = new SqlConnection(cadenaConexion))
            {
                string consulta = "SELECT IdProducto, Nombre, Descripcion, Categoria, Stock, Precio, FechaRegistro FROM Producto";
                SqlCommand comando = new SqlCommand(consulta, conexion);
                SqlDataAdapter adaptador = new SqlDataAdapter(comando);
                DataTable tablaProductos = new DataTable();

                conexion.Open();
                adaptador.Fill(tablaProductos);
                conexion.Close();

                // Mostrar productos en el GridView
                gridProductos.DataSource = tablaProductos;
                gridProductos.DataBind();

                //Mostrar productos en el DropDownList para venta
                ddlProductos.DataSource = tablaProductos;
                ddlProductos.DataValueField = "IdProducto";
                
                ddlProductos.DataBind();
            }
        }

        protected void btnAgregar_Click(object sender, EventArgs e)
        {
            int selectedIndex = ddlProductos.SelectedIndex-1;

            if (selectedIndex >= 0)
            {
                // Obtener los datos de la fila seleccionada
                string productId = gridProductos.Rows[selectedIndex].Cells[0].Text; // ID
                string productMarca = gridProductos.Rows[selectedIndex].Cells[1].Text; // Marca
                string productName = gridProductos.Rows[selectedIndex].Cells[2].Text; // Nombre
                String categoria = gridProductos.Rows[selectedIndex].Cells[3].Text; // Cat
                int stock = Convert.ToInt32(gridProductos.Rows[selectedIndex].Cells[4].Text); // Stock
                decimal price = Convert.ToDecimal(gridProductos.Rows[selectedIndex].Cells[5].Text); // Precio
                DateTime fechaRegistro = Convert.ToDateTime(gridProductos.Rows[selectedIndex].Cells[6].Text); // Fecha Registro

                // Obtener la cantidad del TextBox txtCantidad
                int quantity = Convert.ToInt32(txtCantidad.Text);

                // Crear una DataTable si no existe
                DataTable dtCarrito = (DataTable)Session["Carrito"];
                if (dtCarrito == null)
                {
                    dtCarrito = new DataTable();
                    dtCarrito.Columns.AddRange(new DataColumn[8] { new DataColumn("ID"), new DataColumn("Marca"), new DataColumn("Nombre"), new DataColumn("Categoria"), new DataColumn("Cantidad"), new DataColumn("Precio"), new DataColumn("Fecha"), new DataColumn("Sub-Total") });
                    Session["Carrito"] = dtCarrito;
                }

                // Agregar el producto al carrito
                DataRow dr = dtCarrito.NewRow();
                dr["ID"] = productId;
                dr["Marca"] = productMarca;
                dr["Nombre"] = productName;
                dr["categoria"] = categoria;
                dr["Cantidad"] = quantity;
                dr["Fecha"] = fechaRegistro;
                dr["Precio"] = price;
                decimal subtotal = price * quantity;
                dr["Sub-Total"] = subtotal;

                dtCarrito.Rows.Add(dr);

                // Actualizar el gridCarrito
                gridCarrito.DataSource = dtCarrito;
                gridCarrito.DataBind();
                
                // Actualizar la sesión con el DataTable modificado
                Session["Carrito"] = dtCarrito;
                // Calcular el total de la venta
                decimal totalVenta = CalcularTotalVenta(); // Debes implementar esta función

                // Actualizar el TextBox del total de la venta
                TotalVenta.Text = totalVenta.ToString();
            }
        }
        protected void btnRealizarVenta_Click(object sender, EventArgs e)
        {
            string connectionString = ConfigurationManager.ConnectionStrings["conexion"].ConnectionString;

            using (SqlConnection connection = new SqlConnection(connectionString))
            {
                connection.Open();

                foreach (GridViewRow row in gridCarrito.Rows)
                {
                    int productId = Convert.ToInt32(row.Cells[0].Text); // Obtén el ID del producto
                    int quantity = Convert.ToInt32(row.Cells[2].Text); // Obtén la cantidad del carrito
                    // Aquí ejecutas el Stored Procedure para actualizar el stock
                    using (SqlCommand command = new SqlCommand("sp_RegistrarVenta", connection))
                    {
                        command.CommandType = CommandType.StoredProcedure;

                        // Establece los parámetros del Stored Procedure
                        command.Parameters.Add("@Id", SqlDbType.Int).Value = productId;
                        command.Parameters.Add("@Stock", SqlDbType.Int).Value = quantity;

                        command.ExecuteNonQuery(); // Ejecuta el Stored Procedure para actualizar el stock
                    }
                }
            }

            // Limpia el carrito después de realizar la venta
            LimpiarCarrito();
            CargarProductos();
        }
        protected decimal CalcularTotalVenta()
        {
            decimal totalVenta = 0;

            if (Session["Carrito"] != null)
            {
                DataTable dtCarrito = (DataTable)Session["Carrito"];
                foreach (DataRow row in dtCarrito.Rows)
                {
                    decimal subtotal = Convert.ToDecimal(row["Sub-Total"]);
                    totalVenta += subtotal;
                }
            }

            return totalVenta;
        }

        void LimpiarCarrito()
        {
            Session.Remove("Carrito"); // Elimina el DataTable del carrito de la sesión
            gridCarrito.DataSource = null; // Establece el DataSource del GridView a null
            gridCarrito.DataBind(); // Vuelve a hacer el DataBind para reflejar los cambios
        }

        protected void Btnsalir_Click(object sender, EventArgs e)
        {
            Session["Usuario"] = null;
            Response.Redirect("Login_InfoToolsSV.aspx");
            HttpContext.Current.Session.Abandon();
        }
    }
    
}
