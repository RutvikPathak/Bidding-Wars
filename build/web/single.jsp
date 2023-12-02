<%@page import="java.util.ArrayList"%>
<%@page import="Model.UserTable"%>
<%@page import="Model.UserTable"%>
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
        <title>Smart Shop a Ecommerce Online Shopping Category Flat Bootstrap Responsive Website Template | Single :: w3layouts</title>
        <!-- for-mobile-apps -->
        <meta name="viewport" content="width=device-width, initial-scale=1">
        <meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
        <meta name="keywords" content="Smart Shop Responsive web template, Bootstrap Web Templates, Flat Web Templates, Android Compatible web template, 
              Smartphone Compatible web template, free webdesigns for Nokia, Samsung, LG, SonyEricsson, Motorola web design" />
        <script type="application/x-javascript"> addEventListener("load", function() { setTimeout(hideURLbar, 0); }, false);
            function hideURLbar(){ window.scrollTo(0,1); } </script>
        <!-- //for-mobile-apps -->
        <link href="css/bootstrap.css" rel="stylesheet" type="text/css" media="all" />
        <link rel="stylesheet" href="css/flexslider.css" type="text/css" media="screen" />
        <link href="css/style.css" rel="stylesheet" type="text/css" media="all" />
        <!-- js -->
        <script type="text/javascript" src="js/jquery-2.1.4.min.js"></script>
        <!-- //js -->
        <!-- single -->
        <script src="js/imagezoom.js"></script>
        <script src="js/jquery.flexslider.js"></script>
        <!-- single -->
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

        <!-- Menu -->
        <% if (session.getAttribute("loginId") != null) { %>
        <%@include file="User_Menu.jsp" %>
        <%   } else { %>

        <%@include file="Menu.jsp" %>
        <% } %>



        <!-- single -->
        <div class="single">
            <div class="container">
                <div class="col-md-6 single-right-left animated wow slideInUp animated" data-wow-delay=".5s" style="visibility: visible; animation-delay: 0.5s; animation-name: slideInUp;">
                    <div class="grid images_3_of_2">
                        <div class="flexslider">
                            <!-- FlexSlider -->
                            <script>
                                // Can also be used with $(document).ready()
                                $(window).load(function () {
                                    $('.flexslider').flexslider({
                                        animation: "slide",
                                        controlNav: "thumbnails"
                                    });
                                });
<!-- //FlexSlider-->
                            </script>
                            <!-- Fetch Data-->
                            <%
                                String name, price, description = "";
                                String Category, SubCategory, user, Status;
                                String stime = "", etime = "";
                                String pid = "";
                                String auctionid = "";
                                if (request.getAttribute("singleuser") != null) {
                                    List<Object[]> l = (List<Object[]>) request.getAttribute("singleuser");
                                    if (l.size() > 0) {
                                        Object[] o = l.get(0);
                                        pid = o[0].toString();
                                        session.setAttribute("prid", pid);
                                        name = o[1].toString();
                                        description = o[2].toString();
                                        price = o[3].toString();
                                        Status = o[4].toString();
                                        user = o[5].toString();
                                        Category = o[6].toString();
                                        SubCategory = o[8].toString();
                                        stime = o[9].toString();
                                        etime = o[10].toString();
                                        auctionid = o[11].toString();
                                        session.setAttribute("auctionID", auctionid);
                            %>
                            <!-- //FlexSlider-->  

                            <ul class="slides">
                                <% for (Object[] ob : l) {
                                %>
                                <li data-thumb="images/product/<%=ob[7].toString()%> ">
                                    <div class="thumb-image"> <img src="images/product/<%=ob[7].toString()%>" data-imagezoom="true" class="img-responsive"> </div>
                                </li>
                                <%
                                    }
                                %>

                            </ul>
                            <div class="clearfix"></div>
                        </div>	
                    </div>
                </div>
                <div class="col-md-6 single-right-left simpleCart_shelfItem animated wow slideInRight animated" data-wow-delay=".5s" style="visibility: visible; animation-delay: 0.5s; animation-name: slideInRight;">
                    <h3><%= name%></h3>
                    <p><span class="item_price">Rs. <%=price%>  </span> </p>

                    <div class="Product-Status">
                        <h4>Condition :</h4>
                        <h3> <% if (Status.equals("0")) {
                            %> Used <% } else { %> Brand New   <%  }%>
                        </h3><br>

                        <h4>Uploded by :</h4>
                        <h3> userID :- <%=user%></h3><br>         

                        <h4>Time left :</h4>
                        <h2 id="countdown" ></h2><br>
                        <h3 style="margin-top: -30px;"><%=etime%> </h3><br>


                        <h4>Type :</h4>
                        <h3> <%= Category%></h3><br>
                        <h5 style="margin-top: -30px;"> <%= SubCategory%></h5><br>
                    </div>  
                    <div class="occasion-cart">
                        <a href="startAuction"   class="item_add hvr-outline-out button2">Auction (3)</a>
                    </div>

                </div>
                <div class="clearfix"> </div>

                <div class="bootstrap-tab animated wow slideInUp animated" data-wow-delay=".5s" style="visibility: visible; animation-delay: 0.5s; animation-name: slideInUp;">
                    <div class="bs-example bs-example-tabs" role="tabpanel" data-example-id="togglable-tabs">
                        <ul id="myTab" class="nav nav-tabs" role="tablist">
                            <li role="presentation" class="active"><a href="#" id="home-tab" role="tab" data-toggle="tab" aria-controls="home" aria-expanded="true">Description</a></li>

                        </ul>                      
                        <div class="bootstrap-tab-text-grid">
                            <%=description%>
                            <div class="clearfix"> </div>
                        </div>

                    </div>

                </div>
            </div>
        </div>
    </div>
</div>
<% }
            }%>
<!-- //single -->
<script>

    var deadline = new Date("<%= etime%>").getTime();
    var x = setInterval(function () {
        var now = new Date().getTime();
        var t = deadline - now;
        var days = Math.floor(t / (1000 * 60 * 60 * 24));
        var hours = Math.floor((t % (1000 * 60 * 60 * 24)) / (1000 * 60 * 60));
        var minutes = Math.floor((t % (1000 * 60 * 60)) / (1000 * 60));
        var seconds = Math.floor((t % (1000 * 60)) / 1000);
        document.getElementById("countdown").innerHTML = days + "d "
                + hours + "h " + minutes + "m " + seconds + "s ";
        if (t < 0) {
            clearInterval(x);
            document.getElementById("countdown").innerHTML = "EXPIRED";
        }
    }, 1000);
</script> 

<%@include file="Footer.jsp" %>

</body>
</html>
