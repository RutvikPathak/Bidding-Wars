
<%@page import="Model.DeliveryBoyTable"%>
<%@page import="java.util.ArrayList"%>
<%@page import="Model.UserTable"%>
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

.logout:hover
{
    color:rgb(255,163,14);
}
    
</style>



<!--User Account -->
			<div class="modal fade" id="myModal4" tabindex="-1" role="dialog" aria-labelledby="myModalLabel">
				<div class="modal-dialog" role="document">
                                    <div class="modal-content modal-info" style="width:650px;">
						<div class="modal-header">
							<button type="button" class="close" data-dismiss="modal" aria-label="Close"><span aria-hidden="true">&times;</span></button>						
						</div>
						<div class="modal-body modal-spa">
							<div class="login-grids">
								<div class="login">
                                                                            
                                                                            <center><h3>Welcome Supplier !!!</h3></center><br>
                                                                                 <% 
                                                                                if(session.getAttribute("SupplierDetails") != null){
                                                                                ArrayList<DeliveryBoyTable> al1 =  (ArrayList<DeliveryBoyTable>)session.getAttribute("SupplierDetails");
                                                                                if(al1.size() > 0){
                                                                                    DeliveryBoyTable d = al1.get(0);
                                                                                    
                                                                                %>
                                                                            <center><img src="images/supplier/<%= d.getDeliveryboyProfilePic()%>" height=90px width=90px><br></center>
                                                                            <center><a href="#open.windows" style="font-size:12px;" class="logout"> Change Profile </a></center>
                                                                            <center><B> <%= d.getDeliveryBoyFirstName() %>  <%= d.getDeliveryBoyLastName() %></B> <br></center>
                                                                            <center><u style="font-size:20px;"><%= d.getDeliveryBoyLoginID().getEmailAddress() %></u><br></center>
                                                                            <br/>
                                                                            <center><h3><%= d.getDeliveryBoyAddress() %></h3></center>
                                                                            
                                                                            <center><font> Contact No. : <%= d.getDeliveryBoyContact() %></font></center>
                                                                                <%
                                                                                    }
                                                                                    }                                                                           
                                                                                  %>
                                                                    
									<div class="clearfix"></div>
								</div>
                                                            <br>
                                                            <center><a   href="Logout" style="font-size:20px;" class="logout">Log Out</a> </center>    
                                                            <p style="margin: 0px;">By logging in you agree to our <a href="#">Terms and Conditions</a> and <a href="#">Privacy Policy</a></p>
                                                            
							</div>
						</div>
                                        </div>
				</div>
			</div>
<!-- //User Account -->
