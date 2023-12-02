<%@page import="java.util.List"%>
<%@page import="Model.ProductTable"%>
<!--
Author: W3layouts
Author URL: http://w3layouts.com
License: Creative Commons Attribution 3.0 Unported
License URL: http://creativecommons.org/licenses/by/3.0/
-->
<!DOCTYPE html>
<html>
    <head>
        <title>Smart Shop a Ecommerce Online Shopping Category Flat Bootstrap Responsive Website Template | Mens :: w3layouts</title>
        <!-- for-mobile-apps -->
        <meta name="viewport" content="width=device-width, initial-scale=1">
        <meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
        <meta name="keywords" content="Smart Shop Responsive web template, Bootstrap Web Templates, Flat Web Templates, Android Compatible web template, 
              Smartphone Compatible web template, free webdesigns for Nokia, Samsung, LG, SonyEricsson, Motorola web design" />
        <script type="application/x-javascript"> addEventListener("load", function() { setTimeout(hideURLbar, 0); }, false);
            function hideURLbar(){ window.scrollTo(0,1); } </script>
        <!-- //for-mobile-apps -->
        <link href="css/bootstrap.css" rel="stylesheet" type="text/css" media="all" />
        <link rel="stylesheet" type="text/css" href="css/jquery-ui.css">
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
        <%   } else { %>

        <%@include file="Menu.jsp" %>
        <% }%>




        <div class="page-head" style="background: url(<%= request.getAttribute("imgurl")%>); background-repeat:  no-repeat; background-position:center; background-size: cover;">
            <div class="container" style=" width: 100%;  background: rgba(0, 0, 0, 0.58);">
                <h3 style="  font-weight: bold; text-align: center; text-transform: uppercase;
                    letter-spacing: 6px;text-align: center;"><%= request.getAttribute("pnm")%></h3>
            </div>
        </div>

        <!-- //banner -->
        <!-- mens -->
        <div class="men-wear">
            <div class="container">
                <div class="col-md-4 products-left">

                    <div class="css-treeview">
                        <h4>Categories</h4>
                        <ul class="tree-list-pad">
                            <li><input type="checkbox" checked="checked" id="item-0" /><label for="item-0">Antique & Collectables</label>
                                
                            </li>
                            <li><input type="checkbox" id="item-1"  /><label for="item-1">Electronics</label>
                                <ul>
                                    <li><input type="checkbox" checked="checked" id="item-1-0" /><label for="item-1-0">Laptops & Computers</label>
                                    </li>
                                    <li><input type="checkbox" checked="checked" id="item-1-0" /><label for="item-1-0">Mobiles & Tablets</label>
                                    </li>
                                    <li><input type="checkbox" checked="checked" id="item-1-0" /><label for="item-1-0">Home Applience</label>
                                    </li>
                                </ul>
                            </li>
                            <li><input type="checkbox"  id="item-2" /><label for="item-2">Fashion & Wearables</label>
                                <ul>
                                    <li><input type="checkbox"  id="item-2-0" /><label for="item-2-0">Clothing</label>
                                    </li>
                                    <li><input type="checkbox" id="item-2-1" /><label for="item-2-1">Watches</label>
                                    </li>
                                    <li><input type="checkbox" id="item-2-2" /><label for="item-2-2">Bags</label>
                                    </li>
                                    <li><input type="checkbox" id="item-2-2" /><label for="item-2-2">Shoes</label>
                                    </li>
                                </ul>
                            </li>

                            <li><input type="checkbox"  id="item-3" /><label for="item-3"><span></span>Furniture</label>
                                <ul>
                                    <li><input type="checkbox" id="item-3-0" /><label for="item-3-0">Bed </label>

                                    </li>
                                    <li><input type="checkbox"  id="item-3-1" /><label for="item-3-1">Table & Chairs</label>

                                    </li>
                                    <li><input type="checkbox"  id="item-3-2" /><label for="item-3-2">Sofa</label>	
                                    </li>
                                    <li><input type="checkbox" id="item-2-2" /><label for="item-2-2">Recliners</label>
                                    </li>
                                </ul>
                            </li>
                            <li><input type="checkbox"  id="item-4" /><label for="item-4"><span></span>House & Apartments</label>
                                <ul>
                                    <li><input type="checkbox" id="item-4-0" /><label for="item-4-0">Bungalow </label>
                                    </li>
                                    <li><input type="checkbox"  id="item-4-1" /><label for="item-4-1">Tenement </label>
                                    </li>
                                    <li><input type="checkbox"  id="item-4-2" /><label for="item-4-1">Flats </label>
                                    </li>
                                    <li><input type="checkbox"  id="item-4-3" /><label for="item-4-1">Appartments </label>
                                    </li>	
                                </ul>
                            </li>

                            <li><input type="checkbox"  id="item-5" /><label for="item-5"><span></span>Jewellery</label>
                                <ul>
                                    <li><input type="checkbox" id="item-5-0" /><label for="item-5-0">Handicraft Jewellery</label>

                                    </li>
                                    <li><input type="checkbox"  id="item-5-1" /><label for="item-5-1">Vintage Jewellery</label>	
                                    </li>
                                </ul>


                            <li><input type="checkbox"   id="item-6" /><label for="item-6"><span></span>Stock</label>
                                <ul>
                                    <li><input type="checkbox" id="item-6-0" /><label for="item-6-0" >Professional & Commercial <p style="text-align: center;">Business Startup</p></label>
                                    </li>
                                    <li><input type="checkbox"  id="item-6-1" /><label for="item-6-1"> Chemical Elements, Metals &<p style="text-align: center;">  Minerals</p></label>
                                    </li>
                                    <li><input type="checkbox"  id="item-6-2" /><label for="item-6-2">Machinery & Equipment</label>
                                    </li>
                                    <li><input type="checkbox"  id="item-6-2" /><label for="item-6-2">Lumber & Other Construction<p style="text-align: center;"> Materials</label>
                                    </li>
                                </ul>
                            </li>
                            </li>
                            <li><input type="checkbox"  id="item-7" /><label for="item-7"><span></span>vehicles</label>
                                <ul>
                                    <li><input type="checkbox" id="item-7-0" /><label for="item-7-0">SUV</label>
                                    </li>
                                    <li><input type="checkbox"  id="item-7-1" /><label for="item-7-1">Sports</label>
                                    </li>
                                    <li><input type="checkbox"  id="item-7-2" /><label for="item-7-2">Transport</label>
                                    </li>
                                    <li><input type="checkbox"  id="item-7-2" /><label for="item-7-2">Luxury</label>
                                    </li>

                                </ul>
                            </li>
                            <li>

                            </li>
                    </div>

                    <div class="clearfix"></div>
                </div>

                <div class="col-md-6 header-middle" style="">
                    <form>
                        <div class="search">
                            <input type="search" value="Search" onfocus="this.value = '';" onblur="if (this.value == '') {
                                        this.value = 'Search';
                                    }" required="">
                        </div>
                        <div class="section_room">
                            <select id="country" onchange="change_country(this.value)" class="frm-field required">
                                <option value="">All categories</option>
                                <option value="null">Antique & Collectibles</option>     
                                <option value="AX">Electronics</option>
                                <option value="AX">Fashion & Wearables</option>
                                <option value="AX">Furniture</option>
                                <option value="AX">House & Apartments</option>
                                <option value="AX"> Jewellery</option>
                                <option value="AX"> Stock</option>
                                <option value="AX"> Vehicles</option>
                            </select>
                        </div>
                        <div class="sear-sub">
                            <input type="submit" value=" ">
                        </div>
                        <div class="clearfix"></div>
                    </form>
                </div>
<style>
    
    .tdsingle
    {
        color:white; background: black; text-align: center;
    }
    .tdsingle:hover
    {
        color:white; background: rgb(255,163,13); text-align: center;
    }
    </style>
                <div class="col-md-8 products-right">
                    
                    <div class="sort-grid">
                        <div class="sorting">
                            <table width="800px" style="padding-top: 10px; padding-bottom: 10px ; color:white; background: black; text-align: center;">
                                <tr>
                                    <td class="tdsingle">
                                        Art & Painting
                                    </td><td class="tdsingle">
                                        Ancient Coins & Paper Money
                                    </td><td class="tdsingle">
                                        Memorable Items
                                    </td><td class="tdsingle">
                                        Poetry & Status
                                    </td>
                                </tr>
                            </table>
                            
                        </div>



                        <div class="clearfix"></div>
                    </div>
                    <div class="men-wear-top">
                        <script src="js/responsiveslides.min.js"></script>
                        <script>
                                // You can also use "$(window).load(function() {"
                                $(function () {
                                    // Slideshow 4
                                    $("#slider3").responsiveSlides({
                                        auto: true,
                                        pager: true,
                                        nav: false,
                                        speed: 500,
                                        namespace: "callbacks",
                                        before: function () {
                                            $('.events').append("<li>before event fired.</li>");
                                        },
                                        after: function () {
                                            $('.events').append("<li>after event fired.</li>");
                                        }
                                    });
                                });
                        </script>
                        <% if (request.getAttribute("Products") != null) {
                                List<Object[]> l = (List<Object[]>) request.getAttribute("Products");
                                for (Object[] ob : l) {

                        %>



                        <div class="col-md-4 product-men no-pad-men">
                            <div class="men-pro-item simpleCart_shelfItem">
                                <div class="men-thumb-item">
                                    <img src="images/product/<%= ob[3].toString()%>" style="height:260px;width:260px; margin-left: -18px;" alt="" class="pro-image-front">
                                    <img src="images/product/<%= ob[3].toString()%>"  alt="" class="pro-image-back">
                                    <div class="men-cart-pro">
                                        <div class="inner-men-cart-pro">
                                            <a href="single.jsp" class="link-product-add-cart">Quick View</a>
                                        </div>
                                    </div>
                                    <span class="product-new-top">New</span>

                                </div>
                                <div class="item-info-product ">
                                    <h4><a href="single.jsp"><%= ob[1].toString()%></a></h4>
                                    <div class="info-product-price">
                                        <span class="item_price">Rs. <%= ob[2].toString()%></span>
                                    </div>
                                    <a href="fetchsingle?prid=<%= ob[0].toString()%>" class="item_add single-item hvr-outline-out button2">Start Bid</a>									
                                </div>
                            </div>
                        </div>


                        <% }
                            }
                        %>                                    


                    </div>
                    <div class="pagination-grid text-right">
                        <ul class="pagination paging">
                            <li><a href="#" aria-label="Previous"><span aria-hidden="true">«</span></a></li>
                            <li class="active"><a href="#">1<span class="sr-only">(current)</span></a></li>
                            <li><a href="#">2</a></li>
                            <li><a href="#">3</a></li>
                            <li><a href="#">4</a></li>
                            <li><a href="#">5</a></li>
                            <li><a href="#" aria-label="Next"><span aria-hidden="true">»</span></a></li>
                        </ul>
                    </div>
                </div>
            </div>	
            <!-- //mens -->


            <%@include file="Footer.jsp" %>
            <% if (session.getAttribute("loginId") != null) {%>
            <%@include file="User_Account.jsp" %>
            <%   } else { %>

            <%@include file="Login.jsp" %>
            <% }%>

    </body>
</html>
