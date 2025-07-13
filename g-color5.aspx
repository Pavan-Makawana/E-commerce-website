<%@ Page Language="C#" AutoEventWireup="true" CodeFile="g-color5.aspx.cs" Inherits="g_color5" %>

<!DOCTYPE aspx PUBLIC "-//W3C//DTD Xaspx 1.0 Transitional//EN" "http://www.w3.org/TR/xaspx1/DTD/xaspx1-transitional.dtd">


<!DOCTYPE aspx>
<html lang="en">
<head>
    <link rel="stylesheet" href="color.css">
    <link rel="stylesheet" href="img_scroll/img_scroll.css">
     <link rel="stylesheet" href="successbox.css">
     <link rel='stylesheet' href='css_file/footer.css'>
    <link rel='stylesheet' href='css_file/nevbar.css'>
    <link rel='stylesheet' href='menubar/111.css'>
    <title></title>
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

    <a href="img1.aspx"><img src="back1.png" id="back-button" alt=""></a>
    <div class="center">
        <div class="slider_box">
            <div id="slider">
                <img src="img/granite/g51.jpg" alt="">
                <img src="img/granite/g52.jpg" alt="">
                <img src="img/granite/g53.jpg" alt="">
                <img src="img/granite/g54.jpg" alt="">
            </div>
            <div class="indicators">
                <span id="btn1" class="active" ></span>
                <span id="btn2"></span>
                <span id="btn3"></span>
                <span id="btn4"></span>
            </div>
        </div>
       <br>
        <h1 class="color-h1"> RUBY RED GRANITE</h1> 
       <br>
        <h2 class="color-h2">
            <ul id="first-ul">
                <lh>FEATURES</lh>   <br>
                    <li>Appealing Red Color Look</li>
                    <li>Economical And Highy Durable</li>
                    <li>Perfect Choice For Flooring</li>
            </ul>
            <ul id="first-ul">  
                <lh>SPECIFICATIONS</lh> <br>
                    <li>Slab Thickness : 15 mm - 16 mm</li>
                    <li>Polished Surface</li>
                    <li>Appealing Design</li>
            </ul>
        </h2>
       <br>
        <h3 class="color-h3"><span class="color-span1"><img src="rupee_img.png" alt="" id="rupee">125.00</span>/Square Feet</h3>
       <br>
        <form id="form1" runat="server">
            <span class="color-span2">
                <center class="color-enter">Enter  wigth  :  
                <asp:TextBox ID="TextBox1" size=5px placeholder="Feet" class="color-input" runat="server"></asp:TextBox>
        </center>
                <center class="color-enter">Enter length  :  
                <asp:TextBox ID="TextBox2" size=5px placeholder="Feet" class="color-input" runat="server"></asp:TextBox>
        </center>         
                <br>
                <center class="color-enter">Qty    : 
                <asp:TextBox ID="TextBox3" size=2px class="color-input" runat="server"></asp:TextBox>
            </center>
            </span><br>
            <asp:HiddenField ID="HiddenField1" Value="RUBY RED GRANITE" runat="server" />
            <asp:HiddenField ID="HiddenField2" Value="125" runat="server" />
            <asp:Button ID="Button1" class="btn" runat="server" Text="Buy" 
                onclick="Button1_Click" />
          <br><br>
        </form>
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
    <script src="img_scroll/img_scroll.js"></script>
</body>
</html>
