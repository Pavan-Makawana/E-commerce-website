using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;
public partial class sw_color4 : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {

    }
    protected void Button1_Click(object sender, EventArgs e)
    {
        SqlConnection con = new SqlConnection(@"Data Source=.\SQLEXPRESS;AttachDbFilename='C:\Users\makwa\OneDrive\Documents\Visual Studio 2010\WebSites\WebSite8\App_Data\Database.mdf';Integrated Security=True;User Instance=True; MultipleActiveResultSets=true");


        if (TextBox1.Text == "")
        {
            Response.Write("<script>alert('Please Enter Valid Value...');</script>");
        }
        else
        {


            if (Session["semail"] == null)
            {
                Response.Write(@"<div class='success' style='color:black' >
                                            <div style='background-color:aqua; 
                                                        box-shadow:0px 5px 45px black; 
                                                        padding:5px 22px 5px 23px;'> 
                                                            SAHJANAND STONE INDUSTRY
                                            </div> <br><br> <br>
                                                Your must login first to Order buy,<br>
                                                Click for 
                                                 
                                                <a id='ho' href='login_page/login.aspx'>Login</a>
                                        </div>");
            }
            else
            {

                int q = int.Parse(TextBox1.Text);
                string pname = HiddenField1.Value;
                int rname = int.Parse(HiddenField2.Value);
                float rs = rname * q;
                string pavan = (string)Session["semail"];



                con.Open();

                string query = "select max(No) from Order_data2";
                SqlCommand cmd = new SqlCommand(query, con);
                SqlDataReader reader = cmd.ExecuteReader();





                SqlCommand i1cmd = new SqlCommand("insert into Order_data2(Uemail,Product_name,Quantity,Price,Total) values('" + pavan + "','" + pname + "','" + q + "','" + rname + "','" + rs + "')", con);
                i1cmd.ExecuteNonQuery();

                Response.Write(@"<div class='success'style='color:black' '>

                                 <div style='background-color:aqua;
                                    box-shadow:0px 5px 45px black;
                                    padding:5px 13px 5px 14px;
                                    font-size:19px;'>
                          
                                        SAHJANAND STONE INDUSTRY
                       
                                  </div> 
                                  <br><span style='font-size:18px'> Order Successful...  <br></span>
                                    <span style=''> " + q + " Qunatity<br><span style='font-size:18px'>View to <a href='add_card.aspx' style='color:hwb(243 0% 0%)'>Order</a></span></span><br><br></div>");
                con.Close();
            }

        }
    }
}