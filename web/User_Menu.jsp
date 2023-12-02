<style>
    
.dropdown-menu.columns-3 {
    min-width: 700px;
    padding: 30px 30px;
}


</style>


<!-- header -->
<div class="header">
	<div class="container">
		<ul>

			<li><span class="glyphicon glyphicon-envelope" aria-hidden="false"></span><a href="mailto:info@example.com">info@example.com</a></li>
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
					<li class="menu__item"><a class="menu__link" href="User_Index.jsp">Home <span class="sr-only"></span></a></li>
					<li class="dropdown menu__item">
						<a href="#" class="dropdown-toggle menu__link" data-toggle="dropdown" role="button" aria-haspopup="true" aria-expanded="false">Product <span class="caret"></span></a>
							<ul class="dropdown-menu multi-column columns-3" style="width:50px;">
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
										<a href="fetchProduct?id=1"><img width="304px" height="238px" src="images/woo1.jpg" alt=" "/></a>
                                                                                <a href="fetchProduct?id=2"><img width="304px" height="238px" src="images/woo1.jpg" alt=" "/></a>
                                                                                <a href="fetchProduct?id=3"><img width="304px" height="238px" src="images/woo1.jpg" alt=" "/></a>
                                                                                <a href="fetchProduct?id=4"><img width="304px" height="238px" src="images/woo1.jpg" alt=" "/></a>
                                                                                <a href="fetchProduct?id=5"><img width="304px" height="238px" src="images/woo1.jpg" alt=" "/></a>
                                                                                <a href="fetchProduct?id=6"><img width="304px" height="238px" src="images/woo1.jpg" alt=" "/></a>
                                                                                <a href="fetchProduct?id=7"><img width="304px" height="238px" src="images/woo1.jpg" alt=" "/></a>
                                                                                <a href="fetchProduct?id=8"><img width="304px" height="238px" src="images/woo1.jpg" alt=" "/></a>
                                                                                <a href="fetchProduct?id=9"><img width="304px" height="238px" src="images/woo1.jpg" alt=" "/></a>
                                                                            </marquee>
									</div>
                                                                    
									<div class="col-sm-3 multi-gd-img">
										<ul class="multi-column-dropdown">
                                                                                        
											<li><a href="fetchproduct?catid=1">Antique & Collectibles</a></li>
											<li><a href="fetchproduct?catid=2">Electronics</a></li>
                                                                                        <li><a href="fetchproduct?catid=3">Fashion & Wearables</a></li>
											<li><a href="fetchproduct?catid=4">Furniture</a></li>
                                                                                        <li><a href="fetchproduct?catid=5">House & Appartment</a></li>
										</ul>
									</div>
									<div class="col-sm-3 multi-gd-img">
										<ul class="multi-column-dropdown">
                                                                                        <li><a href="fetchproduct?catid=6">Jewellery</a></li>
											<li><a href="fetchproduct?catid=7">Stock</a></li>
                                                                                        <li><a href="fetchproduct?catid=8">Vehicles</a></li>
										</ul>
									</div>
									<div class="clearfix"></div>
								</div>
							</ul>
                                        </li>
					<li class="dropdown menu__item">
                                            <a href="#" class="dropdown-toggle menu__link" data-toggle="dropdown" role="button" aria-haspopup="true" aria-expanded="false">Auction <span class="caret"></span></a>
                                            <ul class="dropdown-menu multi-column columns-3"  style="min-width: 190px;" >
                                                            <div class="row" style="border-right-width: 15px;box-sizing: border-box;">
								
									<div>
										<ul class="multi-column-dropdown" >
                                                                                        
											<li><a href="fetchCategories">Upload Product</a></li>
											<li><a href="Product_Status.jsp">Uploaded Product Status</a></li>
                                                                                        <li><a href="UpcommingAuction">Upcomming Auction</a></li>
											
										</ul>
									</div>
									
									<div class="clearfix"></div>
								</div>
							</ul>
                                        </li>
					<li class=" menu__item"><a class="menu__link" href="Message.jsp">Message</a></li>
				        <li class=" menu__item"><a class="menu__link" href="about.jsp">Contact Us</a></li>
				  </ul>
				</div>
			  </div>
			</nav>	
		</div>
		<div class="top_nav_right"style="height:80px;">
			<div class="cart box_1"style="height:80px;">
						<a href="Checkout.jsp">
							<h3> <div class="total" style="margin-top: 12px;">
                                                                <i class="" aria-hidden="true"><img src="images\history.png" style="height:30px; width:30px;"></i>
                                                                <span>History</span></div>
								
							</h3>
						</a>
						<p><a href="javascript:;" class="simpleCart_empty"></a></p>
						
			</div>	
		</div>
		<div class="clearfix"></div>
	</div>
</div>
<!-- //banner-top -->
<!-- banner -->