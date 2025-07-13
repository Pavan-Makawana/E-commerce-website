using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;

public partial class m_color3 : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {

    }
    protected void Button1_Click(object sender, EventArgs e)
    {
        SqlConnection con = new SqlConnection(@"Data Source=.\SQLEXPRESS;AttachDbFilename='C:\Users\makwa\OneDrive\Documents\Visual Studio 2010\WebSites\WebSite8\App_Data\Database.mdf';Integrated Security=True;User Instance=True");


        if (TextBox1.Text == "" || TextBox2.Text == "" || TextBox3.Text == "")
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
                                            </div> <br><br> 
                                                Your must login first to Order buy,<br>
                                                Click for 
                                                 
                                                <a id='ho' href='login_page/login.aspx'>Login</a>
                                        </div>");
            }
            else
            {
                float m = float.Parse(TextBox1.Text);
                float w = float.Parse(TextBox2.Text);
                int q = int.Parse(TextBox3.Text);
                float mul = m * w;
                string pname = HiddenField1.Value;
                int rname = int.Parse(HiddenField2.Value);
                float rs = rname * mul;
                string pavan = (string)Session["semail"];



                con.Open();

                SqlCommand i1cmd = new SqlCommand("insert into Order_data(Uemail,Product_name,Height,Width,Square_Feet,Quantity,Price,Total) values('" + pavan + "','" + pname + "','" + m + "','" + w + "','" + mul + "','" + q + "','" + rname + "','" + rs + "')", con);
                i1cmd.ExecuteNonQuery();

                Response.Write(@"<div class='success'style='color:black' '>

                                 <div style='background-color:aqua;
                                    box-shadow:0px 5px 45px black;
                                    padding:5px 13px 5px 14px;
                                    font-size:19px;'>
                          
                                        SAHJANAND STONE INDUSTRY
                       
                                  </div> 
                                  <br><span style='font-size:18px'> Order Successful...  <br></span>
                                    <span style=''> " + mul + " Square Feet <br> " + q + " Qunatity<br><span style='font-size:18px'>View to <a href='add_card.aspx' style='color:hwb(243 0% 0%)'>Order</a></span></span><br><br></div>");
                con.Close();
            }

        }
    }
}