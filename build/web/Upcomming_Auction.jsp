<%@page import="java.util.List"%>
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
        <%@ include file="User_Menu.jsp"%>

        <!-- content -->
        <%
            if (request.getAttribute("UpcommingProduct") != null) {
                List<Object[]> l = (List<Object[]>) request.getAttribute("UpcommingProduct");
                if (l.size() > 0) {
                    Object[] ob1 = l.get(0);
                    Object[] ob2 = l.get(1);
                    Object[] ob3 = l.get(2);
                    Object[] ob4 = l.get(3);
                    Object[] ob5 = l.get(4);
                    Object[] ob6 = l.get(5);
                    Object[] ob7 = l.get(6);
                    Object[] ob8 = l.get(7);
        %>


        <div class="col-md-7 content-lgrid" style="width:600px; margin-top: 200px;margin-left: 85px;" >
            <div class="col-sm-6 content-img-left text-center" style="width:370px;">
                <div class="content-grid-effect slow-zoom vertical" style="height: 350px;width: 350px;">
                    <div class="img-box"><img src="images/product/<%=ob1[3].toString()%>" alt="image" class="img-responsive zoom-img" style="height: 350px;width: 400px;"></div>
                    <div class="info-box">
                        <div class="info-content simpleCart_shelfItem">
                            <h4><%=ob1[0].toString()%> </h4>
                            <h3 Style="color: white;"><%=ob1[2].toString()%></h3>
                            <span class="separator"></span>
                            <h5 style="color:white;">Start upto</h5> 
                            <p><span class="item_price">Rs. <%=ob1[1].toString()%></span></p>
                            <span class="separator"></span>
                            <a class="item_add hvr-outline-out button2" href="#">Start Bid </a>
                        </div>
                    </div>
                </div>
            </div>



            <div class="clearfix" style="width:150px;"></div>
        </div> 

        <div class="col-md-7 content-lgrid" style="margin-left: 80px; margin-top: 37px;" >
            <div class="col-sm-6 content-img-left text-center" style="width:370px;">
                <div class="content-grid-effect slow-zoom vertical" style="width: 370px;">
                    <div class="img-box"><img src="images/product/<%=ob2[3].toString()%>" alt="image" class="img-responsive zoom-img" style="height: 350px;width: 355xpx;" ></div>
                    <div class="info-box">
                        <div class="info-content simpleCart_shelfItem">
                            <h4><%=ob2[0].toString()%></h4>
                            <h3 Style="color: white;"><%=ob2[2].toString()%></h3>
                            <span class="separator"></span>
                            <h5 style="color:white;">Start upto</h5> 
                            <p><span class="item_price">Rs. <%=ob2[1].toString()%></span></p>
                            <span class="separator"></span>
                            <a class="item_add hvr-outline-out button2" href="#">Start Bid </a>
                        </div>
                    </div>
                </div>
            </div>



            <div class="clearfix" style="width:150px;"></div>
        </div>  

        <div class="col-md-7 content-lgrid" style="margin-left: 80px;margin-top: 40px;" >
            <div class="col-sm-6 content-img-left text-center" style="width: 370px;">
                <div class="content-grid-effect slow-zoom vertical">
                    <div class="img-box"><img src="images/product/<%=ob3[3].toString()%>" alt="image" class="img-responsive zoom-img" style="width: 350px;height: 350px;margin-left: 25px;"></div>
                    <div class="info-box">
                        <div class="info-content simpleCart_shelfItem">
                            <h4><%=ob3[0].toString()%></h4>
                            <h3 Style="color: white;"><%=ob3[2].toString()%></h3>
                            <span class="separator"></span>
                            <h5 style="color:white;">Start upto</h5> 
                            <p><span class="item_price">Rs. <%=ob3[1].toString()%></span></p>
                            <span class="separator"></span>
                            <a class="item_add hvr-outline-out button2" href="#">Start Bid </a>
                        </div>
                    </div>
                </div>
            </div>



            <div class="clearfix" style="width:150px;"></div>
        </div> 

        <div class="col-md-7 content-lgrid" style="margin-top: -1190px;margin-left: 470px;" >
            <div class="col-sm-6 content-img-left text-center" style="width: 370px;">
                <div class="content-grid-effect slow-zoom vertical">
                    <div class="img-box"><img src="images/product/<%=ob4[3].toString()%>" alt="image" class="img-responsive zoom-img" style="height: 350px;width: 350px;"></div>
                    <div class="info-box">
                        <div class="info-content simpleCart_shelfItem">
                            <h4><%=ob4[0].toString()%></h4>
                            <h3 Style="color: white;"><%=ob4[2].toString()%></h3>
                            <span class="separator"></span>
                            <h5 style="color:white;">Start upto</h5> 
                            <p><span class="item_price">Rs. <%=ob4[1].toString()%></span></p>
                            <span class="separator"></span>
                            <a class="item_add hvr-outline-out button2" href="#">Start Bid </a>
                        </div>
                    </div>
                </div>
            </div>



            <div class="clearfix" style="width:150px;"></div>
        </div> 

        <div class="col-md-7 content-lgrid" style="margin-top: -815px;margin-left: 470px;" >
            <div class="col-sm-6 content-img-left text-center" style="width: 360px;">
                <div class="col-sm-6 content-img-right" style="height: 350px;width: 350px;background-color: black;">
                    <h3 style="color:rgb(254,154,14);">Check out our<span style="margin-left: -29px;font-size: 45px;">Upcomming</span> <b>Auctions</b></h3>
                </div>
            </div>



            <div class="clearfix" style="width:150px;"></div>
        </div> 

        <div class="col-md-7 content-lgrid" style="margin-top: -440px;margin-left: 470px;" >
            <div class="col-sm-6 content-img-left text-center" style="width: 360px;">
                <div class="content-grid-effect slow-zoom vertical">
                    <div class="img-box"><img src="images/product/<%=ob5[3].toString()%>" alt="image" class="img-responsive zoom-img" style="height: 350px;width: 350px;"></div>
                    <div class="info-box">
                        <div class="info-content simpleCart_shelfItem">
                            <h4><%=ob5[0].toString()%></h4>
                             <h3 Style="color: white;"><%=ob5[2].toString()%></h3>
                            <span class="separator"></span>
                            <h5 style="color:white;">Start upto</h5> 
                            <p><span class="item_price">Rs. <%=ob5[1].toString()%></span></p>
                            <span class="separator"></span>
                            <a class="item_add hvr-outline-out button2" href="#">Start Bid </a>
                        </div>
                    </div>
                </div>
            </div>



            <div class="clearfix" style="width:150px;"></div>
        </div> 

        <div class="col-md-7 content-lgrid" style="margin-top: -1140px;margin-left: 855px;" >
            <div class="col-sm-6 content-img-left text-center" style="width: 370px;">
                <div class="content-grid-effect slow-zoom vertical">
                    <div class="img-box"><img src="images/product/<%=ob6[3].toString()%>" alt="image" class="img-responsive zoom-img" style="height: 350px;width: 350px;"></div>
                    <div class="info-box">
                        <div class="info-content simpleCart_shelfItem">
                            <h4><%=ob6[0].toString()%></h4>
                            <h3 Style="color: white;"><%=ob6[2].toString()%></h3>
                            <span class="separator"></span>
                            <h5 style="color:white;">Start upto</h5> 
                            <p><span class="item_price">Rs. <%=ob6[1].toString()%></span></p>
                            <span class="separator"></span>
                            <a class="item_add hvr-outline-out button2" href="#">Start Bid </a>
                        </div>
                    </div>
                </div>
            </div>



            <div class="clearfix" style="width:150px;"></div>
        </div> 

        <div class="col-md-7 content-lgrid" style="margin-top: -750px;margin-left: 855px;" >
            <div class="col-sm-6 content-img-left text-center" style="width: 360px;">
                <div class="content-grid-effect slow-zoom vertical">
                    <div class="img-box"><img src="images/product/<%=ob7[3].toString()%>" alt="image" class="img-responsive zoom-img" style="height: 350px;width: 350px;"    ></div>
                    <div class="info-box">
                        <div class="info-content simpleCart_shelfItem">
                            <h4><%=ob7[0].toString()%></h4>
                            <h3 Style="color: white;"><%=ob7[2].toString()%></h3>
                            <span class="separator"></span>
                            <h5 style="color:white;">Start upto</h5> 
                            <p><span class="item_price">Rs. <%=ob7[1].toString()%></span></p>
                            <span class="separator"></span>
                            <a class="item_add hvr-outline-out button2" href="#">Start Bid </a>
                        </div>
                    </div>
                </div>
            </div>



            <div class="clearfix" style="width:150px;"></div>
        </div> 

        <div class="col-md-7 content-lgrid" style="margin-top: -375px;margin-left: 853px;" >
            <div class="col-sm-6 content-img-left text-center" style="width: 370px;">
                <div class="content-grid-effect slow-zoom vertical">
                    <div class="img-box"><img src="images/product/<%=ob8[3].toString()%>" alt="image" class="img-responsive zoom-img"style="height: 350px;width: 350px;"></div>
                    <div class="info-box">
                        <div class="info-content simpleCart_shelfItem">
                            <h4><%=ob8[0].toString()%></h4>
                            <h3 Style="color: white;"><%=ob8[2].toString()%></h3>
                            <span class="separator"></span>
                            <h5 style="color:white;">Start upto</h5> 
                            <p><span class="item_price">Rs. <%=ob8[1].toString()%></span></p>
                            <span class="separator"></span>
                            <a class="item_add hvr-outline-out button2" href="#">Start Bid </a>
                        </div>
                    </div>
                </div>
            </div>



            <div class="clearfix" style="width:150px;"></div>
        </div>  


        <%
                }
            }
        %>



        <div class="new_arrivals"  style="margin-bottom:0px; padding-bottom: 0px;">

        </div>


        <div class="new_arrivals"  style="margin-top:-100px; padding-top:0px;">
            <div class="container">




            </div>
        </div>




        <!-- //content -->








        <%@include file="Footer.jsp" %>






    </body>
</html>