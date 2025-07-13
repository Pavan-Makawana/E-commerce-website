using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;

public partial class delete_record2 : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        SqlConnection con = new SqlConnection(@"Data Source=.\SQLEXPRESS;AttachDbFilename='C:\Users\makwa\OneDrive\Documents\Visual Studio 2010\WebSites\WebSite8\App_Data\Database.mdf';Integrated Security=True;User Instance=True");

        con.Open();
        string dno2 = Request.QueryString["id"];

        SqlCommand i1cmd = new SqlCommand("DELETE FROM Order_data2 WHERE No=" + dno2 + "", con);

        int res = i1cmd.ExecuteNonQuery();
        if (res != 0)
        {
            Response.Redirect("add_card.aspx");
        }
        con.Close();
    }
}