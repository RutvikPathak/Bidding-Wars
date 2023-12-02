<%@page import="Model.DeliveryBoyTable"%>
<!--
Author: W3layouts
Author URL: http://w3layouts.com
License: Creative Commons Attribution 3.0 Unported
License URL: http://creativecommons.org/licenses/by/3.0/
-->
<!DOCTYPE html>
<html>
    <head>
        <title>Smart Shop a Ecommerce Online Shopping Category Flat Bootstrap Responsive Website Template | Home :: w3layouts</title>
        <!-- for-mobile-apps -->
        <meta name="viewport" content="width=device-width, initial-scale=1">
        <meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
        <meta name="keywords" content="Smart Shop Responsive web template, Bootstrap Web Templates, Flat Web Templates, Android Compatible web template, 
              Smartphone Compatible web template, free webdesigns for Nokia, Samsung, LG, SonyEricsson, Motorola web design" />
        <script type="application/x-javascript"> addEventListener("load", function() { setTimeout(hideURLbar, 0); }, false);
            function hideURLbar(){ window.scrollTo(0,1); } </script>
        <!-- //for-mobile-apps -->
        <link href="css/bootstrap.css" rel="stylesheet" type="text/css" media="all" />
        <!-- pignose css -->
        <link href="css/pignose.layerslider.css" rel="stylesheet" type="text/css" media="all" />


        <!-- //pignose css -->
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
        <script src="https://kit.fontawesome.com/yourcode.js"></script>
        <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.min.css">
        <style>
            .acceptbtn
            {
                background-color: rgb(263,143,14);
                border-style: none;
                color:white;        
            }

            .rejectbtn
            {
                background-color: rgb(263,143,14);
                border-style: none;
                color:white;        
            }

            .acceptbtn:hover
            {
                background-color: green;
                border-style: none;
                color:white;        
            }

            .rejectbtn:hover
            {
                background-color: #BF0000;
                border-style: none;
                color:white;        
            }
        </style>

    </head>
    <body>
        
        <% if (session.getAttribute("loginId") != null) { %>
        <%@include file="User_Menu.jsp" %>
        <%   } else { %>

        <%@include file="Menu.jsp" %>
        <% } %>
        

        <!-- content -->

        <div role="tabpanel" class="tab-pane fade in active bootstrap-tab-text" id="home" aria-labelledby="home-tab" style="margin: 50px;">
            <h5>Uploaded Product Status </h5>
            <div class="bootstrap-tab-text-grids" style="margin:100px;">
                <div class="bootstrap-tab-text-grid">
                    <div class="bootstrap-tab-text-grid-left">

                    </div>
                    <div class="bootstrap-tab-text-grid-right">
                        <form method="post">
                            <table>

                                <tr style="border-bottom: 2px solid #ECECEC;">
                                    <td style="color:grey ; padding:30px; size:20px ;">P_ID.</td>
                                    <td style="color:grey ; padding:30px; size:20px ;">Product Image</td>
                                    <td style="color:grey ; padding:30px; size:20px ;">Product Name</td>
                                    <td style="color:grey ; padding:30px; size:20px ;">Starting Price</td>
                                    <td style="color:grey ; padding:30px; size:20px ;">Current Price</td>
                                    <td style="color:grey ; padding:30px; size:20px ;">No. of Bidders</td>
                                    <td style="color:grey ; padding:30px; size:20px ;">Time</td>
                                </tr>


                                <tr>
                                    <td style=" padding:30px; size:20px ;">1. </td>
                                    <td style=" padding:30px; size:20px ;"><img src="images/d4.jpg" style="height:70px; width:70px;"></td>
                                    <td style=" padding:30px; size:20px ;">Apple MacBook Air A1466 13 Intel Core i5 </td>
                                    <td style=" padding:30px; size:20px ;">60,000</td>
                                    <td style=" padding:30px; size:20px ; color:green;">75,000</td>
                                    <td style="padding:30px;">10</td>
                                    <td style="padding:30px;">28-Nov-2019 12:29:31.973</td>
                                </tr>

                                <tr>
                                    <td style=" padding:30px; size:20px ;">2. </td>
                                    <td style=" padding:30px; size:20px ;"><img src="images/d5.jpg" style="height:70px; width:70px;"></td>
                                    <td style=" padding:30px; size:20px ;">iPhone 8+ 64GB  </td>
                                    <td style=" padding:30px; size:20px ;">25,000</td>
                                    <td style=" padding:30px; size:20px ; color:green;">35,000</td>
                                    <td style="padding:30px;">5</td>
                                    <td style="padding:30px;">Sold</td>
                                </tr>

                            </table>
                        </form>

                    </div>
                    <div class="clearfix"> </div>
                </div>

                <div class="add-review">


                </div>
            </div>
        </div>



        <%@include file="Footer.jsp" %>
        <% if (session.getAttribute("loginId") != null) {%>
        <%@include file="User_Account.jsp" %>
        <%   } else { %>

        <%@include file="Login.jsp" %>
        <% }%>
        





    </body>
</html>
