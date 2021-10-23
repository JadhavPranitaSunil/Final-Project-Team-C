
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Mall4U</title>

    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-1BmE4kWBq78iYhFldvKuhfTAU6auU8tT94WrHftjDbrCEXSU1oBoqyl2QvZ6jIW3" crossorigin="anonymous">
    <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/js/bootstrap.bundle.min.js" integrity="sha384-ka7Sk0Gln4gmtz2MlQnikT1wXgYsOg+OMhuP+IlRH9sENBO0LRn5q+8nbTov4+1p" crossorigin="anonymous"></script>

    <style>

@import url('//maxcdn.bootstrapcdn.com/font-awesome/4.1.0/css/font-awesome.min.css');
 @import url(//fonts.googleapis.com/css?family=Open+Sans:400,700,800,300);
 * {
	 box-sizing: border-box;
     margin: 0;
     padding: 0;
}

header.top-black-style {
            width: 100%;
            height: 20vh;
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
        
 html {
	 width: 100%;
	 height: 100%;
	 margin: 0;
	 padding: 0;
}
 body {
	 width: 100%;
	 height: 100%;
	 font-family: 'Open Sans', 'Helvetica Neue', Helvetica, sans-serif;
	 font-size: 100%;
	 line-height: 1.45;
	 color: #141414;
}
 a {
	 text-decoration: none;
}
 a:hover {
	 text-decoration: none;
}
 img {
	 max-width: 100%;
}
 .btn {
	 display: inline-block;
	 margin: 1rem 0;
	 color: white;
	 font-weight: 500;
	 font-size: 1.3rem;
	 background: #1c262b;
	 letter-spacing: 0.02em;
	 border: none;
	 border-radius: 5px;
	 padding: 0.8rem 1rem 0.9rem;
	 text-shadow: 0 1px rgba(0, 0, 0, .3);
	 box-shadow: 0 0 2px rgba(0, 0, 0, .2);
}
 @media (max-width: 43.75em) {
	 .btn {
		 padding: 0.5rem 0.7rem 0.6rem;
		 font-size: 1rem;
	}
}
 .btn:hover {
	 background: #26343a;
	 color: #fff;
}
 .btn:focus, .btn:active, .btn:focus:active {
	 background: #12181c;
	 border-color: #12181c;
	 box-shadow: 0 2px 5px 0 rgba(0, 0, 0, .5) inset;
}
 .container {
	 margin: 0 auto;
	 width: 90%;
	 max-width: 900px;
}
 header {
	 color: white;
	 background: #1c262b;
	 padding: 10rem 0;
	 text-align: center;
	 position: relative;
	 z-index: 1;
	 overflow: hidden;
}
 @media (max-width: 43.75em) {
	 header {
		 padding: 2rem 0;
	}
}
 header h1 {
	 font-size: 3rem;
	 margin: 0 0 1rem;
}
 @media (max-width: 43.75em) {
	 header h1 {
		 font-size: 2rem;
	}
}
 header h2 {
	 font-weight: 300;
	 font-size: 1.5rem;
	 margin: 0 0 1rem;
}
 @media (max-width: 43.75em) {
	 header h2 {
		 font-size: 1.5rem;
	}
}
 section {
	 background: #fff;
	 color: #1c262b;
	 padding: 3.5rem 0;
}
 @media (max-width: 43.75em) {
	 section {
		 padding: 2rem 0;
	}
}
 section.section--primary {
	 background: #1c262b;
	 color: #fff;
}
 section.section--primary--alt {
	 background: #424c52;
	 color: #fff;
}
 section.section--primary--light {
	 background: rgba(28, 38, 43, .1);
}
 section.section--grey {
	 background: #1c262b;
	 color: #fff;
}
 section.section--grey--light {
	 background: #29363e;
	 color: #fff;
}
 section h3 {
	 text-align: center;
	 font-size: 2rem;
	 font-weight: 300;
	 margin: 0 0 1rem;
}
 @media (max-width: 43.75em) {
	 section h3 {
		 font-size: 1.5rem;
	}
}
 section li {
	 font-size: 1.2rem;
	 font-weight: 300;
}
 section p {
	 font-size: 1.2rem;
	 font-weight: 300;
}
 .col, .col-7, .col-3, .col-5 {
	 margin: 0 1.5%;
	 display: inline-block;
	 vertical-align: top;
}
 .col-7 {
	 width: 64%;
}
 @media (max-width: 43.75em) {
	 .col-7 {
		 width: 100%;
		 margin: 0;
	}
}
 .col-3 {
	 width: 29%;
}
 @media (max-width: 43.75em) {
	 .col-3 {
		 width: 100%;
		 margin: 0;
	}
}
 .col-5 {
	 width: 30%;
}
 @media (max-width: 34.375em) {
	 .col-5 {
		 width: 60%;
		 margin: 0;
	}
}
 .details {
	 text-align: left;
}
 .details h3 {
	 font-size: 2rem;
	 text-align: left;
}
 @media (max-width: 43.75em) {
	 .details-img--ball {
		 height: 200px;
		 width: auto;
		 margin: 0 auto;
	}
}
 .features {
	 text-align: center;
	 padding: 1rem;
}
 .features:hover {
	 background: rgba(255, 255, 255, .1);
}
 @media (max-width: 43.75em) {
	 .features {
		 width: 100%;
		 margin: 0;
		 text-align: left;
		 border-bottom: 1px solid rgba(255, 255, 255, .2);
	}
	 .features:last-child {
		 border: none;
	}
}
 .features i {
	 font-size: 4rem;
	 margin: 0 0 2rem 0;
}
 @media (max-width: 43.75em) {
	 .features i {
		 font-size: 1.5rem;
		 width: 2rem;
		 text-align: center;
		 margin: 0 0 1rem 0;
		 float: left;
	}
}
 .features p {
	 margin: 0 0 1rem 0;
	 font-size: 1rem;
}
 @media (max-width: 43.75em) {
	 .features p {
		 margin-left: 3rem;
	}
}
 blockquote {
	 position: relative;
	 margin: 0;
	 padding: 0;
	 text-align: center;
}
 blockquote:before {
	 display: inline-block;
	 color: #1c262b;
	 font-size: 2rem;
	 content: '\201C';
}
 blockquote p {
	 margin: 0;
	 display: inline;
	 font-size: 1.5rem;
}
 @media (max-width: 43.75em) {
	 blockquote p {
		 font-size: 1.2rem;
	}
}
 blockquote cite {
	 font-size: 1rem;
	 display: block;
	 margin: 0.5rem 0 0 1.2rem;
	 text-style: italic;
}
 @media (max-width: 43.75em) {
	 blockquote cite {
		 font-size: 0.8rem;
	}
}
 blockquote cite:before {
	 content: '–';
}
 footer {
	 background: #2d2b2a;
	 color: #fff;
	 padding: 2rem 0;
	 text-align: center;
	 font-size: 0.8rem;
	 color: rgba(255, 255, 255, .4);
}
 footer ul {
	 margin: 0;
	 padding: 0;
	 list-style: none;
}
 footer ul li {
	 display: inline-block;
}
 footer ul li a {
	 display: block;
	 padding: 0.4rem 0.7rem;
	 font-size: 0.9rem;
	 text-decoration: none;
	 color: rgba(255, 255, 255, .7);
}
 footer ul li a:hover {
	 color: white;
}
 .text--center {
	 text-align: center;
}
 .text--left {
	 text-align: left;
}
 .bg-image {
	 background: #1c262b;
	 text-align: center;
	 position: relative;
	 z-index: 1;
	 overflow: hidden;
}
 .bg-image:before {
	 content: '';
	 display: block;
	 position: absolute;
	 top: 0;
	 bottom: 0;
	 left: 0;
	 right: 0;
	 width: 100%;
	 height: 100%;
	 z-index: -1;
	 background: #333 url('https://cdn.pixabay.com/photo/2019/01/25/13/47/beautiful-people-3954533_960_720.jpg') no-repeat top center;
	 background-size: cover;
	 background-attachment: fixed;
	 filter: blur(5px);
	 opacity: 0.8;
	 transform: scale(1.1);
}
 .bg-image.bg-image-2:before {
	 opacity: 0.6;
	 background-image: url('https://cdn.pixabay.com/photo/2017/11/06/13/50/family-2923690_960_720.jpg');
	 background-position: center center;
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

    <header class="top-black-style" style="padding:10px">
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
                    	Login
                	</li>
                </a>
            </ul>
        </nav>
    </header>   

    <header class="bg-image">
        <div class="container">
          <h1>Welcome at Mall4U...</h1>
          <h2>Variety of products  |  Modern   |  For all</h2>
          <a href="/Mall4U/Login.jsp" class="btn btn-transparent">Login</a>
        </div>
      </header>
      
      <section class="">
        <div class="container">
          <div class="col-3 text--center">
            <img src="https://cdn.pixabay.com/photo/2017/11/06/13/50/family-2923690_960_720.jpg" alt="" class="details-img--ball"/>
          </div>
          <div class="col-7 details">
            <h3>Who are we ?</h3>
            <p>A shopping mall (or simply mall), shopping center,, or shopping arcade is a building or set of buildings that contain retail stores, with interconnecting walkways enabling visitors to easily walk from store to store. The walkways may be enclosed.</p>
          </div>
        </div>
      </section>
      
      <section class="section--primary">
        <div class="container">
          <div class="col-3 features">
            <i class="fa fa-bolt"></i>
            <p>
              "Say cool stuff here"
            </p>
          </div>
          <div class="col-3 features">
            <i class="fa fa-bank"></i>
            <p>
             This is why it's great.  Here's the one thing you should know about this product.
            </p>
          </div>
          <div class="col-3 features">
            <i class="fa fa-heart"></i>
            <p>
             Still curious?  Find out more by clicking on the link.
            </p>
          </div>
        </div>
      </section>
      
      <section class="section--primary--alt bg-image bg-image-2">
        <div class="container text--center">
          <h3>Reasons to buy this product:</h3>
          <div class="col-5 text--left">
            <ul>
              <li>Its the best</li>
              <li>Its awesome</li>
              <li>It makes you happy</li>
              <li>It brings world peace</li>
              <li>Its free!</li>
            </ul>
          </div>
          <div class="col-5 text--left">
            <ul>
              <li>You're the best</li>
              <li>You're awesome</li>
              <li>You make you happy</li>
              <li> You bring world peace</li>
              <li>You like free!</li>
            </ul>
          </div>
        </div>
      </section>
  
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