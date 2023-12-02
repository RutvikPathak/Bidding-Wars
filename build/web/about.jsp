<%@page import="java.util.ArrayList"%>
<%@page import="Model.UserTable"%>
<!--
Author: W3layouts
Author URL: http://w3layouts.com
License: Creative Commons Attribution 3.0 Unported
License URL: http://creativecommons.org/licenses/by/3.0/
-->
<!DOCTYPE html>
<html>
    <head>
        <title>Smart Shop a Ecommerce Online Shopping Category Flat Bootstrap Responsive Website Template | Shortcodes :: w3layouts</title>
        <!-- for-mobile-apps -->
        <meta name="viewport" content="width=device-width, initial-scale=1">
        <meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
        <meta name="keywords" content="Smart Shop Responsive web template, Bootstrap Web Templates, Flat Web Templates, Android Compatible web template, 
              Smartphone Compatible web template, free webdesigns for Nokia, Samsung, LG, SonyEricsson, Motorola web design" />
        <script type="application/x-javascript"> addEventListener("load", function() { setTimeout(hideURLbar, 0); }, false);
            function hideURLbar(){ window.scrollTo(0,1); } </script>
        <!-- //for-mobile-apps -->
        <link href="css/bootstrap.css" rel="stylesheet" type="text/css" media="all" />
        <link href="css/style.css" rel="stylesheet" type="text/css" media="all" />
        <!-- js -->
        <script type="text/javascript" src="js/jquery-2.1.4.min.js"></script>
        <!-- //js -->
        <!-- cart -->
        <script src="js/simpleCart.min.js"></script>
        <!-- cart -->
        <!-- for bootstrap working -->
        <script type="text/javascript" src="js/bootstrap-3.1.1.min.js"></script>
        <!-- //for bootstrap working -->
        <link href='//fonts.googleapis.com/css?family=Montserrat:400,700' rel='stylesheet' type='text/css'>
        <link href='//fonts.googleapis.com/css?family=Lato:400,100,100italic,300,300italic,400italic,700,900,900italic,700italic' rel='stylesheet' type='text/css'>
        <script src="js/jquery.easing.min.js"></script>
    </head>
    <body>

        <% if (session.getAttribute("loginId") != null) { %>
        <%@include file="User_Menu.jsp" %>
        <%} else { %>
        <%@include file="Menu.jsp" %>
        <%} %>


        <!-- banner -->
        <div class="page-head" style="background:white no-repeat center;">
            <div class="container" style=" width: 100%;  background: rgba(0, 0, 0, 0.58);">
                <h3 style="  font-weight: bold; text-align: center; text-transform: uppercase;
                    letter-spacing: 6px;text-align: center;">About Us</h3>
            </div>
        </div>

        <!-- //banner -->
        <!-- typography -->
        <div class="typrography">
            <div class="container">

                <div class="grid_3 grid_4 wow fadeInLeft animated" data-wow-delay=".5s">
                    <h3 class="bars" style="text-align: center;font-size: 35px;">-Our Mission-</h3>
                    <p style="text-align: center;font-size: 18px;">  "Bidding Wars will do more to get you the most."  </p>
                    <div class="bs-example">
                        <div class="mb-60">
                            <h1 style="text-align: center;color: orange;font-size: 40px;">About Us</h1>
                            <p style="text-align:justify;">Welcome to Bidding Wars!
                                We're dedicated here to giving you the very best products with a focus on customer service,uniquenesss and payment security.
                                Bidding Wars is a online auction website which provides functionality to sell and buy things together.
                                Also customer can participate in bidding.
                                The users can communicate with seller directly.The users can pay for their winning products directly in system only.
                                Admin can handle users access allowances as well as product winner and verification.
                            </p>

                        </div>
                    </div>

                    <div class="contact-grids">
                        <div class="col-md-4 contact-grid text-center animated wow slideInLeft" data-wow-delay=".5s">
                            <div class="contact-grid1">
                                <i class="glyphicon glyphicon-map-marker" aria-hidden="true"></i>
                                <h4>Address</h4>
                                <p>
                                    Shree Umiya BCA College Sola Bhagvat Ahmedabad Gujarat.</span></p>
                            </div>
                        </div>
                        <div class="col-md-4 contact-grid text-center animated wow slideInUp" data-wow-delay=".5s">
                            <div class="contact-grid2">
                                <i class="glyphicon glyphicon-earphone" aria-hidden="true"></i>
                                <h4>Call Us</h4>
                                <p>+91 9512436742<span>+91 9106886503</span></p>
                            </div>
                        </div>
                        <div class="col-md-4 contact-grid text-center animated wow slideInRight" data-wow-delay=".5s">
                            <div class="contact-grid3">
                                <i class="glyphicon glyphicon-envelope" aria-hidden="true"></i>
                                <h4>Email</h4>
                                <p><a href="mailto:info@example.com">devanshib2@gmail.com</a><span><a href="mailto:info@example.com">rutvikpathak2000@gmail.com</a></span></p>
                            </div>
                        </div>
                        <div class="clearfix"> </div>
                    </div>
                    <h3 class="tittle" style="margin-top:50px;">Contact Form</h3>
                    <form action="Feedback" method="post">
                        <div class="contact-form2">
                            <%
                                if (session.getAttribute("userDetails") != null) {
                                    ArrayList<UserTable> al1 = (ArrayList<UserTable>) session.getAttribute("userDetails");
                                    if (al1.size() > 0) {
                                        UserTable u = al1.get(0);
                            %>
                            <input type="hidden" name="UserID" value="<%= u.getUserID()%>">
                            <input type="text" value="Email" name="Email" onfocus="this.value = '';" onblur="if (this.value == '') {
                                        this.value = 'Email';
                                    }" required="">	                                       
                            <input type="text" value="Title" name="Title" onfocus="this.value = '';" onblur="if (this.value == '') {
                                        this.value = 'Title';
                                    }" required="">			
                            <textarea type="text" name="Content" onfocus="this.value = '';" onblur="if (this.value == '') {
                                        this.value = 'Message...';
                                    }" required="">Message...</textarea>
                            <input type="submit" value="Submit" >
                            
                            <% }} %>
                        </div>
                    </form>



                    <!-- //typography -->
                    <!-- //product-nav -->

                    <%@include file="Footer.jsp" %>
                    <%@include file="Login.jsp" %>
                    </body>
                    </html>
