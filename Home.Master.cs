using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace Login_InfoToolsSV
{
    public partial class Home : System.Web.UI.MasterPage
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            Response.AppendHeader("Cache-control", "no-store");

            
            if (Session["Usuario"] == null)
            {
                Response.Redirect("AvisoError.aspx");
            }
           


        }

      

        protected void Btnsalir_Click(object sender, EventArgs e)
        {
            Session["Usuario"] = null;
            Response.Redirect("Login_InfoToolsSV.aspx");
            HttpContext.Current.Session.Abandon();
        }
    }




}