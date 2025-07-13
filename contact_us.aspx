<%@ Page Language="C#" AutoEventWireup="true" CodeFile="contact_us.aspx.cs" Inherits="contact_us" %>

<!DOCTYPE html>
<html lang="en">
<head>
    <link rel="stylesheet" href="contact_us.css">
    <link rel='stylesheet' href='css_file/footer.css'>
    <link rel='stylesheet' href='css_file/nevbar.css'>
    <link rel='stylesheet' href='menubar/111.css'>
    <title>Contact Us</title>
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


      <a href='home.aspx'><img class='back-img' src='img/back_img.png' ></a>
    <div class="contact-img">   
        <img src="img/stonlogo.jpg" >
        <div class="contect-box">
            <h1>Contact Us</h1>
            <form id="lform" runat="server">
                <label>Full Name</label>
                <asp:TextBox ID="fname" runat="server"></asp:TextBox>
                
                <label>Email</label>
                <asp:TextBox ID="cemail" runat="server" TextMode="Email"></asp:TextBox>
               
                <label>Discription</label> 
                <asp:TextBox ID="disc" runat="server" TextMode="MultiLine"></asp:TextBox>
                
                &nbsp;
                <asp:Button ID="Button1" runat="server" Text="Submit" onclick="Button1_Click" />
                &nbsp;
            </form>
        </div>
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