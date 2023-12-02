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
        function fetchSubCat(){
            var cat = document.getElementById("cat").value;
            var url = "fetchSubcategory?cat=" + cat;
            
            var xmlHttp = new XMLHttpRequest();
            xmlHttp.onreadystatechange = display();
            function display(){
                if(xmlHttp.readyState === 4)
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

    
    <%@include file="Admin_Menu.jsp" %>
    <%@include file="Admin_Account.jsp" %>
<!-- banner -->
<div class="page-head" style="background-image: url(images/background.jpg); background-repeat:  no-repeat; background-position:center; background-size: cover;">
	<div class="container" style=" width: 100%;  background: rgba(0, 0, 0, 0.58);">
            <h3 style="  font-weight: bold; text-align: center; text-transform: uppercase;
    letter-spacing: 6px;text-align: center;">Supplier Registration</h3>
	</div>


<div>
    <div>
   
      
        <form action="SupplierRegestration" method="post" enctype="multipart/form-data">
                    <center>
                        <table border="0" style="margin-top: 80px; background-color:white;">
                                                       
                        <tr>
                             <td style="padding: 30px;">First Name &nbsp;&nbsp;        </td>
                             <td style="padding: 30px;">: </td>
                             <td style="padding: 30px;">
                                 <input type="textbox" name="sfname" >
                             </td>
                         </tr>                       
                        <tr>
                            <td style="padding: 30px;">Last Name &nbsp;&nbsp;          </td>
                            <td style="padding: 30px;">: </td> 
                            <td style="padding: 30px;">
                                <input type="textbox" name="slname" >
                            </td>                                
                        </tr>                      
                        <tr>
                            <td style="padding: 30px;">Contact &nbsp;&nbsp;            </td>
                            <td style="padding: 30px;">: </td>
                            <td style="padding: 30px;">
                               <input type="textbox" name="scontact" >
                            </td>
                        </tr>                      
                        <tr>
                            <td style="padding: 30px;">E-mail &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;</td>
                            <td style="padding: 30px;">: </td>
                            <td style="padding: 30px;">
                               <input type="textbox" name="semail" >
                            </td>
                        </tr>                      
                        <tr>
                            <td style="padding: 30px;"> Address &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;</td>
                            <td style="padding: 30px;">: </td>
                            <td style="padding: 30px;">
                                <textarea name="saddress" rows="5" cols="30" style="font-size:20px;"></textarea>
                            </td>
                        </tr>                       
                        <tr>
                            <td style="padding: 30px;">Profile Pic &nbsp;&nbsp;        </td>
                            <td style="padding: 30px;">: </td>
                            <td style="padding: 30px;">
                                <input type="file" name="photo">
                            </td>
                        </tr>                       
                        <tr>
                            <td style="padding: 30px;"> Password &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;</td>
                            <td style="padding: 30px;">: </td>
                            <td style="padding: 30px;">
                                <input type="text" name="spassword">
                            </td>
                        </tr>                        
                        <tr>
                            <td style="padding: 30px;"> Confirm Password &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;</td>
                            <td style="padding: 30px;">: </td>
                            <td style="padding: 30px;">
                                <input type="text">
                            </td>
                        </tr>
                                           
                        <tr>
                            <td> </td>
                            <td colspan="2" style="padding: 30px;">
                                <input type="submit" name="submit" class="mybutton" value="Add" style="background-color:#FF971A;"> &nbsp;&nbsp;&nbsp;&nbsp;
                                <input type="reset" name="reset" class="mybutton" value="Reset" style="background-color:#FF971A;"></td>
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
