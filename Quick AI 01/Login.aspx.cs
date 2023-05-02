 using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Configuration;
using System.Data;
using System.Data.SqlClient;
using System.Windows;

namespace Quick_AI_01
{
    public partial class Homepage : System.Web.UI.Page
    {
        string strcone = ConfigurationManager.ConnectionStrings["con"].ConnectionString;
        protected void Page_Load(object sender, EventArgs e)
        {


        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            try
            {
                SqlConnection con = new SqlConnection(strcone);
                if (con.State == ConnectionState.Closed)
                {
                    con.Open();
                }
                SqlCommand cmd = new SqlCommand("select * from Regictration where user_name ='" + TextBox1.Text.Trim() + "' and Password = '" + TextBox2.Text.Trim() + "'", con);
                SqlDataReader dr = cmd.ExecuteReader();
                if (dr.HasRows)
                {
                    while (dr.Read())
                    {
                        Response.Write("<script>alert('Login Suceesful ');</script>");
                        Session["username"] = dr.GetValue(1).ToString();

                    }
                    Response.Redirect("WebForm4.aspx");
                }
                else
                {
                    Response.Write("<script>alert('Invalid Credentials ');</script>");
                }
            }
            catch (Exception ex)
            {

            }

        }

    }
}
