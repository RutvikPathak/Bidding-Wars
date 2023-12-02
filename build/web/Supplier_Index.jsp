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
        <%@ include file="Supplier_Menu.jsp"%>

        <!-- content -->

        <div role="tabpanel" class="tab-pane fade in active bootstrap-tab-text" id="home" aria-labelledby="home-tab" style="margin: 50px;">
            <h5>Todays Suppling Request </h5>
            <div class="bootstrap-tab-text-grids" style="margin:100px;">
                <div class="bootstrap-tab-text-grid">
                    <div class="bootstrap-tab-text-grid-left">

                    </div>
                    <div class="bootstrap-tab-text-grid-right">
                        <form>
                            <table>

                                <tr style="border-bottom: 2px solid #ECECEC;">
                                    <td style="color:grey ; size:20px ;">Notification</td>
                                </tr>

                                <tr>
                                    <td style="padding:50px;"><img src="images/d4.jpg" style="height:90px; width:90px;"></td> 
                                    <td> <a href="#">Apple MacBook Air A1466 13 <br> Intel Core i5 1.6GHz 256GB SSD 8GB 2015 MJVE2LL/A</a> </td>
                                    <td style="padding:50px;">
                                        <button type="submit" style="height:60px; width:60px; border-radius: 10px;"class="acceptbtn"> 
                                            <span class="glyphicon glyphicon-ok" style="font-size:30px;"></span> 
                                        </button>
                                    </td>
                                    <td>
                                        <button type="submit" style="height:60px; width:60px; border-radius: 10px;"class="rejectbtn"> 
                                            <span class="glyphicon glyphicon-remove" style="font-size:30px;"></span> 
                                        </button>
                                    </td>   

                                    </a>
                            </table>
                        </form>

                    </div>
                    <div class="clearfix"> </div>
                </div>

                <div class="add-review">


                </div>
            </div>
        </div>


        <!-- //content -->

        <div class="coupons">
            <div class="container">
                <div class="coupons-grids text-center">
                    <div class="col-md-3 coupons-gd">
                        <h3>Use Your Acount in Simple Way</h3>
                    </div>
                    <div class="col-md-3 coupons-gd">
                        <span class="glyphicon glyphicon-user" aria-hidden="true"></span>
                        <h4>LOGIN TO YOUR ACCOUNT</h4>
                        <p>Login to our website for utilize our services.</p>
                    </div>
                    <div class="col-md-3 coupons-gd">
                        <img src="images/sell.png" style="height:72px; width:72px;"/>
                        <h4>SELL YOUR ITEM</h4>
                        <p>Take a snap and Upload the product then Organize Auction.</p>
                    </div>
                    <div class="col-md-3 coupons-gd">                               
                        <img src="images/hammer.png" style="height:72px; width:72px;" alt=""/>
                        <h4>BID YOUR ITEM</h4>
                        <p>Bid on the item as per price rising criteria.</p>
                    </div>

                    <div class="col-md-3 coupons-gd" style="margin-left: 445px;">
                        <span class="glyphicon glyphicon-credit-card" aria-hidden="true"></span>
                        <h4>MAKE YOUR PAYMENT</h4>
                        <p>Win the item and make payment as per the Final Price.</p>
                    </div>    

                    <div class="col-md-3 coupons-gd">
                        <span class="	fa fa-sticky-note" aria-hidden="true"></span>
                        <h4>GET YOUR BILL</h4>
                        <p>Finally get the revelent details of the item on the Bill .</p>
                    </div>
                    <div class="clearfix" style="padding:0px;"> </div>
                </div>
            </div>
        </div>


        <%@include file="Footer.jsp" %>
        <%@include file="Supplier_Account.jsp" %>





    </body>
</html>
