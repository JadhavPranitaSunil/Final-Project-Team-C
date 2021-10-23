
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Contact US</title>
<link href="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-1BmE4kWBq78iYhFldvKuhfTAU6auU8tT94WrHftjDbrCEXSU1oBoqyl2QvZ6jIW3" crossorigin="anonymous">
<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/js/bootstrap.bundle.min.js" integrity="sha384-ka7Sk0Gln4gmtz2MlQnikT1wXgYsOg+OMhuP+IlRH9sENBO0LRn5q+8nbTov4+1p" crossorigin="anonymous"></script>

<style>

*{
	margin: 0;
	padding: 0;
	font-family : Century Gothic;
}

.container
{
	width: 80%;


}

.contact-box
{
	background: #fff;
    display: flex;
/* it is used to set the lenght of flexible items i.e responsive and mobile friendly */
}
.contact-left
{
	flex-basis: 60%;
	/* specifies initial lenght of fexible items*/
	padding:40px 60px;
	

}
.contact-right
{
		flex-basis: 40%;
    background: #1c00b5;
	padding:40px;
    color: #fff;
}
h1
{
	padding-top: 20px;
	margin-bottom: 10px;
	color: #fff;
    text-align: center;
}
.container p
{
	margin-bottom: 40px;    
	color: #fff;
    text-align: center;
}

.input-row
{
display: flex;
justify-content: space-between;
/*when items do not use all avilable space in main-axis */
margin-bottom: 20px;


}

.input-row .input-group
{
	flex-basis: 45%;
}
input
{
	width: 100%;
	border: none;
	border-bottom: 1px solid #ccc; 
	outline:none;
	padding-bottom: 5px;
}

textarea
{
	width: 100%;
	border:1px solid #ccc;
outline: none;
padding: 10px;
box-sizing: border-box;

}
label
{
	margin-bottom:6px;
	display: block;
	color: #000; 
}
button
{
background: #1c00b5;
width: 100px;
border:none;
outline:none;
color: #fff;
height: 35px;
border-radius: 30px;
margin-top: 20px;
}

.contact-left h3
{
	color:  #000;
	margin-bottom: 30px;
}
.contact-right h3
{
	margin-bottom: 30px;
}

tr td:first-child
{
padding-right: 20px;
}

tr td
{
padding-top: 20px;
color: white;
}




.header
{
background-image :linear-gradient(rgba(0,0,0,0.5),rgba(0,0,0,0.5)),url(https://cdn.pixabay.com/photo/2016/05/26/05/12/shopping-mall-1416500_960_720.jpg);
height :130vh;
background-size: cover;
background-position :center;

}

ul
{
float:right;
list-style-type :none;
margin-top :25px;
}
ul li{
display :inline-block;


}

ul li a
{
text-decoration :none;
color:#fff;
padding : 5px 10px;
transition :0.6s ease;
}

ul li a:hover{
background-color :#fff;
color: black;
}

.logo img{
float:left;
width :100px;
height:100px;
padding-right: 20px;

}






body {
            overflow-y: scroll;
            overflow-x: hidden;
        }
        header.top-black-style {
            width: 100%;
            height: 15vh;
            background-color: #000;
        }
        header.top-black-style nav {
            width: 100%;
            height: 100%;
        }
        header.top-black-style nav ul {
            width: 100%;
            height: 100%;
            display: flex;
            justify-content: center;
            align-items: center;
        }
        header.top-black-style nav ul li {
            display: inline-block;
            color: #fff;
            font-family: Roboto;
            list-style: none;
            font-size: 1em;
            padding: 10px;
            margin: 20px;
            transition: 0.3s;
            cursor: pointer;
            border-radius: 2px;
        }
        header.top-black-style nav ul li:hover {
            color: #ccc;
        }
        header.top-black-style nav ul li.special {
            font-size: 1.2em;
            text-transform: uppercase;
            letter-spacing: 1.2px;
            border-bottom: 3px solid #ff5e14;
            padding-bottom: 6px;
            border-top: 3px solid #ff5e14;
            padding-top: 6px;
        }
        header.top-black-style nav ul li.special.title {
            font-size: 1.4em;
            letter-spacing: 1.4px;
        }
        header.top-black-style nav ul li.special.title:hover {
            color: #f95658;
        }
        header.top-black-style nav ul li.active {
            background-color: #101213;
        }
        header.top-black-style nav ul li.active:hover {
            color: #fff;
        }
        header.top-black-style nav ul .separation {
            margin-left: 40px;
        }
        header.top-black-style nav ul .bubble {
            min-width: 100px;
            min-height: 25px;
            background-color: #fff;
            padding: 10px;
            font-family: Roboto;
            border-radius: 2px;
            font-size: 1.1em;
            z-index: 999;
            position: absolute;
            border-radius: 0.4em;
            margin-left: -29%;
            display: none;
        }
        header.top-black-style nav ul .bubble::before {
            content: '';
            position: absolute;
            left: 0;
            top: 50%;
            width: 0;
            height: 0;
            border: 7px solid transparent;
            border-right-color: #fff;
            border-left: 0;
            margin-top: -7px;
            margin-left: -7px;
        }
        .portfolio {
            width: 150%;
            height: 50vh;
            background-color: transparent;
        }
        .portfolio div {
            height: 100%;
            display: inline-block;
        }
        .portfolio img {
            height: 100%;
        }
        .portfolio .prev {
            width: 2vw;
            height: 100%;
            margin: 15px;
            text-align: center;
            font-size: 4em;
            color: #fff;
            font-weight: 900;
            font-family: 'Odibee Sans', serif;
        }
 
        /* FOOTER */
        ul {
            margin: 0px;
            padding: 0px;
        }
        .footer-section {
        background: black;
        position: relative;
        }
        .footer-cta {
        border-bottom: 1px solid #373636;
        }
        .single-cta i {
        color: #ff5e14;
        font-size: 30px;
        float: left;
        margin-top: 8px;
        }
        .cta-text {
        padding-left: 15px;
        display: inline-block;
        }
        .cta-text h4 {
        color: #fff;
        font-size: 20px;
        font-weight: 600;
        margin-bottom: 2px;
        }
        .cta-text span {
        color: #757575;
        font-size: 15px;
        }
        .footer-content {
        position: relative;
        z-index: 2;
        }
        .footer-pattern img {
        position: absolute;
        top: 0;
        left: 0;
        height: 330px;
        background-size: cover;
        background-position: 100% 100%;
        }
        .footer-logo {
        margin-bottom: 30px;
        }
        .footer-logo img {
            max-width: 200px;
        }
        .footer-text p {
        margin-bottom: 14px;
        font-size: 14px;
            color: #7e7e7e;
        line-height: 28px;
        }
        .footer-social-icon span {
        color: #fff;
        display: block;
        font-size: 20px;
        font-weight: 700;
        font-family: 'Poppins', sans-serif;
        margin-bottom: 20px;
        }
        .footer-social-icon a {
        color: #fff;
        font-size: 16px;
        margin-right: 15px;
        }
        .footer-social-icon i {
        height: 40px;
        width: 40px;
        text-align: center;
        line-height: 38px;
        border-radius: 50%;
        }
        .facebook-bg{
        background: #3B5998;
        }
        .twitter-bg{
        background: #55ACEE;
        }
        .google-bg{
        background: #DD4B39;
        }
        .footer-widget-heading h3 {
        color: #fff;
        font-size: 20px;
        font-weight: 600;
        margin-bottom: 40px;
        position: relative;
        }
        .footer-widget-heading h3::before {
        content: "";
        position: absolute;
        left: 0;
        bottom: -15px;
        height: 2px;
        width: 50px;
        background: #ff5e14;
        }
        .footer-widget ul li {
        display: inline-block;
        float: left;
        width: 50%;
        margin-bottom: 12px;
        }
        .footer-widget ul li a:hover{
        color: #ff5e14;
        }
        .footer-widget ul li a {
        color: #878787;
        text-transform: capitalize;
        }
        .subscribe-form {
        position: relative;
        overflow: hidden;
        }
        .subscribe-form input {
        width: 100%;
        padding: 14px 28px;
        background: #2E2E2E;
        border: 1px solid #2E2E2E;
        color: #fff;
        }
        .subscribe-form button {
            position: absolute;
            right: 0;
            background: #ff5e14;
            padding: 13px 20px;
            border: 1px solid #ff5e14;
            top: 0;
        }
        .subscribe-form button i {
        color: #fff;
        font-size: 22px;
        transform: rotate(-6deg);
        }
        .copyright-area{
        background: #202020;
        padding: 25px 0;
        }
        .copyright-text p {
        margin: 0;
        font-size: 14px;
        color: #878787;
        }
        .copyright-text p a{
        color: #ff5e14;
        }
        .footer-menu li {
        display: inline-block;
        margin-left: 20px;
        }
        .footer-menu li:hover a{
        color: #ff5e14;
        }
        .footer-menu li a {
        font-size: 14px;
        color: #878787;
        }
        .main-section {
            background: white;
            padding: 40px;
            color: white;
        }

</style>




</head>
<body>


<header class="header">

    
    <header class="top-black-style">
        <nav>
            <ul>
                <li class="special title">
                    Mall4U
                </li>
                <!--<div class="bubble">
                    Go to "About" section ?
                </div>-->
                <div class="separation"></div>
                <a href="/Mall4U/Index.jsp">
                	<li>
                    	Home
                	</li>
                </a>
                <a href="/Mall4U/Gallery.jsp">
                	<li>
                    	Gallery
                	</li>
                </a>
                <a href="/Mall4U/About.jsp">
                	<li>
                    	About Us
                	</li>
                </a>
                <a href="/Mall4U/ContactUs.jsp">
                	<li>
                    	Contact Us
                	</li>
                </a>
                <div class="separation"></div>
               <a href="/Mall4U/Login.jsp">
                	<li>
                    	Logout
                	</li>
                </a>
            </ul>
        </nav>
    </header>   


<div class="container">
<h1> Connect With Us</h1>
<p>
	We would to respond your queries and help you succeed.<br>Feel free to get in touch with us.
</p>
	
	<div class="contact-box">
	<div class="contact-left">
		<h3>Sent your request</h3>
<form action="/Mall4U/Contact/Create" method="post">
<div class="input-row">
	<div class="input-group">
		<label>Name</label>
		<input type="text" name="name" placeholder="XYZ">
	</div>

	<div class="input-group">
		<label>Phone</label>
		<input type="text" name="phone" placeholder="+91 7790566388">
	</div>
</div>

<div class="input-row">
	<div class="input-group">
		<label>Email</label>
		<input type="email" name="email" placeholder="xyz@gmail.com">
	</div>

	<div class="input-group">
		<label>Subject</label>
		<input type="text" name="subject" placeholder="Service demo">
	</div>
</div>


<label>Message</label>
<textarea  rows="5" name="message" placeholder="Your Message"></textarea>

<button type="submit">SEND</button>

</form>
</div>

	<div class="contact-right">
		
      <h3>Reach Us</h3>
<h4>
	"Every shopping mall is Shopper's Paradise!!!"
</h4>
      <table>

      	<tr>

      		<td>Email</td>
      		<td>mall4u@gmail.com</td>
      	</tr>

      	<tr>
      		<td>Phone</td>
      		<td>9876512345</td>
      	</tr>

      	<tr>
      		<td>Address</td>
      		<td>#236, Ground floor,oppo Bank Of India,Pimpari-Chinchwad,Pune-411-033</td>
      	</tr>

      </table>

	</div>
	</div>
</div>

</header>



<!-- FOOTER -->
<footer class="footer-section">
    <div class="container">
        <div class="footer-cta pt-5 pb-5">
            <div class="row">
                <div class="col-xl-4 col-md-4 mb-30">
                    <div class="single-cta">
                        <i class="fas fa-map-marker-alt"></i>
                        <div class="cta-text">
                            <h4>Find us</h4>
                            <span>Pune,Pandharpur,Gujrat</span>
                        </div>
                    </div>
                </div>
                <div class="col-xl-4 col-md-4 mb-30">
                    <div class="single-cta">
                        <i class="fas fa-phone"></i>
                        <div class="cta-text">
                            <h4>Call us</h4>
                            <span>9876512345</span>
                        </div>
                    </div>
                </div>
                <div class="col-xl-4 col-md-4 mb-30">
                    <div class="single-cta">
                        <i class="far fa-envelope-open"></i>
                        <div class="cta-text">
                            <h4>Mail us</h4>
                            <span>mall4u@gmail.com</span>
                        </div>
                    </div>
                </div>
            </div>
        </div>
        <div class="footer-content pt-5 pb-5">
            <div class="row">
                <div class="col-xl-4 col-lg-4 mb-50">
                    <div class="footer-widget">
                        <div class="footer-text">
                            <!-- <p>Lorem ipsum dolor sit amet, consec tetur adipisicing elit, sed do eiusmod tempor incididuntut consec tetur adipisicing
                            elit,Lorem ipsum dolor sit amet.</p> -->
                        </div>
                        <div class="footer-social-icon">
                            <span>Address</span>
                            <p>#236, Ground floor,oppo Bank Of India,Pimpari-Chinchwad,Pune-411-033</p>
                            <a href="#"><i class="fab fa-facebook-f facebook-bg"></i></a>
                            <a href="#"><i class="fab fa-twitter twitter-bg"></i></a>
                            <a href="#"><i class="fab fa-google-plus-g google-bg"></i></a>
                        </div>
                    </div>
                </div>
                <div class="col-xl-4 col-lg-4 col-md-6 mb-30">
                    <div class="footer-widget">
                        <div class="footer-widget-heading">
                            <h3>Visit</h3>
                        </div>
                        <ul>
                            <li><a href="/Mall4U/Index.jsp">Home</a></li>
                            <!-- <li><a href="#">about</a></li>
                            <li><a href="#">services</a></li> -->
                            <li><a href="/Mall4U/Gallery.jsp">Gallery</a></li>
                            <!-- <li><a href="#">Contact</a></li> -->
                            <li><a href="/Mall4U/About.jsp">About us</a></li>
                            <!-- <li><a href="#">Our Services</a></li>
                            <li><a href="#">Expert Team</a></li> -->
                            <li><a href="/Mall4U/ContactUs.jsp">Contact us</a></li>
                            <!-- <li><a href="#">Latest News</a></li> -->
                        </ul>
                    </div>
                </div>
                <div class="col-xl-4 col-lg-4 col-md-6 mb-50">
                    <div class="footer-widget">
                        <div class="footer-widget-heading">
                            <h3>Subscribe</h3>
                        </div>
                        <div class="footer-text mb-25">
                            <p>Do subscribe to our new feeds and kindly fill the form below.</p>
                        </div>
                        <div class="subscribe-form">
                            <form action="#">
                                <input type="text" placeholder="Email Address">
                                <button><i class="fab fa-telegram-plane"></i></button>
                            </form>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </div>
    <div class="copyright-area">
        <div class="container">
            <div class="row">
                <div class="col-xl-6 col-lg-6 text-center text-lg-left">
                    <div class="copyright-text">
                        <p>Copyright &copy; 2018, All Right Reserved <a style="color: #ff5e14;">Mall4U</a></p>
                    </div>
                </div>
                <div class="col-xl-6 col-lg-6 d-none d-lg-block text-right">
                    <div class="footer-menu">
                        <ul>
                            <li><a href="/Mall4U/Index.jsp">Home</a></li>
                            <li><a href="#">Terms</a></li>
                            <li><a href="#">Privacy</a></li>
                            <li><a href="#">Policy</a></li>
                            <li><a href="/Mall4U/ContactUs.jsp">Contact</a></li>
                        </ul>
                    </div>
                </div>
            </div>
        </div>
    </div>
</footer>


</body>
</html>