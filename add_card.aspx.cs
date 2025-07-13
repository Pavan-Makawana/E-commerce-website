using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;

public partial class add_card : System.Web.UI.Page
{
    int tt1 = 0;
    protected void Page_Load(object sender, EventArgs e)
    {
        SqlConnection con = new SqlConnection(@"Data Source=.\SQLEXPRESS;AttachDbFilename='C:\Users\makwa\OneDrive\Documents\Visual Studio 2010\WebSites\WebSite8\App_Data\Database.mdf';Integrated Security=True;User Instance=True; MultipleActiveResultSets=true");

        if (Session["semail"] == null)
        {
            Response.Write(@"<div class='success' style='color:black' >
                                            <div style='background-color:aqua; 
                                                        box-shadow:0px 5px 45px black; 
                                                        padding:5px 22px 5px 23px;'> 
                                                            SAHJANAND STONE INDUSTRY
                                            </div> <br><br> 
                                                Your must login first to view orders,<br>
                                                Click for 
                                                 
                                                <a id='ho' href='login_page/login.aspx'>Login</a>
                                        </div>");
        }
        else
        {
            try
            {
                con.Open();
                Response.Write(" <center><h1 id='pditails'>Order Data</h1></center>");
                string pavan = (string)Session["semail"];

                string query = "select * from Order_data where Uemail='" +pavan  + "'";
               
                SqlCommand cmd = new SqlCommand(query, con);
                SqlDataReader table1 = cmd.ExecuteReader();
                
                if (table1.HasRows)
                {
                    tt1 = 1;

                  
                    Response.Write(@"<table id='add1' border=3 cellpadding=10 class='table'>
                                            <tr>
                                                <th> No
                                                <th id='fix'> Product Name
                                                <th > Height
                                                <th> Wigth
                                                <th id='fix2'> Square Feet
                                                <th> Quantity
                                                <th> Price 
                                                <th> Total
                                                <th id='fix2'> Record Delete");


                    while (table1.Read())
                    {
                        Session["dno"] = table1[0];

                        Response.Write("<tr>");
                        Response.Write("<td  class='add_center'>" + table1[0] + "");
                        Response.Write("<td id='pname' class='add_center'>" + table1[2] + "");
                        Response.Write("<td  class='add_center'>" + table1[3] + "");
                        Response.Write("<td  class='add_center'>" + table1[4] + "");
                        Response.Write("<td  class='add_center'>" + table1[5] + "");
                        Response.Write("<td  class='add_center'>" + table1[6] + "");
                        Response.Write("<td  class='add_center'>" + table1[7] + "");
                        Response.Write("<td  class='add_center'>" + table1[8] + "");
                        Response.Write("<td> <a href='delete_record.aspx?id=" + table1[0] + "'>Delete</a>");
                    }
                        table1.Close();
                    
                    Response.Write("</table>");  
                }
               
                
               
                string query2 = "select * from Order_data2 where Uemail='" + pavan + "'";

                SqlCommand cmd2 = new SqlCommand(query2, con);
                SqlDataReader table2 = cmd2.ExecuteReader();
                
                if (table2.HasRows)
                {
                    tt1=1;

                  

                    Response.Write(@"<table id='add2' border=3 cellpadding=10 class='table'>
                                            <tr>
                                                <th> No
                                                <th id='fix3'> Product Name
                                                <th> Quantity
                                                <th> Price 
                                                <th> Total
                                                <th id='fix2'> Record Delete");

                    while (table2.Read())
                    {
                        Session["dno2"] = table2[0];

                        Response.Write("<tr>");
                        Response.Write("<td  class='add_center'>" + table2[0] + "");
                        Response.Write("<td id='pname' class='add_center'>" + table2[2] + "");
                        Response.Write("<td  class='add_center'>" + table2[3] + "");
                        Response.Write("<td  class='add_center'>" + table2[4] + "");
                        Response.Write("<td  class='add_center'>" + table2[5] + "");
                        Response.Write("<td> <a href='delete_record2.aspx?id=" + table2[0] + "'>Delete</a>");
                    }
                        table2.Close();
                    Response.Write("</table>");  
                }




                 if(tt1==0)
                {
                   
                   
                       
                        Response.Write(@"<div class='success' style='color:black' >
                                    <div style='background-color:aqua; 
                                        box-shadow:0px 5px 45px black; 
                                        padding:5px 22px 5px 23px;'> 
                                            SAHJANAND STONE INDUSTRY
                                                </div> <br><br> 
                                            Your order is a not available,<br>
                                            Click for 
                                            <a href='home.aspx' style='color:hwb(243 0% 0%)'>Order</a>
                                     </div>");
                   
                }

                
                
                con.Close();
            }
            catch (Exception Ex)
            {
                Response.Write(Ex.Message);
            }
        }
    }
}