using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;

public partial class contact_us : System.Web.UI.Page
{
    SqlConnection con = new SqlConnection(@"Data Source=.\SQLEXPRESS;AttachDbFilename='C:\Users\makwa\OneDrive\Documents\Visual Studio 2010\WebSites\WebSite8\App_Data\Database.mdf';Integrated Security=True;User Instance=True; MultipleActiveResultSets=true");


    protected void Button1_Click(object sender, EventArgs e)
    {
        

        if (fname.Text == "" || cemail.Text == "" || disc.Text == "")
        {
            Response.Write("<span id='error'> Please Fill This Form Completly...</span>");

                
        }
        else
        {
            try
            {
                con.Open();

                if (Session["semail"] != null)
                {
                    
                    string query = "SELECT Fname,Email FROM Register_data WHERE Email='" + Session["semail"] + "'";
                      SqlCommand cmd = new SqlCommand(query, con);
                      SqlDataReader reader = cmd.ExecuteReader();

                      if (reader.HasRows)
                      {

                          reader.Read();
                          string dbFname = reader.GetString(0).TrimEnd();
                          string dbEmail = reader.GetString(1).Trim();

                          if (dbFname == fname.Text.TrimEnd())
                          {

                              if (dbEmail == cemail.Text.Trim())
                              {
                                SqlCommand cmd2 = new SqlCommand("insert into Contect_data(Fname,Email,Discription) Values('"+fname.Text.TrimEnd()+"','"+cemail.Text.Trim()+"','"+disc.Text+"')", con);
                                cmd2.ExecuteNonQuery();
                                Response.Write("<span id='sub'> Your submit is successful...</span>");
                              }
                              else
                              {
                                  Response.Write("<span id='error'> Dose not match login email.</span>");

                              }
                          }
                          else
                          {
                              Response.Write("<span id='error'> Dose not match full name in database.</span>");
                          }
                       
                      }
                      reader.Close();
                }
                else
                {
                    Response.Write(@"<div class='flogin' style='color:black' >
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


               
                con.Close();
            }
            catch (Exception ex)
            {
                Response.Write(ex.Message);
            }


        }

    }
}