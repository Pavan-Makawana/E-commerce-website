<%@ Page Language="C#" AutoEventWireup="true" CodeFile="add_card.aspx.cs" Inherits="add_card" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <link rel='stylesheet' href='css_file/footer.css'>
    <link rel='stylesheet' href='css_file/nevbar.css'>
    <link rel='stylesheet' href='menubar/111.css'>
    <style>
        body{
                    table-layout:auto;
                    width:1700px;
                    height: auto;
                }
                .back-img{
                    width: 5%;
                    margin:auto;
                    position:absolute;
                    top:94px;
                    left:10px;
                 }
                .back-img:hover{
                    scale: 0.8;
                }

                #back
                {
                    height:560px;
                    width:100%;
                    margin-top:70px;
                }
            .success{
                    background-color: rgb(255, 255, 255);
                    height: 27vh;
                    width: 30vw;
                    position: absolute;
                    border-radius: 10px;
                    filter: drop-shadow(-7px -7px 100px );
                    text-align: center;
                    margin-top: 15%;
                    margin-left: 34.5%;
                    font-weight: 500;
                    font-size:20px;
                    z-index: 1;
    
                }

                #ho{
                    color:hwb(243 0% 0%);
                    text-decoration:none;    
                 }
    
                #ho:hover{
                    border-bottom: 2px solid hwb(243 0% 0%) ;
                }
                
                #pditails{
                    position:relative;
                    top:50px;
                    margin: 50px;
                    padding: 10px;
                    border-bottom: 4px solid ;
                    font: 60px bolder;
                    font-weight: 700;
                    border-radius: 9%;
                }

                tr,th,td{
                    padding: 10px 10px 10px 10px;
                }
                
                .table{
                    margin:0 20px 0 20px;
                    display:inline-block;
                    padding: 5px 5px 5px 5px;
                    margin-top:50px;
                }
                
                 #fix{
                    table-layout:fixed;
                     width:250px;
                }
                
                 #fix2{
                    table-layout:fixed;
                     width:50px;
                }  
                
                .add_center{
                    text-align:center;
                }
                
                #fix3{
                    table-layout:fixed;
                     width:350px;
                }
                
    </style>
   
</head>
<body>

 <div class='navbar'>
        <div id='menu' onclick='onclickmenu()'>
            <div id='bar1' class='bar'></div>
            <div id='bar2' class='bar'></div>
            <div id='bar3' class='bar'></div>
        </div>
        <ul class='nav' id='nav'>
            <li id="li-home"><a href='home.aspx'>Home</a></li>
            <li id="li-2"><a href='#'>Products <b id="b-1">+</b> <b id="b-2">_</b></a>
                <ul id="li-2-ul">
                    <li id="ul-li-1"><a href='img1.aspx'>Granite</a></li>
                    <li><a href='img2.aspx'>Kota Stone</a></li>
                    <li><a href='img3.aspx'>Marble</a></li>
                    <li><a href='img4.aspx'>Stand Wash Basin</a></li>
                    <li><a href='img5.aspx'>Cement Product</a></li>
                    <li id="li-2-ul-li-6"><a href='img6.aspx'>Wash Basin</a></li>
                </ul>
            </li>
            <li id="li-a"><a href='about_us.aspx'>About Us</a></li>
            <li id="li-contact"><a href='contact_us.aspx'>Contact Us</a></li>
        </ul>
        <h3>SAHJANAND STONE INDUSTRY</h3>
        <a class='a-1' href='login_page/login.aspx'>Login</a>  
        <a class='a-2' href='login_page/register.aspx'>Register</a>
        <a class='a-3' href='login_page/logout.aspx'>Logout</a>
        <a class='a-4' href='add_card.aspx'><img id="add_to_card" src="img/card.png" alt=""></a>
        <span id="card">Card</span>
    </div>

 <div id="back">
      <a href='home.aspx'><img class='back-img' src='back1.png' ></a>
      
 </div>


<footer>
        <div class="container">
            <div class="footer-content">
                <h3>Contact Us</h3>
                <p>Email : sahjanandstone@gmail.com</p>
                <p>Phone : +91 99041 18816</p>
                <p>Address : sayla</p>
            </div>
            <div class="footer-content">
                <h3>Quick Links</h3>
                 <ul class="list">
                    <li><a href="home.aspx">Home</a></li><br />
                    <li><a href="about_us.aspx">About Us</a></li><br />
                    <li><a href="Contact_us.aspx">Contact Us</a></li><br />
                    <li><a href="login_page/login.aspx">Login</a></li><br />
                    <li><a href="login_page/register.aspx">Register</a></li><br />
                    <li><a href="add_card.aspx">Add To Card</a></li><br />
                    <li><a href="login_page/logout.aspx">Logout</a></li><br />
                 </ul>
            </div>
            <div class="footer-content">
                <h3>Products</h3>
                <ul class="list">
                    <li><a href='img1.aspx'>Granite</a></li><br />
                    <li><a href='img2.aspx'>Kota Stone</a></li><br />
                    <li><a href='img3.aspx'>Marble</a></li><br />
                    <li><a href='img4.aspx'>Stand Wash Basin</a></li><br />
                    <li><a href='img5.aspx'>Cement Product</a></li><br />
                    <li id="li2"><a href='img6.aspx'>Wash Basin</a></li><br />
                </ul>
                </div>
        </div>
        <div class="bottom-bar">
            <p>&copy; 2021 your company . All rights reserved</p>
        </div>
</footer>


<script src="menubar/111.js"></script>

</body>
</html>
