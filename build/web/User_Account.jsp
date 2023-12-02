
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

    textarea
    {
        border-color: rgb(230, 228, 228);
        border:1px,solid;
    }


    textarea:hover
    {
        border-color: rgb(254,163,14);
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
                                                                            
                                                                            <center><h3>Welcome User !!!</h3></center><br>
                                                                                 <% 
                                                                                if(session.getAttribute("userDetails") != null){
                                                                                ArrayList<UserTable> al1 =  (ArrayList<UserTable>)session.getAttribute("userDetails");
                                                                                if(al1.size() > 0){
                                                                                    UserTable u = al1.get(0);
                                                                                    
                                                                                %>
                                                                            <center><img src="images/users/<%= u.getUserProfilePic() %>" height=90px width=90px><br></center>
                                                                            <center><a href="" style="font-size:12px;" class="logout" data-toggle="modal" data-target="#updatemodal"> Change Profile </a></center>
                                                                            <center><B> <%= u.getUserFirstName() %>  <%= u.getUserLastName() %></B> <br></center>
                                                                            <center><u style="font-size:20px;"><%= u.getUserLoginID().getEmailAddress() %></u><br></center>
                                                                            <br/>
                                                                            <center><h3><%= u.getUserAddress() %></h3></center>
                                                                            
                                                                            <center><font> Contact No. : <%= u.getUserContact() %></font></center>
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


<!-- update profile -->

<div class="modal fade" id="updatemodal" tabindex="-1" role="dialog" aria-labelledby="myModalLabel">
    <div class="modal-dialog" role="document">
        <div class="modal-content modal-info">
            <div class="modal-header">
                <button type="button" class="close" data-dismiss="modal" aria-label="Close"><span aria-hidden="true">&times;</span></button>						
            </div>

            <div class="modal-body modal-spa">
                <div class="login-grids">
                    <div class="login">

                        <div class="login-bottom">
                            <h1>Update Profile</h1>
                            <%
                                if(session.getAttribute("userDetails") != null){
                                ArrayList<UserTable> al1 = (ArrayList<UserTable>) session.getAttribute("userDetails");
                                UserTable u = null;
                                if (al1.size() > 0) {
                                    u = al1.get(0);
                                


                            %>
                            <form action="updateUserProfile" method="post" enctype="multipart/form-data">
                                <div class="sign-up">
                                    
                                    <input type="hidden" name="pwd" value="<%= u.getUserLoginID().getPassword() %>">
                                    <input type="hidden" name="lid" value="<%= u.getUserLoginID().getLoginID() %>">
                                   
                                    <h4>First Name :</h4>
                                    <input name="Fname" type="text" value="<%= u.getUserFirstName() %>" style="font-family: sans-serif;color:black;" onfocus="this.value = '';" onblur="if (this.value == '') {
                                                this.value = 'Type here';
                                            }" required="">	
                                </div>

                                <div class="sign-up">
                                    <h4>Last Name :</h4>
                                    <input name="Lname" type="text" value="<%= u.getUserLastName() %>" style="font-family: sans-serif;color: black;" onfocus="this.value = '';" onblur="if (this.value == '') {
                                                this.value = 'Type here';
                                            }" required="">

                                </div>

                                <div class="sign-up">
                                    <h4>Address :</h4>
                                    <input type="text"  name="Address" value="<%= u.getUserAddress()%>"  style="font-family: sans-serif;color: black;" onfocus="this.value = '';" onblur="if (this.value == '') {
                                                this.value = '';
                                            }" required=""></textarea>

                                </div>

                                <div class="sign-up">
                                    <h4>Contact :</h4>
                                    <input name="Contact" type="text" value="<%= u.getUserContact()%>" style="font-family: sans-serif;color: black;" onfocus="this.value = '';" onblur="if (this.value == '') {
                                                this.value = 'Mobile number';
                                            }" required="">

                                </div>



                                <div class="sign-up">
                                    <h4>Email Address :</h4>
                                    <input name="Email" type="text" value="<%= u.getUserLoginID().getEmailAddress() %>" style="font-family: sans-serif;color: black;" onfocus="this.value = '';" onblur="if (this.value == '') {
                                                this.value = 'eg.@gmail.com';
                                            }" required="">

                                </div>



                                <div class="sign-up">
                                    <h4>Profile Image :</h4>
                                    <input name="photo" type="file" value="<%= u.getUserProfilePic()%>" style="font-size:15px;font-family: sans-serif;color:black;" c onfocus="this.value = '';" onblur="if (this.value == '') {
                                                this.value = 'Choose';
                                            }" required="">
                                            <img src="images/users/<%= u.getUserProfilePic()%>" height="120px" width="70px">
                                </div>


                                <div class="sign-up">
                                    <input type="submit" value="Update Now" class="mybutton" >
                                </div>

                            </form>
                            <%}}%>
                        </div>

                        <div class="clearfix"></div>

                    </div>

                </div>
            </div>

        </div>
    </div>
</div>
<!-- update profile -->
