<%@ Page Language="C#" AutoEventWireup="true" CodeFile="img3.aspx.cs" Inherits="img3" %>

<!DOCTYPE aspx PUBLIC "-//W3C//DTD Xaspx 1.0 Transitional//EN" "http://www.w3.org/TR/xaspx1/DTD/xaspx1-transitional.dtd">


<!DOCTYPE aspx>
<html lang="en">
<head>
   <link rel="stylesheet" href="img.css">
    <title>img 1</title>
    <link rel='stylesheet' href='css_file/footer.css'>
    <link rel='stylesheet' href='css_file/nevbar.css'>
    <link rel='stylesheet' href='menubar/111.css'>
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

    <a href="home.aspx"><img src="back1.png" id="back-button" alt=""></a>

    <h1 class="img-h1">MARBLE</h1>
    <nav class="nav-class">
        <div class="main-line-1">
            <div class="img-1">
                <h2>Sangemarmar White</h2>
                <a href="m-color1.aspx"><img src="img/mable/m11.jpg" alt=""></a>
           </div>
           <div class="img-2"> 
               <h2>Black</h2>
               <a href="m-color2.aspx"><img src="img/mable/m21.jpg" alt=""></a>
           </div>
           <div class="img-3"> 
            <h2>Statuario White</h2>
            <a href="m-color3.aspx"><img src="img/mable/m31.jpg" alt=""></a>
        </div>
       </div>
       <div class="main-line-2">
           <div class="img-4">
               <h2>Red</h2>
               <a href="m-color4.aspx"><img src="img/mable/m41.jpeg" alt=""></a>
          </div>
          <div class="img-5"> 
              <h2>polished White</h2>
              <a href="m-color5.aspx"><img src="img/mable/m51.jpg" alt=""></a>
          </div>
          <div class="img-6"> 
            <h2>Green</h2>
            <a href="m-color6.aspx"><img src="img/mable/m61.jpg" alt=""></a>
        </div>
      </div>
    </nav>

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