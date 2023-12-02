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

    
    <%@include file="Menu.jsp" %>
    
<div class="page-head" style="background: url(images/antique.jpg); background-repeat:  no-repeat; background-position:center; background-size: cover;">
	<div class="container" style=" width: 100%;  background: rgba(0, 0, 0, 0.58);">
            <h3 style="  font-weight: bold; text-align: center; text-transform: uppercase;
    letter-spacing: 6px;text-align: center;">Antique & Collectibles</h3>
	</div>
</div>
<!-- //banner -->
<!-- mens -->
<div class="men-wear">
	<div class="container">
		<div class="col-md-4 products-left">
			<div class="filter-price">
				<h3>Filter By Price</h3>
					<ul class="dropdown-menu6">
						<li>                
							<div id="slider-range"></div>							
							<input type="text" id="amount" style="border: 0; color: #ffffff; font-weight: normal;" />
						</li>			
					</ul>
							<!---->
							<script type='text/javascript'>//<![CDATA[ 
							$(window).load(function(){
							 $( "#slider-range" ).slider({
										range: true,
										min: 0,
										max: 9000,
										values: [ 1000, 7000 ],
										slide: function( event, ui ) {  $( "#amount" ).val( "$" + ui.values[ 0 ] + " - $" + ui.values[ 1 ] );
										}
							 });
							$( "#amount" ).val( "$" + $( "#slider-range" ).slider( "values", 0 ) + " - $" + $( "#slider-range" ).slider( "values", 1 ) );

							});//]]>  

							</script>
						<script type="text/javascript" src="js/jquery-ui.js"></script>
					 <!---->
			</div>
			<div class="css-treeview">
				<h4>Categories</h4>
				<ul class="tree-list-pad">
					<li><input type="checkbox" checked="checked" id="item-0" /><label for="item-0"><span></span>Antique & Collectables</label>
						<ul>
							<li><input type="checkbox" id="item-0-0" /><label for="item-0-0">Art & Painting</label>

							</li>
							<li><input type="checkbox"  id="item-0-1" /><label for="item-0-1">Ancient Coins & Paper Money</label>

							</li>
							<li><input type="checkbox"  id="item-0-2" /><label for="item-0-2">Memorable Items</label>

							</li>
                                                        <li><input type="checkbox"  id="item-0-2" /><label for="item-0-2">Poetry & Status</label>

							</li>
						</ul>
					</li>
					<li><input type="checkbox" id="item-1"  /><label for="item-1">Electronics</label>
						<ul>
							<li><input type="checkbox" checked="checked" id="item-1-0" /><label for="item-1-0">A/C</label>

							</li>
                                                        <li><input type="checkbox" checked="checked" id="item-1-0" /><label for="item-1-0">Laptops & Computers</label>

							</li>
                                                        <li><input type="checkbox" checked="checked" id="item-1-0" /><label for="item-1-0">Mobiles & Tablets</label>
							</li>
                                                        <li><input type="checkbox" checked="checked" id="item-1-0" /><label for="item-1-0">Refrigerator</label>
							</li>
                                                        <li><input type="checkbox" checked="checked" id="item-1-0" /><label for="item-1-0">Washing Machine</label>
							</li>
                                                        <li><input type="checkbox" checked="checked" id="item-1-0" /><label for="item-1-0">T.V</label>
							</li>
							
						</ul>
					</li>
					<li><input type="checkbox"  id="item-2" /><label for="item-2">Fashion</label>
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
							<li><input type="checkbox" id="item-4-0" /><label for="item-4-0">For Rent </label>
                                                        </li>
							<li><input type="checkbox"  id="item-4-1" /><label for="item-4-1">For Sale </label>
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
                                                    <li><input type="checkbox" id="item-6-0" /><label for="item-6-0" >Professional & Commercial <p style="text-align: center;">Business Startup</label>
							</li>
							<li><input type="checkbox"  id="item-6-1" /><label for="item-6-1"> Chemical Equipments</label>
							</li>
							<li><input type="checkbox"  id="item-6-2" /><label for="item-6-2">Metals & Minerals</label>
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
							<li><input type="checkbox"  id="item-7-1" /><label for="item-7-1">Convertible</label>
							</li>
							<li><input type="checkbox"  id="item-7-2" /><label for="item-7-2">Coupe</label>
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
		<div class="col-md-8 products-right">
		
			<div class="sort-grid">
				<div class="sorting">
					<h6>Sort By</h6>
					<select id="country1" onchange="change_country(this.value)" class="frm-field required sect">
						<option value="null">Default</option>
						<option value="null">Name(A - Z)</option> 
						<option value="null">Name(Z - A)</option>
						<option value="null">Price(High - Low)</option>
						<option value="null">Price(Low - High)</option>	
						<option value="null">Model(A - Z)</option>
						<option value="null">Model(Z - A)</option>					
					</select>
					<div class="clearfix"></div>
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
				<div  id="top" class="callbacks_container">
					
                                    				<div class="col-md-4 product-men no-pad-men">
					<div class="men-pro-item simpleCart_shelfItem">
						<div class="men-thumb-item">
							<img src="images/ep2.png" alt="" class="pro-image-front">
							<img src="images/ep2.png" alt="" class="pro-image-back">
										<div class="men-cart-pro">
											<div class="inner-men-cart-pro">
												<a href="single.jsp" class="link-product-add-cart">Quick View</a>
											</div>
										</div>
										<span class="product-new-top">New</span>
										
						</div>
						<div class="item-info-product ">
									<h4><a href="single.jsp">Watches</a></h4>
									<div class="info-product-price">
										<span class="item_price">Rs. 45.99</span>
									</div>
									<a href="#" class="item_add single-item hvr-outline-out button2">Start Bid</a>									
						</div>
					</div>
				</div>
				<div class="col-md-4 product-men no-pad-men">
					<div class="men-pro-item simpleCart_shelfItem">
						<div class="men-thumb-item">
							<img src="images/a2.png" alt="" class="pro-image-front">
							<img src="images/a2.png" alt="" class="pro-image-back">
										<div class="men-cart-pro">
											<div class="inner-men-cart-pro">
												<a href="single.jsp" class="link-product-add-cart">Quick View</a>
											</div>
										</div>
										<span class="product-new-top">New</span>
										
						</div>
						<div class="item-info-product ">
									<h4><a href="single.jsp">Blazers</a></h4>
									<div class="info-product-price">
										<span class="item_price">Rs. 45.99</span>
									</div>
									<a href="#" class="item_add single-item hvr-outline-out button2">Start Bid</a>									
						</div>
					</div>
				</div>
				<div class="col-md-4 product-men no-pad-men">
					<div class="men-pro-item simpleCart_shelfItem">
						<div class="men-thumb-item">
							<img src="images/mw2.png" alt="" class="pro-image-front">
							<img src="images/mw2.png" alt="" class="pro-image-back">
										<div class="men-cart-pro">
											<div class="inner-men-cart-pro">
												<a href="single.jsp" class="link-product-add-cart">Quick View</a>
											</div>
										</div>
										<span class="product-new-top">New</span>
										
						</div>
						<div class="item-info-product ">
									<h4><a href="single.jsp">Shirts</a></h4>
									<div class="info-product-price">
										<span class="item_price">Rs. 45.99</span>
									</div>
									<a href="#" class="item_add single-item hvr-outline-out button2">Start Bid</a>									
						</div>
					</div>
				</div>
                                    
                                    
                                    
                                    
                                    
                                    
				</div>
                                
                               
				<div class="clearfix"></div>
                                
                                 <br>
                                
                                	<div  id="top" class="callbacks_container">
					
                                    				<div class="col-md-4 product-men no-pad-men">
					<div class="men-pro-item simpleCart_shelfItem">
						<div class="men-thumb-item">
							<img src="images/ep2.png" alt="" class="pro-image-front">
							<img src="images/ep2.png" alt="" class="pro-image-back">
										<div class="men-cart-pro">
											<div class="inner-men-cart-pro">
												<a href="single.jsp" class="link-product-add-cart">Quick View</a>
											</div>
										</div>
										<span class="product-new-top">New</span>
										
						</div>
						<div class="item-info-product ">
									<h4><a href="single.jsp">Watches</a></h4>
									<div class="info-product-price">
										<span class="item_price">Rs. 45.99</span>
									</div>
									<a href="#" class="item_add single-item hvr-outline-out button2">Start Bid</a>									
						</div>
					</div>
				</div>
				<div class="col-md-4 product-men no-pad-men">
					<div class="men-pro-item simpleCart_shelfItem">
						<div class="men-thumb-item">
							<img src="images/a2.png" alt="" class="pro-image-front">
							<img src="images/a2.png" alt="" class="pro-image-back">
										<div class="men-cart-pro">
											<div class="inner-men-cart-pro">
												<a href="single.jsp" class="link-product-add-cart">Quick View</a>
											</div>
										</div>
										<span class="product-new-top">New</span>
										
						</div>
						<div class="item-info-product ">
									<h4><a href="single.jsp">Blazers</a></h4>
									<div class="info-product-price">
										<span class="item_price">Rs. 45.99</span>
									</div>
									<a href="#" class="item_add single-item hvr-outline-out button2">Start Bid</a>									
						</div>
					</div>
				</div>
                                            
				<div class="col-md-4 product-men no-pad-men">
					<div class="men-pro-item simpleCart_shelfItem">
						<div class="men-thumb-item">
							<img src="images/mw2.png" alt="" class="pro-image-front">
							<img src="images/mw2.png" alt="" class="pro-image-back">
										<div class="men-cart-pro">
											<div class="inner-men-cart-pro">
												<a href="single.jsp" class="link-product-add-cart">Quick View</a>
											</div>
										</div>
										<span class="product-new-top">New</span>
										
						</div>
						<div class="item-info-product ">
									<h4><a href="single.jsp">Shirts</a></h4>
									<div class="info-product-price">
										<span class="item_price">Rs. 45.99</span>
									</div>
									<a href="#" class="item_add single-item hvr-outline-out button2">Start Bid</a>									
						</div>
					</div>
				</div>
                                    
                                    
                                    
                                    
                                    
                                    
				</div>
			</div>
		

				
				<div class="clearfix"></div>
		</div>
		<div class="clearfix"></div>
		<div class="single-pro">
			
			<div class="col-md-3 product-men">
				<div class="men-pro-item simpleCart_shelfItem">
					<div class="men-thumb-item">
						<img src="images/a8.png" alt="" class="pro-image-front">
						<img src="images/a8.png" alt="" class="pro-image-back">
							<div class="men-cart-pro">
								<div class="inner-men-cart-pro">
									<a href="single.jsp" class="link-product-add-cart">Quick View</a>
								</div>
							</div>
							<span class="product-new-top">New</span>				
					</div>
					<div class="item-info-product ">
						<h4><a href="single.jsp">Blazers</a></h4>
						<div class="info-product-price">
							<span class="item_price">Rs. 45.99</span>
						</div>
						<a href="#" class="item_add single-item hvr-outline-out button2">Start Bid</a>									
					</div>
				</div>
			</div>
			<div class="col-md-3 product-men">
				<div class="men-pro-item simpleCart_shelfItem">
					<div class="men-thumb-item">
						<img src="images/mw1.png" alt="" class="pro-image-front">
						<img src="images/mw1.png" alt="" class="pro-image-back">
							<div class="men-cart-pro">
								<div class="inner-men-cart-pro">
									<a href="single.jsp" class="link-product-add-cart">Quick View</a>
								</div>
							</div>
							<span class="product-new-top">New</span>				
					</div>
					<div class="item-info-product ">
						<h4><a href="single.jsp">Sandals</a></h4>
						<div class="info-product-price">
							<span class="item_price">Rs. 45.99</span>
						</div>
						<a href="#" class="item_add single-item hvr-outline-out button2">Start Bid</a>									
					</div>
				</div>
			</div>
			<div class="col-md-3 product-men">
				<div class="men-pro-item simpleCart_shelfItem">
					<div class="men-thumb-item">
						<img src="images/ep3.png" alt="" class="pro-image-front">
						<img src="images/ep3.png" alt="" class="pro-image-back">
							<div class="men-cart-pro">
								<div class="inner-men-cart-pro">
									<a href="single.jsp" class="link-product-add-cart">Quick View</a>
								</div>
							</div>
							<span class="product-new-top">New</span>				
					</div>
					<div class="item-info-product ">
						<h4><a href="single.jsp">Watches</a></h4>
						<div class="info-product-price">
							<span class="item_price">Rs. 45.99</span>
						</div>
						<a href="#" class="item_add single-item hvr-outline-out button2">Start Bid</a>									
					</div>
				</div>
			</div>
			<div class="col-md-3 product-men">
				<div class="men-pro-item simpleCart_shelfItem">
					<div class="men-thumb-item">
						<img src="images/mw3.png" alt="" class="pro-image-front">
						<img src="images/mw3.png" alt="" class="pro-image-back">
							<div class="men-cart-pro">
								<div class="inner-men-cart-pro">
									<a href="single.jsp" class="link-product-add-cart">Quick View</a>
								</div>
							</div>
							<span class="product-new-top">New</span>				
					</div>
					<div class="item-info-product ">
						<h4><a href="single.jsp">Shoes</a></h4>
						<div class="info-product-price">
							<span class="item_price">Rs. 45.99</span>
						</div>
						<a href="#" class="item_add single-item hvr-outline-out button2">Start Bid</a>									
					</div>
				</div>
			</div>
			<div class="col-md-3 product-men yes-marg">
							<div class="men-pro-item simpleCart_shelfItem">
								<div class="men-thumb-item">
									<img src="images/g3.png" alt="" class="pro-image-front">
									<img src="images/g3.png" alt="" class="pro-image-back">
										<div class="men-cart-pro">
											<div class="inner-men-cart-pro">
												<a href="single.jsp" class="link-product-add-cart">Quick View</a>
											</div>
										</div>
										<span class="product-new-top">New</span>
										
								</div>
								<div class="item-info-product ">
									<h4><a href="single.jsp">Shirts</a></h4>
									<div class="info-product-price">
										<span class="item_price">Rs. 45.99</span>
									</div>
									<a href="#" class="item_add single-item hvr-outline-out button2">Start Bid</a>									
								</div>
							</div>
						</div>
						<div class="col-md-3 product-men yes-marg">
							<div class="men-pro-item simpleCart_shelfItem">
								<div class="men-thumb-item">
									<img src="images/ep4.png" alt="" class="pro-image-front">
									<img src="images/ep4.png" alt="" class="pro-image-back">
										<div class="men-cart-pro">
											<div class="inner-men-cart-pro">
												<a href="single.jsp" class="link-product-add-cart">Quick View</a>
											</div>
										</div>
										<span class="product-new-top">New</span>
										
								</div>
								<div class="item-info-product ">
									<h4><a href="single.jsp">Watches</a></h4>
									<div class="info-product-price">
										<span class="item_price">Rs. 119.99</span>
									</div>
									<a href="#" class="item_add single-item hvr-outline-out button2">Start Bid</a>									
								</div>
							</div>
						</div>
			<div class="col-md-3 product-men yes-marg">
							<div class="men-pro-item simpleCart_shelfItem">
								<div class="men-thumb-item">
									<img src="images/mw2.png" alt="" class="pro-image-front">
									<img src="images/mw2.png" alt="" class="pro-image-back">
										<div class="men-cart-pro">
											<div class="inner-men-cart-pro">
												<a href="single.jsp" class="link-product-add-cart">Quick View</a>
											</div>
										</div>
										<span class="product-new-top">New</span>
										
								</div>
								<div class="item-info-product ">
									<h4><a href="single.jsp">T shirts</a></h4>
									<div class="info-product-price">
										<span class="item_price">Rs. 45.99</span>
									</div>
									<a href="#" class="item_add single-item hvr-outline-out button2">Start Bid</a>									
								</div>
							</div>
						</div>
			<div class="col-md-3 product-men yes-marg">
							<div class="men-pro-item simpleCart_shelfItem">
								<div class="men-thumb-item">
									<img src="images/g2.png" alt="" class="pro-image-front">
									<img src="images/g2.png" alt="" class="pro-image-back">
										<div class="men-cart-pro">
											<div class="inner-men-cart-pro">
												<a href="single.jsp" class="link-product-add-cart">Quick View</a>
											</div>
										</div>
										<span class="product-new-top">New</span>
										
								</div>
								<div class="item-info-product ">
									<h4><a href="single.jsp"> Shirts</a></h4>
									<div class="info-product-price">
										<span class="item_price">Rs. 45.99</span>
									</div>
									<a href="#" class="item_add single-item hvr-outline-out button2">Start Bid</a>									
								</div>
							</div>
						</div>
			<div class="clearfix"></div>
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
<%@include file="Login.jsp" %>

</body>
</html>
