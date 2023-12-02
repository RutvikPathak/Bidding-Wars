
<%@page import="java.util.List"%>
<%@page import="Model.AdminTable"%>
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

                        <center><h3>Welcome Admin !!!</h3></center><br>
                            
                        <center>
                            <img src="images/logo.png" height="90px" width="90px">
                            <br></center>
                       
                        <center><B> Bidding Wars</B> <br></center>
                        <center><u style="font-size:20px;">biddingwars6@gmail.com</u><br></center>
                        <br/>
                        <center><h3> Naranpura </h3></center><br>
                        
                        <center><h4> Developed By <br></h4></center>
                        <center><h5>Devanshi Bhatt  |  Rutvik Pathak</h5></center><br>

                        <center><font> Contact No. : 9512436742</font></center>

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
