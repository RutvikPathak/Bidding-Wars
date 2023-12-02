<%@page import="Model.CategoryTable"%>
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
        <script type="text/javascript">
            function fetchSubCat() {
                var cat = document.getElementById("cat").value;
                var url = "fetchSubcategory?cat=" + cat;

                var xmlHttp = new XMLHttpRequest();
                xmlHttp.onreadystatechange = function () {
                    if (xmlHttp.readyState === 4)
                    {
                        document.getElementById("subcat").innerHTML = xmlHttp.responseText;
                    }
                };
                xmlHttp.open("GET", url, true); //get=method, filename , true = asynchronus processz
                xmlHttp.send();
            }
        </script>
        <style>
            .mybutton
            {
                text-align: center;
                padding: 10px 22px;
                color: #fff;
                font-size: 18px;
                text-transform: uppercase;  
            }

            .mybutton:hover
            {
                outline:4px solid rgb(254,163,14);
                outline-offset:4px ;


            }

        </style>


    </head>
    <body>


        <%@include file="User_Menu.jsp" %>
        <%@include file="User_Account.jsp" %>
        <!-- banner -->
        <div class="page-head" style="background-image: url(images/background.jpg); background-repeat:  no-repeat; background-position:center; background-size: cover;">
            <div class="container" style=" width: 100%;  background: rgba(0, 0, 0, 0.58);">
                <h3 style="  font-weight: bold; text-align: center; text-transform: uppercase;
                    letter-spacing: 6px;text-align: center;">Uploading Product</h3>
            </div>


            <div>
                <div>


                    <form action="AddProduct" method="post" enctype="multipart/form-data">
                        <center>
                            <table border="0" style="margin-top: 80px; background-color:white;">

                                <tr>
                                    <td style="padding-left: 30px; padding-right: 30px; padding-top: 30px; padding-bottom: 30px;">Product Name &nbsp;&nbsp;        </td>
                                    <td style="padding-left: 30px; padding-right: 30px; padding-top: 30px; padding-bottom: 30px;">: </td>
                                    <td style="padding-left: 30px; padding-right: 30px; padding-top: 30px; padding-bottom: 30px;">
                                        <input type="textbox" name="productname" ></td>
                                </tr>

                                <tr>
                                    <td style="padding-left: 30px; padding-right: 30px; padding-top: 30px; padding-bottom: 30px;">Product Status &nbsp;&nbsp;        </td>
                                    <td style="padding-left: 30px; padding-right: 30px; padding-top: 30px; padding-bottom: 30px;">: </td> 
                                    <td style="padding-left: 30px; padding-right: 30px; padding-top: 30px; padding-bottom: 30px;">&nbsp;&nbsp;&nbsp;&nbsp;
                                        <input type="radio" name="status" value="0">Used &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                                        <input type="radio" name="status" value="1">Brand New
                                </tr>

                                <tr>
                                    <td style="padding-left: 30px; padding-right: 30px; padding-top: 30px; padding-bottom: 30px;">Category &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;</td>
                                    <td style="padding-left: 30px; padding-right: 30px; padding-top: 30px; padding-bottom: 30px;">: </td>
                                    <td style="padding-left: 30px; padding-right: 30px; padding-top: 30px; padding-bottom: 30px;">&nbsp;&nbsp;
                                        <select id="cat" name="cat" onchange="fetchSubCat()" class="frm-field required">
                                            <option>Choose</option>

                                            <% if (request.getAttribute("categories") != null) {
                                                    request.getAttribute("categories");
                                                    ArrayList<CategoryTable> al = (ArrayList<CategoryTable>) request.getAttribute("categories");
                                                    if (al.size() > 0)
                                                        for (int i = 0; i < al.size(); i++) {
                                                            CategoryTable c = al.get(i);
                                            %>
                                            <option value="<%= c.getCategoryID()%>"><%= c.getCategoryName()%>
                                            </option> 
                                            <%
                                                        }

                                                }
                                            %>

                                        </select>
                                    </td>
                                </tr>

                                <tr>
                                    <td style="padding-left: 30px; padding-right: 30px; padding-top: 30px; padding-bottom: 30px;">Sub-Category &nbsp;&nbsp;&nbsp;&nbsp;</td>
                                    <td style="padding-left: 30px; padding-right: 30px; padding-top: 30px; padding-bottom: 30px;">: </td>
                                    <td style="padding-left: 30px; padding-right: 30px; padding-top: 30px; padding-bottom: 30px;">&nbsp;&nbsp;

                                        <select id="subcat" name="subcat"  class="frm-field required">

                                        </select> </td> 
                                </tr>

                                <tr>
                                    <td style="padding-left: 30px; padding-right: 30px; padding-top: 30px; padding-bottom: 30px;"> Description &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;</td>
                                    <td style="padding-left: 30px; padding-right: 30px; padding-top: 30px; padding-bottom: 30px;">: </td>
                                    <td style="padding-left: 30px; padding-right: 30px; padding-top: 30px; padding-bottom: 30px;">&nbsp;&nbsp;
                                        <textarea rows=10 cols=40 name="description" style="font-size:20px;"></textarea></td>
                                </tr>
                                
                                <tr>
                                    <td style="padding-left: 30px; padding-right: 30px; padding-top: 30px; padding-bottom: 30px;"> Time Limit of Auction &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;</td>
                                    <td style="padding-left: 30px; padding-right: 30px; padding-top: 30px; padding-bottom: 30px;">: </td>
                                    <td style="padding-left: 30px; padding-right: 30px; padding-top: 30px; padding-bottom: 30px;">&nbsp;&nbsp;
                                        <input type="datetime-local" name="stime" style="font-size:20px;"> to 
                                        <input type="datetime-local" name="etime" style="font-size:20px;">
                                        
                                    </td>
                                </tr>

                                <tr>   

                                    <td style="padding: 30px; background-color:rgba(256,134,13,0.5);" colspan="3" >Product Image &nbsp;&nbsp;
                                        <input type="file" name="image">
                                        <input type="file" name="image" style="margin-left:300px;margin-top:-35px;">
                                        <input type="file" name="image">
                                        <input type="file" name="image" style="margin-left:300px;margin-top:-35px;">
                                    </td> 
                                </tr>

                                <tr>
                                    <td style="padding-left: 30px; padding-right: 30px; padding-top: 30px; padding-bottom: 30px;">Product Price &nbsp;&nbsp;        </td>
                                    <td style="padding-left: 30px; padding-right: 30px; padding-top: 30px; padding-bottom: 30px;">: </td>
                                    <td style="padding-left: 30px; padding-right: 30px; padding-top: 30px; padding-bottom: 30px;">Rs.
                                        <input type="text" name="price" size="10px"><br></td>
                                </tr>


                                <tr>
                                    <td style="padding-left: 30px; padding-right: 30px; padding-top: 30px; padding-bottom: 30px;"> <input type="reset" name="reset" class="mybutton" value="Reset" style="background-color:#FF971A;"></td>
                                    <td colspan="2" style="padding-left: 30px; padding-right: 30px; padding-top: 30px; padding-bottom: 30px;"><input type="submit" name="submit" class="mybutton" value="Upload" style="background-color:#FF971A;"> &nbsp;&nbsp;&nbsp;&nbsp; </td>
                                </tr>


                            </table>
                        </center>
                    </form>


                </div>
            </div>
            <div><br><br><br></div>
        </div>




        <%@include file="Footer.jsp" %>
    </body>
</html>
