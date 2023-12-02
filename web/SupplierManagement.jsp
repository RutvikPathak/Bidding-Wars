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
        <%@ include file="Admin_Menu.jsp"%>

        <!-- content -->

        <div role="tabpanel" class="tab-pane fade in active bootstrap-tab-text" id="home" aria-labelledby="home-tab" style="margin: 50px;">
            <h5>Supplier Accounts </h5>
            <div class="bootstrap-tab-text-grids" style="margin:100px;">
                <div class="bootstrap-tab-text-grid">
                    <div class="bootstrap-tab-text-grid-left">

                    </div>
                    <div class="bootstrap-tab-text-grid-right">
                        <form method="post">
                            <% if (request.getAttribute("sup") != null) {
                                    List<Object[]> l = (List<Object[]>) request.getAttribute("sup");
                                    for (Object[] ob : l) {

                            %>
                            Total Number of Supplier :  
                            <input type="text" name="usercounter" value="<%= ob[0].toString()%>" style="margin:30px; border-style:none;">

                            <%
                                    }
                                }
                            %>
                            <input type="search" value="Search" style="width:500px; border:none; height:50px;" onfocus="this.value = '';" onblur="if (this.value == '') {
                                        this.value = 'Search';
                                    }" required="">



                            <button type="submit" style="width:50px; height:50px; background-color:rgb(263,143,14); color:white; border:none;">
                                <span class="glyphicon glyphicon-search" style="font-size:30px;"></span>
                            </button> 


                            <table>

                                <tr style="border-bottom: 2px solid #ECECEC;">
                                    <td style="color:grey ; padding:30px; size:20px ;">S_ID.</td>
                                    <td style="color:grey ; padding:30px; size:20px ;">Dp</td>
                                    <td style="color:grey ; padding:30px; size:20px ;">Supplier Name</td>
                                    <td style="color:grey ; padding:30px; size:20px ;">Address</td>
                                    <td style="color:grey ; padding:30px; size:20px ;">Contact</td>
                                    <td style="color:grey ; padding:30px; size:20px ;">Function</td>
                                </tr>



                                <% if (request.getAttribute("supplier") != null) {
                                        ArrayList<DeliveryBoyTable> al = (ArrayList<DeliveryBoyTable>) request.getAttribute("supplier");
                                        if (al.size() > 0) {
                                            for (int i = 0; i < al.size(); i++) {
                                                DeliveryBoyTable db = al.get(i);
                                %>

                                <tr>
                                    <td style=" padding:30px; size:20px ;"><%= db.getDeliveryBoyID()%>                    </td>
                                    <td style=" padding:30px; size:20px ;"><img src="images/supplier/<%= db.getDeliveryboyProfilePic()%>" style="height:30px; width:30px;"> </td>
                                    <td style=" padding:30px; size:20px ;"><%= db.getDeliveryBoyFirstName()%> <%= db.getDeliveryBoyLastName()%></td>
                                    <td style=" padding:30px; size:20px ;"><%= db.getDeliveryBoyAddress()%>               </td>
                                    <td style=" padding:30px; size:20px ;"><%= db.getDeliveryBoyContact()%>               </td>
                                    <td style="padding:30px;"> 
                                        <button type="submit" style="height:40px; width:40px; border-radius: 10px;"class="rejectbtn"> 
                                            <span class="glyphicon glyphicon-remove" style="font-size:20px; font-weight:none; "></span> 
                                        </button> 
                                    </td>
                                </tr>
                                <%
                                            }
                                        }
                                    }
                                %>

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




        <%@include file="Footer.jsp" %>
        <%@include file="Admin_Account.jsp" %>





    </body>
</html>
