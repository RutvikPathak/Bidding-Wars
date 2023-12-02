<%@page import="Model.FeedbackTable"%>
<%@page import="java.util.ArrayList"%>
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
        <style>
            td
            {
                padding: 20px;
            }
        </style>

    </head>
    <body>


        <%@include file="Admin_Menu.jsp" %>



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
                    <h3 class="tittle" style="margin-top:50px;">Feedback Table</h3>

                    <div style="margin-top: 20px;">
                        <form>
                            <input type="search" value="Search" style="width:500px; border:none; height:50px;" onfocus="this.value = '';" onblur="if (this.value == '') {
                                        this.value = 'Search';
                                    }" required="">



                            <button type="submit" style="width:50px; height:50px; background-color:rgb(263,143,14); color:white; border:none;">
                                <span class="glyphicon glyphicon-search" style="font-size:30px;"></span>
                            </button> 
                            <div style="margin-top: 20px; margin-left:-450px;">
                                <center>
                                    <table border=1>
                                        <tr style="background:rgb(255,163,13,0.5);">
                                            <td>Sr. </td>
                                            <td>Feedback By </td>
                                            <td>Title</td>
                                        </tr>  

                                        <%
                                            if (request.getAttribute("FeedbackManagement") != null) {
                                                ArrayList<FeedbackTable> al = (ArrayList<FeedbackTable>) request.getAttribute("FeedbackManagement");
                                                if (al.size() > 0) {

                                                    for (int i = 0; i < al.size(); i++) {
                                                        FeedbackTable ft = al.get(i);
                                        %>
                                        <tr>
                                            <td><%= ft.getFeedbackID()%></td>
                                            <td><%= ft.getFeedbackEmail()%></td>
                                            <td><%= ft.getFeedbackTitle()%></td>
                                        </tr>
                                        <%
                                                    }
                                                }
                                            }
                                        %>
                                    </table>	
                                </center> 
                            </div>
                            <table style="border:4px solid rgb(255,163,14); margin-left: 800px; margin-top: -350px; ">
                                <tr>
                                    <td>
                                        <h2 style="color: rgb(255,163,14);"><b>Content:</b></h2>
                                    </td>
                                </tr>
                                <tr>
                                    <td>
                                        <textarea rows=10 cols=40 style="  margin-top: 00px;"></textarea>
                                    </td>
                                </tr>
                            </table>
                        </form>
                    </div>
                    <!-- outline:4px solid rgb(255,163,14); outline-offset:20px ; padding: 10px; -->



                    <!-- //typography -->
                    <!-- //product-nav -->

                    <%@include file="Footer.jsp" %>
                    <%@include file="Login.jsp" %>
                    </body>
                    </html>
