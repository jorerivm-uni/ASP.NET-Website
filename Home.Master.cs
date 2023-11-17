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

            /*
            if (Session["Usuario"] != null)
            {
                divuser.Visible = false;
                //divbuttons.Visible = false;
                lblusuario.Text = Session["Usuario"].ToString();
            }
            else
            {
                divuser.Visible = true;
                //divbuttons.Visible = true;
                //lblusuario.Text = string.Empty;
            }*/


        }

        protected void Salir(object sender, EventArgs e)
        {
            Session["Usuario"] = null;
            Session["idRol"] = null;
            Response.Redirect("Login_InfoToolsSV.aspx");
            HttpContext.Current.Session.Abandon();

        }
    }




}