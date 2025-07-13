using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Data.SqlClient;

/// <summary>
/// Summary description for buy
/// </summary>
public class buy
{
   
    
    public void getdata(string w, string h, string q, string semail, string pname, string rname)
    {
       

        SqlConnection con = new SqlConnection(@"Data Source=.\SQLEXPRESS;AttachDbFilename='C:\Users\makwa\OneDrive\Documents\Visual Studio 2010\WebSites\WebSite8\App_Data\Database.mdf';Integrated Security=True;User Instance=True");

        if (w == "" || h == "" || q == "")
        {

            Console.Write("<script>alert('Please Enter Valid Value...');</script>");
            
        }
        else
        {
           
            if (semail == "")
            {
                Console.Write(@"<div class='success' style='color:black' >
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

                float width = float.Parse(w.Trim());
                float height = float.Parse(h.Trim());
                int quantity = int.Parse(q.Trim());
                int price = int.Parse(rname);
                float mul = height * width;
                float total = price * mul;

                con.Open();

                SqlCommand i1cmd = new SqlCommand("insert into Order_data(Uemail,Product_name,Height,Width,Square_Feet,Quantity,Price,Total) values('" + semail + "','" + pname + "','" + h + "','" + w + "','" + mul + "','" + q + "','" + price + "','" + total + "')", con);
                i1cmd.ExecuteNonQuery();

                Console.Write(@"<div class='success'style='color:black' '>
                
                                                 <div style='background-color:aqua;
                                                    box-shadow:0px 5px 45px black;
                                                    padding:5px 13px 5px 14px;
                                                    font-size:19px;'>
                                          
                                                        SAHJANAND STONE INDUSTRY
                                       
                                                  </div> 
                                                  <br><span style='font-size:18px'> Order Successful...  <br></span>
                                        <span style=''> " + mul + " Square Feet <br> " + quantity + " Qunatity<br><span style='font-size:18px'>View to <a href='add_card.aspx' style='color:hwb(243 0% 0%)'>Order</a></span></span><br><br></div>");
               
                con.Close();
            }
        }
        
   
    }

    
}