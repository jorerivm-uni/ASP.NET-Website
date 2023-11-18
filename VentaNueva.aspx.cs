﻿using System;
using System.Collections.Generic;
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
                LlenarTabla();
            }
        }
        private void LlenarTabla()
        {
            // Conexión a la base de datos
            string connectionString = "Data Source=LEGION;initial catalog=InfoToolsSV;integrated security=true";
            using (SqlConnection conexion = new SqlConnection(connectionString))
            {
                // Consulta SQL para obtener datos de la tabla
                string consulta = "SELECT  codigo, marca, descripcion, stock, precio FROM Producto";
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
                    celdaCodigo.InnerText = lector["codigo"].ToString();
                    fila.Cells.Add(celdaCodigo);

                    HtmlTableCell celdaMarca = new HtmlTableCell();
                    celdaMarca.InnerText = lector["marca"].ToString();
                    fila.Cells.Add(celdaMarca);

                    HtmlTableCell celdaDescripcion = new HtmlTableCell();
                    celdaDescripcion.InnerText = lector["descripcion"].ToString();
                    fila.Cells.Add(celdaDescripcion);


                    HtmlTableCell celdaStock = new HtmlTableCell();
                    celdaStock.InnerText = lector["stock"].ToString();
                    fila.Cells.Add(celdaStock);

                    HtmlTableCell celdaPrecio = new HtmlTableCell();
                    celdaPrecio.InnerText = lector["precio"].ToString();
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