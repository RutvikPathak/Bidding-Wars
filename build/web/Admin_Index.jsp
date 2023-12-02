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
    </head>
    <body>
        <style>

            #header
            {
                background: rgb(255,163,13);
                color: white;
                font-weight: bold;
                padding: 10px;
                text-align: center;
            }
            #dates
            {
                background: rgba(255,255,255,0.2);
                color: black;
                padding: 10px;
                font-weight: bold;
                text-align: center;

            }

            td
            {
                padding: 20px; 
            }


        </style>

        <%@ include file="Admin_Menu.jsp"%>
        <div id="header">
            <h1>Report</h1>
        </div>
        <form action="" method="post">
            <div id="dates">
                From:   <input type="date" name="fromdate" required>
                To:     <input type="date" name="todate" required>
                <br/><br/>
                <input type="submit" value="GO" >

            </div>
            <div id="table">
                <center> 
                    <table border=1>
                        <tr style="background:rgb(255,163,13,0.5);">
                            <td>Sr. </td>
                            <td>Product Name </td>
                            <td>Order Date</td>
                            <td>Auction Winner ID</td>
                            <td>Seller </td>
                            <td>Deliverd By</td>
                            <td>Price </td>
                            <td>Status</td>
                        </tr>  
                        <tr>
                            <td>1</td>
                            <td>Antique Statue</td>
                            <td>2020-01-13</td>
                            <td>28</td>
                            <td>29</td>
                            <td>Samwell Taurly</td>
                            <td>20000</td>
                            <td>Done</td>
                        </tr> 
                        <tr>
                            <td>2</td>
                            <td>MITV</td>
                            <td>2020-01-17</td>
                            <td>30</td>
                            <td>29</td>
                            <td>Amit Patel</td>
                            <td>25000</td>
                            <td>Done</td>
                        </tr>
                        <tr>
                            <td>3</td>
                            <td>Dress</td>
                            <td>2020-01-28</td>
                            <td>--</td>
                            <td>29</td>
                            <td>--</td>
                            <td>120</td>
                            <td>Pending...</td>
                        </tr>
                        <tr>
                            <td>4</td>
                            <td>Double Side Bed</td>
                            <td>2020-01-20</td>
                            <td>--</td>
                            <td>29</td>
                            <td>--</td>
                            <td>1200</td>
                            <td>Pending...</td>
                        </tr>
                    </table>
                </center>
            </div>
        </form>

        <%@include file="Footer.jsp" %>
        <%@include file="Admin_Account.jsp" %>
    </body>
</html>