<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
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

        @import url('https://fonts.googleapis.com/css?family=Roboto:100,300,400,500,700,900&display=swap');
        @import url('https://fonts.googleapis.com/css?family=Odibee+Sans&display=swap');
        * {
            margin: 0;
            padding: 0;
        }
        body, html {
            width: 100%;
            height: 100vh;
            background-color: #fff;
            background-color: white;

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

        /* Cards */
        * {
            box-sizing: border-box;
        }

        .wrapper {
            display: flex;
            justify-content: center;
            align-items: center;
            font-family: Montserrat;
            background: #262626;
            width: 95%;
        }

        .outer {
            position: relative;
            background: #fff;
            min-height: 550px;
            width: 100%;
            overflow: hidden;
            display: flex;
            align-items: center;
        }

        img {
            position: absolute;
            top: 0px;
            right: -20px;
            z-index: 0;
            animation-delay: 0.5s;
        }

        .content {
            animation-delay: 0.3s;
            position: absolute;
            left: 20px;
            z-index: 3
            
        }

        h1 {
            color: #111;
        }

        p {
            width: 280px;
            font-size: 13px;
            line-height: 1.4;
            color: #aaa;
            margin: 20px 0;
            
        }

        .bg {
            display: inline-block;
            color: #fff;
            background: cornflowerblue;
            padding: 5px 10px;
            border-radius: 50px;
            font-size: .7em;
        }
        .button {
            width: fit-content;
            height: fit-content;
            margin-top: 10px;
            
            
            
        }

        .button a {
            display: inline-block;
            overflow: hidden;
            position: relative;
            font-size: 11px;
            color: #111;
            text-decoration: none;
            padding: 10px 15px;
            border: 1px solid #aaa;
            font-weight: bold;
            
            
        }

        .button a:after{
            content: "";
            position: absolute;
            top: 0;
            right: -10px;
            width: 0%;
            background: #111;
            height: 100%;
            z-index: -1;
            transition: width 0.3s ease-in-out;
            transform: skew(-25deg);
            transform-origin: right;
        }

        .button a:hover:after {
            width: 150%;
            left: -10px;
            transform-origin: left;
            
        }

        .button a:hover {
            color: #fff;
            transition: all 0.5s ease;
        }


        .button a:nth-of-type(1) {
            border-radius: 50px 0 0 50px;
            border-right: none;
        }

        .button a:nth-of-type(2) {
            border-radius: 0px 50px 50px 0;
        }

        label {
            color: black;
        }
    </style>

</head>
<body>
    
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

    <!-- SECTION -->
    <div class="main-section">

        <div class="label" style="color: black; padding-bottom: 0px; width: 100%; text-align: center;">
            <h2 style="border-bottom: 2px dotted black; padding-bottom: 10px;">Add new shop into mall</h2><br>  
        </div>
        
        <form action="/Mall4U/MallAdmin/createShop" method="post">
            <div class="row">
                <div class="col col-md-6 col-lg-6">
                    <div class="mb-3">
                        <label for="exampleInputEmail1" class="form-label">Enter your shop category</label>
                        <input type="text" name="category" class="form-control" id="exampleInputEmail1" aria-describedby="emailHelp">
                    </div>
                </div>
                <div class="col col-md-6 col-lg-6">
                    <div class="mb-3">
                        <label for="exampleInputEmail1" class="form-label">What is new shop name ?</label>
                        <input type="text" name="name" class="form-control" id="exampleInputEmail1" aria-describedby="emailHelp">
                    </div>
                </div>
                <div class="col col-md-6 col-lg-6">
                    <div class="mb-3">
                        <label for="exampleInputEmail1" class="form-label">Status of shop : open/close</label>
                        <input type="text" name="status" class="form-control" id="exampleInputEmail1" aria-describedby="emailHelp">
                    </div>
                </div>
                <div class="col col-md-6 col-lg-6">
                    <div class="mb-3">
                        <label for="exampleInputEmail1" class="form-label">Shop owner name</label>
                        <input type="text" name="owner_name" class="form-control" id="exampleInputEmail1" aria-describedby="emailHelp">
                    </div>
                </div>
                <div class="col col-md-6 col-lg-6">
                    <div class="mb-3">
                        <label for="exampleInputEmail1" class="form-label">Address of shop owner</label>
                        <input type="text" name="owner_address" class="form-control" id="exampleInputEmail1" aria-describedby="emailHelp">
                    </div>
                </div>
                <div class="col col-md-6 col-lg-6">
                    <div class="mb-3">
                        <label for="exampleInputEmail1" class="form-label">Shop owner date of birth</label>
                        <input type="date" name="owner_dob" class="form-control" id="exampleInputEmail1" aria-describedby="emailHelp">
                    </div>
                </div>
                <div class="col col-md-6 col-lg-6">
                    <div class="mb-3">
                        <label for="exampleInputEmail1" class="form-label">Shop owner mobile number</label>
                        <input type="number" name="owner_phone" class="form-control" id="exampleInputEmail1" aria-describedby="emailHelp">
                    </div>
                </div>
                <div class="col col-md-6 col-lg-6">
                    <div class="mb-3">
                        <label for="exampleInputEmail1" class="form-label">Password for shop owner</label>
                        <input type="text" name="owner_password" class="form-control" id="exampleInputEmail1" aria-describedby="emailHelp">
                    </div>
                </div>
                <div class="col col-md-6 col-lg-6">
                    <div class="mb-3">
                        <label for="exampleInputEmail1" class="form-label">Lease amount per month</label>
                        <input type="number" name="lease" class="form-control" id="exampleInputEmail1" aria-describedby="emailHelp">
                    </div>
                </div>
                <div class="col col-md-6 col-lg-6">
                    <div class="mb-3">
                        <label for="exampleInputEmail1" class="form-label">Submit</label>
                        <button type="submit" class="btn btn-primary" style="width: 100%;">Create New Shop</button>
                    </div>
                </div>
            </div>
        </form>
        
    </div>




    <!-- SECTION -->
    <div class="main-section">

        <div class="label" style="color: black; padding-bottom: 0px; width: 100%; text-align: center;">
            <h2 style="border-bottom: 2px dotted black; padding-bottom: 10px;">Available shops in your mall</h2><br>  
        </div>
        
        <div class="row" style="width: 100%;">
        <c:forEach var="shop" items="${listShops}">
            <!-- CARD -->
            <div class="col col-md-4 col-lg-4" style="margin-bottom:10px">
                <div class="wrapper" style="border: 2px solid black;">
                    <div class="outer">
                        <div class="content animated fadeInLeft">
                            <h1><c:out value="${shop.name}"/></th></h1><br>
                            <table class="table table-striped">
                                <tbody>
                                  <tr>
                                    <th scope="row" style="font-size: 20px;"><c:out value="${shop.id}"/></th>
                                    <td style="width: 150px; font-size: 20px;">Category</td>
                                    <td style="width: 150px; font-size: 20px;"><c:out value="${shop.category}"/></td>
                                  </tr>
                                  <tr>
                                    <th scope="row" style="font-size: 20px;"><c:out value="${shop.id}"/></th>
                                    <td style="width: 150px; font-size: 20px;">Status</td>
                                    <td style="width: 150px; font-size: 20px;"><c:out value="${shop.status}"/></td>
                                  </tr>
                                  <tr>
                                    <th scope="row" style="font-size: 20px;"><c:out value="${shop.id}"/></th>
                                    <td style="width: 150px; font-size: 20px;">Lease</td>
                                    <td style="width: 150px; font-size: 20px;"><c:out value="${shop.lease}"/></td>
                                  </tr>
                                  <tr>
                                    <th scope="row" style="font-size: 20px;"><c:out value="${shop.id}"/></th>
                                    <td style="width: 150px; font-size: 20px;">Owner</td>
                                    <td style="width: 150px; font-size: 20px;"><c:out value="${shop.owner_name}"/></td>
                                  </tr>
                                  <tr>
                                    <th scope="row" style="font-size: 20px;"><c:out value="${shop.id}"/></th>
                                    <td style="width: 150px; font-size: 20px;">Owner address</td>
                                    <td style="width: 150px; font-size: 20px;"><c:out value="${shop.owner_address}"/></td>
                                  </tr>
                                  <tr>
                                    <th scope="row" style="font-size: 20px;"><c:out value="${shop.id}"/></th>
                                    <td style="width: 150px; font-size: 20px;">DOB</td>
                                    <td style="width: 150px; font-size: 20px;"><c:out value="${shop.owner_dob}"/></td>
                                  </tr>
                                  <tr>
                                    <th scope="row" style="font-size: 20px;"><c:out value="${shop.id}"/></th>
                                    <td style="width: 150px; font-size: 20px;">Mobile</td>
                                    <td style="width: 150px; font-size: 20px;"><c:out value="${shop.owner_phone}"/></td>
                                  </tr>
                                  <tr>
                                    <th scope="row" style="font-size: 20px;"><c:out value="${shop.id}"/></th>
                                    <td style="width: 150px; font-size: 20px;">Password</td>
                                    <td style="width: 150px; font-size: 20px;"><c:out value="${shop.owner_password}"/></td>
                                  </tr>
                                  <tr>
                                    <td style="text-align: right;" colspan="2"><a href='/Mall4U/MallAdmin/deleteShop?shop_id=<c:out value="${shop.id}"/>'><button type="button" class="btn btn-danger btn-lg btn-block">Delete</button></a></td>
                                  	<td style="text-align: right;">
										<button type="button" class="btn btn-warning btn-lg btn-block" data-bs-toggle="modal" data-bs-target="#myModal<c:out value="${shop.id}"/>">
										  Update
										</button>
									  </td>
                                  </tr>
                                </tbody>
                              </table>
                        </div>
                    </div>
                </div>
            </div>
            
 
<!-- The Modal -->
<div class="modal" id="myModal<c:out value="${shop.id}"/>">
  <div class="modal-dialog">
    <div class="modal-content">

      <!-- Modal Header -->
      <div class="modal-header">
        <h4 class="modal-title" style="color: black">Update shop <c:out value="${shop.id}"/></h4>
        <button type="button" class="btn-close" data-bs-dismiss="modal"></button>
      </div>

      <!-- Modal body -->
      <div class="modal-body">
        
        
         <form action="/Mall4U/MallAdmin/updateShop" method="post">
         	<input style="display:none" value="<c:out value="${shop.id}"/>" type="text" name="id" class="form-control" id="exampleInputEmail1" aria-describedby="emailHelp">
            <div class="row">
                <div class="col col-md-6 col-lg-6">
                    <div class="mb-3">
                        <label for="exampleInputEmail1" class="form-label">Enter your shop category</label>
                        <input value="<c:out value="${shop.category}"/>" type="text" name="category" class="form-control" id="exampleInputEmail1" aria-describedby="emailHelp">
                    </div>
                </div>
                <div class="col col-md-6 col-lg-6">
                    <div class="mb-3">
                        <label for="exampleInputEmail1" class="form-label">What is new shop name ?</label>
                        <input value="<c:out value="${shop.name}"/>" type="text" name="name" class="form-control" id="exampleInputEmail1" aria-describedby="emailHelp">
                    </div>
                </div>
                <div class="col col-md-6 col-lg-6">
                    <div class="mb-3">
                        <label for="exampleInputEmail1" class="form-label">Status of shop : open/close</label>
                        <input value="<c:out value="${shop.status}"/>" type="text" name="status" class="form-control" id="exampleInputEmail1" aria-describedby="emailHelp">
                    </div>
                </div>
                <div class="col col-md-6 col-lg-6">
                    <div class="mb-3">
                        <label for="exampleInputEmail1" class="form-label">Shop owner name</label>
                        <input value="<c:out value="${shop.owner_name}"/>" type="text" name="owner_name" class="form-control" id="exampleInputEmail1" aria-describedby="emailHelp">
                    </div>
                </div>
                <div class="col col-md-6 col-lg-6">
                    <div class="mb-3">
                        <label for="exampleInputEmail1" class="form-label">Address of shop owner</label>
                        <input value="<c:out value="${shop.owner_address}"/>" type="text" name="owner_address" class="form-control" id="exampleInputEmail1" aria-describedby="emailHelp">
                    </div>
                </div>
                <div class="col col-md-6 col-lg-6">
                    <div class="mb-3">
                        <label for="exampleInputEmail1" class="form-label">Shop owner date of birth</label>
                        <input value="<c:out value="${shop.owner_dob}"/>" type="date" name="owner_dob" class="form-control" id="exampleInputEmail1" aria-describedby="emailHelp">
                    </div>
                </div>
                <div class="col col-md-6 col-lg-6">
                    <div class="mb-3">
                        <label for="exampleInputEmail1" class="form-label">Shop owner mobile number</label>
                        <input value="<c:out value="${shop.owner_phone}"/>" type="number" name="owner_phone" class="form-control" id="exampleInputEmail1" aria-describedby="emailHelp">
                    </div>
                </div>
                <div class="col col-md-6 col-lg-6">
                    <div class="mb-3">
                        <label for="exampleInputEmail1" class="form-label">Password for shop owner</label>
                        <input value="<c:out value="${shop.owner_password}"/>" type="text" name="owner_password" class="form-control" id="exampleInputEmail1" aria-describedby="emailHelp">
                    </div>
                </div>
                <div class="col col-md-6 col-lg-6">
                    <div class="mb-3">
                        <label for="exampleInputEmail1" class="form-label">Lease amount per month</label>
                        <input value="<c:out value="${shop.lease}"/>" type="number" name="lease" class="form-control" id="exampleInputEmail1" aria-describedby="emailHelp">
                    </div>
                </div>
                <div class="col col-md-6 col-lg-6">
                    <div class="mb-3">
                        <label for="exampleInputEmail1" class="form-label">Submit</label>
                        <button type="submit" class="btn btn-primary" style="width: 100%;">Update Shop</button>
                    </div>
                </div>
            </div>
        </form>
        
        
      </div>

      <!-- Modal footer -->
      <div class="modal-footer">
        <button type="button" class="btn btn-danger" data-bs-dismiss="modal">Close</button>
      </div>

    </div>
  </div>
</div>

			</c:forEach>            

        </div>        
    </div>





    
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