using System;
using System.Configuration;
 

namespace Quick_AI_01
{
    public partial class WebForm13 : System.Web.UI.Page
    {
        string strcone = ConfigurationManager.ConnectionStrings["con"].ConnectionString;
        protected void Page_Load(object sender, EventArgs e)
        {


        }
    }
}