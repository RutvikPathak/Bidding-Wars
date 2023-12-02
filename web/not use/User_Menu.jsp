
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
					<input type="search" value="Search" onfocus="this.value = '';" onblur="if (this.value == '') {this.value = 'Search';}" required="">
				</div>
				<div class="section_room">
					<select id="country" onchange="change_country(this.value)" class="frm-field required">
						<option value="null">All categories</option>
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
                                                                            <script>
                                                                                function stopRunning()
                                                                                {document.getElementById('animation').stop();
                                                                                    setInterval("startRunning()",5000);
                                                                                }
                                                                                function startRunning()
                                                                                {document.getElementById('animation').start();
                                                                                    setInterval("stopRunning()",1000000);
                                                                                }
                                                                            </script>
                                                                            <marquee scrollamount="10" scrolldelay="40" width="304px" height="238px" behavior="scroll"  direction="left" id="animation">
										<a href="Antique_Collectibles.jsp"><img width="304px" height="238px" src="images/woo1.jpg" alt=" "/></a>
                                                                                <a href="Electronic.jsp"><img width="304px" height="238px" src="images/woo1.jpg" alt=" "/></a>
                                                                                <a href="Fashion & Wearables.jsp"><img width="304px" height="238px" src="images/woo1.jpg" alt=" "/></a>
                                                                                <a href="Furniture.jsp"><img width="304px" height="238px" src="images/woo1.jpg" alt=" "/></a>
                                                                                <a href="House_Appartment.jsp"><img width="304px" height="238px" src="images/woo1.jpg" alt=" "/></a>
                                                                                <a href="Jewellery.jsp"><img width="304px" height="238px" src="images/woo1.jpg" alt=" "/></a>
                                                                                <a href="Jewellery.jsp"><img width="304px" height="238px" src="images/woo1.jpg" alt=" "/></a>
                                                                                <a href="Stock.jsp"><img width="304px" height="238px" src="images/woo1.jpg" alt=" "/></a>
                                                                                <a href="Vehicle.jsp"><img width="304px" height="238px" src="images/woo1.jpg" alt=" "/></a>
                                                                            </marquee>
									</div>
                                                                    
									<div class="col-sm-3 multi-gd-img">
										<ul class="multi-column-dropdown">
                                                                                        
											<li><a href="Antique_Collectibles.jsp">Antique & Collectibles</a></li>
											<li><a href="Electronic.jsp">Electronics</a></li>
                                                                                        <li><a href="Fashion.jsp">Fashion & Wearables</a></li>
											<li><a href="Furniture.jsp">Furniture</a></li>
                                                                                        <li><a href="House_Appartment.jsp">House & Appartment</a></li>
										</ul>
									</div>
									<div class="col-sm-3 multi-gd-img">
										<ul class="multi-column-dropdown">
                                                                                        <li><a href="Jewellery.jsp">Jewellery</a></li>
											<li><a href="Stock.jsp">Stock</a></li>
                                                                                        <li><a href="Vehicle.jsp">Vehicles</a></li>
										</ul>
									</div>
									<div class="clearfix"></div>
								</div>
							</ul>
                                        </li>
					<li class="dropdown menu__item">
                                            <a href="#" class="dropdown-toggle menu__link" data-toggle="dropdown" role="button" aria-haspopup="true" aria-expanded="false">Auction <span class="caret"></span></a>
                                            <ul class="dropdown-menu multi-column columns-3" >
                                                            <div class="row" style="border-right-width: 15px;box-sizing: border-box;">
								
									<div class="col-sm-3 multi-gd-img">
										<ul class="multi-column-dropdown">
                                                                                        
											<li><a href="fetchCategories">Upload Product</a></li>
											<li><a href="Uploaded_Status.jsp">Uploaded Product Status</a></li>
                                                                                        <li><a href="Events.jsp">Upcomming Auction</a></li>
											<li><a href="Current.jsp">Current Product Status</a></li>
										</ul>
									</div>
									
									<div class="clearfix"></div>
								</div>
							</ul>
                                        </li>
					<li class=" menu__item"><a class="menu__link" href="Message.jsp">Message</a></li>
				        <li class=" menu__item"><a class="menu__link" href="about.jsp">About Us</a></li>
				  </ul>
				</div>
			  </div>
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