<style>
* {box-sizing: border-box;}
body {font-family: Verdana, sans-serif;}
.mySlides {display: none;}
img {vertical-align: middle;}

/* Slideshow container */
.slideshow-container {
  max-width: 1000px;
  position: relative;
  margin: auto;
}

/* Caption text */
.text {
  color: #f2f2f2;
  font-size: 15px;
  padding: 8px 12px;
  position: absolute;
  bottom: 8px;
  width: 100%;
  text-align: center;
}

/* Number text (1/3 etc) */
.numbertext {
  color: #f2f2f2;
  font-size: 12px;
  padding: 8px 12px;
  position: absolute;
  top: 0;
}

/* The dots/bullets/indicators */
.dot {
  height: 5px;
  width: 5px;
  margin: 0 2px;
  background-color: #bbb;
  border-radius: 50%;
  display: inline-block;
  transition: background-color 0.6s ease;
}

.active {
  background-color: black;
}

/* Fading animation */
.fade {
  -webkit-animation-name: fade;
  -webkit-animation-duration: 1.5s;
  animation-name: fade;
  animation-duration: 4.5s;
}

@-webkit-keyframes fade {
  0% {opacity: .4} 
  40% {opacity: 1}
  80% {opacity: 1}
  100% {opacity: 1}
}

@keyframes fade {
  0% {opacity: .4}
  40% {opacity: 1}
  80% {opacity: 1}
  
  100% {opacity: 1}
}

/* On smaller screens, decrease text size */
@media only screen and (max-width: 300px) {
  .text {font-size: 11px}
}
</style>


<script>
function stopRunning()
{
document.getElementById('animation').stop();
setInterval("startRunning()", 5000);
}
function startRunning()
{
document.getElementById('animation').start();
setInterval("stopRunning()", 10000);
}
</script>






<!-- header -->
<div class="header">
    <div class="container">
        <ul>

            <li><span class="glyphicon glyphicon-envelope" aria-hidden="true"></span><a href="mailto:info@example.com">info@example.com</a></li>
        </ul>
    </div>
</div>
<!-- //header -->
<!-- header-bot -->
<div class="header-bot">
    <div class="container">
        <div class="col-md-3 header-left">
            <h1><a href="index.jsp"><img src="images/logo.png"></a></h1>
        </div>
        <div class="col-md-6 header-middle">
            <form>
                <div class="search">
                    <input type="search" value="Search" onfocus="this.value = '';" onblur="if (this.value == '') {
                                this.value = 'Search';
                            }" required="">
                </div>
                <div class="section_room">
                    <select id="country" onchange="change_country(this.value)" class="frm-field required">
                        <option value="null">All categories</option>
                        <option value="null">Antique & Collectibles</option>     
                        <option value="AX">Electronics</option>
                        <option value="AX">Fashion</option>
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
        <div class="col-md-3 header-right footer-bottom">
            <ul>
                <li><a href="#" class="use1" data-toggle="modal" data-target="#myModal4"><span>Login</span></a>

                </li>
                <li><a class="fb" href="#"></a></li>
                <li><a class="twi" href="#"></a></li>
                <li><a class="insta" href="#"></a></li>
                <li><a class="you" href="#"></a></li>
            </ul>
        </div>
        <div class="clearfix"></div>
    </div>
</div>
<!-- //header-bot -->
<!-- banner -->
<div class="ban-top">
    <div class="container">
        <div class="top_nav_left">
            <nav class="navbar navbar-default">
                <div class="container-fluid">
                    <!-- Brand and toggle get grouped for better mobile display -->
                    <div class="navbar-header">
                        <button type="button" class="navbar-toggle collapsed" data-toggle="collapse" data-target="#bs-example-navbar-collapse-1" aria-expanded="false">
                            <span class="sr-only">Toggle navigation</span>
                            <span class="icon-bar"></span>
                            <span class="icon-bar"></span>
                            <span class="icon-bar"></span>
                        </button>
                    </div>
                    <!-- Collect the nav links, forms, and other content for toggling -->
                    <div class="collapse navbar-collapse menu--shylock" id="bs-example-navbar-collapse-1">
                        <ul class="nav navbar-nav menu__list">
                            <li class="active menu__item menu__item--current"><a class="menu__link" href="index.jsp">Home <span class="sr-only">(current)</span></a></li>
                            <li class="dropdown menu__item">
                                <a href="#" class="dropdown-toggle menu__link" data-toggle="dropdown" role="button" aria-haspopup="true" aria-expanded="false">Product <span class="caret"></span></a>
                                <ul class="dropdown-menu multi-column columns-3">
                                    <div class="row">
                                        <div class="col-sm-6 multi-gd-img1 multi-gd-text ">






<!-- Scrape --!>
<div class="slideshow-container">
<div class="mySlides fade">
  <div class="numbertext">1 / 3</div>
  <img src="images/woo1.jpg" style="width:100%">
  <div class="text">Caption Text</div>
</div>

<div class="mySlides fade">
  <div class="numbertext">2 / 3</div>
  <img src="images/woo1.jpg" style="width:100%">
  <div class="text">Caption Two</div>
</div>

<div class="mySlides fade">
  <div class="numbertext">3 / 3</div>
  <img src="images/woo1.jpg" style="width:100%">
  <div class="text">Caption Three</div>
</div>
                                                
<div class="mySlides fade">
  <div class="numbertext">3 / 3</div>
  <img src="images/woo1.jpg" style="width:100%">
  <div class="text">Caption Three</div>
</div>
                                                
<div class="mySlides fade">
  <div class="numbertext">3 / 3</div>
  <img src="images/woo1.jpg" style="width:100%">
  <div class="text">Caption Three</div>
</div>
                                                
<div class="mySlides fade">
  <div class="numbertext">3 / 3</div>
  <img src="images/woo1.jpg" style="width:100%">
  <div class="text">Caption Three</div>
</div>
                                                
<div class="mySlides fade">
  <div class="numbertext">3 / 3</div>
  <img src="images/woo1.jpg" style="width:100%">
  <div class="text">Caption Three</div>
</div>
                                                
<div class="mySlides fade">
  <div class="numbertext">3 / 3</div>
  <img src="images/.jpg" style="width:100>
  <div class="text">Caption Three</div>
</div>
                                            
<div class="mySlides fade">
  <div class="numbertext">3 / 3</div>
  <img src="images/woo1.jpg" style="width:100%">
  <div class="text">Caption Three</div>
</div>

</div>

<br>

<div style="text-align:center">
  <span class="dot"></span> 
  <span class="dot"></span> 
  <span class="dot"></span> 
  <span class="dot"></span> 
  <span class="dot"></span> 
  <span class="dot"></span> 
  <span class="dot"></span> 
  <span class="dot"></span> 
  <span class="dot"></span> 
</div>


                                            <script>
                                                var slideIndex = 0;
                                                showSlides();

                                                function showSlides() {
                                                    var i;
                                                    var slides = document.getElementsByClassName("mySlides");
                                                    var dots = document.getElementsByClassName("dot");
                                                    for (i = 0; i < slides.length; i++) {
                                                        slides[i].style.display = "none";
                                                    }
                                                    slideIndex++;
                                                    if (slideIndex > slides.length) {
                                                        slideIndex = 1
                                                    }
                                                    for (i = 0; i < dots.length; i++) {
                                                        dots[i].className = dots[i].className.replace(" active", "");
                                                    }
                                                    slides[slideIndex - 1].style.display = "block";
                                                    dots[slideIndex - 1].className += " active";
                                                    setTimeout(showSlides, 5000); // Change image every 2 seconds
                                                }
                                            </script>




<!-- // Scrape -->









                                        </div>

                                        <div class="col-sm-3 multi-gd-img">
                                            <ul class="multi-column-dropdown">

                                                <li><a href="mens.jsp">Antique & Collectibles</a></li>
                                                <li><a href="mens.jsp">Electronics</a></li>
                                                <li><a href="Fashion.jsp">Fashion & Wearables</a></li>
                                                <li><a href="mens.jsp">Furniture</a></li>
                                                <li><a href="mens.jsp">Home & Garden Accessories</a></li>
                                            </ul>
                                        </div>
                                        <div class="col-sm-3 multi-gd-img">
                                            <ul class="multi-column-dropdown">
                                                <li><a href="mens.jsp">Jewellery</a></li>
                                                <li><a href="Stock.jsp">Stock</a></li>
                                                <li><a href="mens.jsp">Vehicles</a></li>
                                            </ul>
                                        </div>
                                        <div class="clearfix"></div>
                                    </div>
                                </ul>
                            </li>
                            <li class=" menu__item"><a class="menu__link" href="electronics.jsp">About Us</a></li>
                            <li class=" menu__item"><a class="menu__link" href="codes.jsp">Terms & Condition</a></li>
                            <li class=" menu__item"><a class="menu__link" href="contact.jsp">Contact Us</a></li>
                        </ul>
                    </div>
            </nav></div>
            </nav>	
        </div>
        <div class="top_nav_right">
            <div class="cart box_1">
                <a href="checkout.jsp">
                    <h3> <div class="total">
                            <i class="glyphicon glyphicon-shopping-cart" aria-hidden="true"></i>
                            <span id="simpleCart_quantity" class="simpleCart_quantity"></span> items</div>

                    </h3>
                </a>
                <p><a href="javascript:;" class="simpleCart_empty">Empty Cart</a></p>

            </div>	
        </div>
        <div class="clearfix"></div>
    </div>
</div>
<!-- //banner-top -->
<!-- banner -->