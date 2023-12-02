<%-- 
    Document   : slider
    Created on : 5 Dec, 2019, 3:25:09 PM
    Author     : Rutvik
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<div class="banner-grid">
	<div id="visual">
            <div class="slide-visual" style="height:590px;">
				<!-- Slide Image Area (1000 x 424) -->
				<ul class="slide-group">
					<li><img class="img-responsive" src="images/antiqueAdd.jpg" alt="Dummy Image" /></li>
					<li><img class="img-responsive" src="images/electronicAdd.jpg" alt="Dummy Image" /></li>
					<li><img class="img-responsive" src="images/clothingad.jpg" alt="Dummy Image" /></li>
				        
                                        <li><img class="img-responsive" src="images/houseAdd.jpg" alt="Dummy Image" /></li>
                                </ul> 
				<!-- Slide Description Image Area (316 x 328) -->
				
				<div class="clearfix"></div>
			</div>
			<div class="clearfix"></div>
		</div>
	<script type="text/javascript" src="js/pignose.layerslider.js"></script>
	<script type="text/javascript">
	//<![CDATA[
		$(window).load(function() {
			$('#visual').pignoseLayerSlider({
				play    : '.btn-play',
				pause   : '.btn-pause',
				next    : '.btn-next',
				prev    : '.btn-prev'
			});
		});
	//]]>
	</script>

</div>