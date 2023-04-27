using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.Data.SqlClient;
using System.Windows;
using System.Configuration;

namespace _1.Quick_AI
{
    public partial class WebForm2 : System.Web.UI.Page
    {
        string strcon = ConfigurationManager.ConnectionStrings["con"].ConnectionString;


        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void Button1_Click(object sender, EventArgs e)
        {


            if (Check_Existing_Users())
            {
                Response.Write("<script>alert('Email Id already exist.  Please enter new Email Id');</script>");
            }
            else
            {
                Registeration_New_User();
            }
        }
        bool Check_Existing_Users()
        {
            try
            {
                SqlConnection con = new SqlConnection(strcon);
                if (con.State == System.Data.ConnectionState.Closed)
                {
                    con.Open();
                }



                SqlCommand cmd = new SqlCommand("select * from REGISTRATION where Email_address ='" + TextBox3.Text.Trim() + "';", con);
                DataTable dt = new DataTable();
                SqlDataAdapter da = new SqlDataAdapter(cmd);   
                da.Fill(dt);
                if (dt.Rows.Count >= 1)
                {
                    return true;
                }
                else
                {
                    return false;
                }

                con.Close();
                Response.Write("<script>alert('Sign Up Successful.Go to User Login');</script>");

            }
            catch (Exception ex)
            {

                Response.Write("<script>alert('" + ex.Message + "');</script>"); return false;
            }

        }


        // Creating our own method
        void Registeration_New_User()
        {
            try
            {
                SqlConnection con = new SqlConnection(strcon);
                if (con.State == System.Data.ConnectionState.Closed)
                {
                    con.Open();
                }

                SqlCommand cmd = new SqlCommand("INSERT INTO REGISTRATION(Full_name,User_name,Email_address,Password)values(@Full_name,@User_name,@Email_address,@Password)", con);




                cmd.Parameters.AddWithValue("@Full_name", TextBox1.Text.Trim());
                cmd.Parameters.AddWithValue("@User_name", TextBox2.Text.Trim());
                cmd.Parameters.AddWithValue("@Email_address", TextBox3.Text.Trim());
                cmd.Parameters.AddWithValue("@Password", TextBox4.Text.Trim());

                cmd.ExecuteNonQuery();
                con.Close();
                Response.Write("<script>alert('Sign Up Successful. Go to User Login');</script>");

            }
            catch (Exception ex)
            {

                Response.Write("<script>alert('" + ex.Message + "');</script>");
            }
        }

    } 
}
