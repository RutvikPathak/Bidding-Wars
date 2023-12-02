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



<!-- login -->
<div class="modal fade" id="myModal4" tabindex="-1" role="dialog" aria-labelledby="myModalLabel">
    <div class="modal-dialog" role="document">
        <div class="modal-content modal-info">
            <div class="modal-header">
                <button type="button" class="close" data-dismiss="modal" aria-label="Close"><span aria-hidden="true">&times;</span></button>						
            </div>
            <div class="modal-body modal-spa">
                <div class="login-grids">
                    <div class="login">
                        <div class="login-bottom">
                            <h3>Sign up for free</h3>
                            <form>

                                <div class="sign-up">
                                    <a href="#" class="use1" data-toggle="modal" data-target="#registermodal"><span><input type="button" value="REGISTER NOW" class="mybutton" ></span></a>
                                </div>

                            </form>
                        </div>
                        <div class="login-right">
                            <h3>Sign in with your account</h3>
                            <form>

                                <div cla<a href="#" class="use1" data-toggle="modal" data-target="#loginmodal"><span><input type="button" value="SIGN IN" class="mybutton" /></span></a>
                                </div>
                            </form>
                        </div>
                        <div class="clearfix"></div>
                    </div>
                    <p>By logging in you agree to our <a href="#">Terms and Conditions</a> and <a href="#">Privacy Policy</a></p>
                </div>
            </div>
        </div>
    </div>
</div>
<!-- //login -->


<div class="modal fade" id="registermodal" tabindex="-1" role="dialog" aria-labelledby="myModalLabel">
    <div class="modal-dialog" role="document">
        <div class="modal-content modal-info">
            <div class="modal-header">
                <button type="button" class="close" data-dismiss="modal" aria-label="Close"><span aria-hidden="true">&times;</span></button>						
            </div>

            <div class="modal-body modal-spa">
                <div class="login-grids">
                    <div class="login">

                        <div class="login-bottom">
                            <h1>Registration</h1>
                            <h3>Sign up for free</h3>
                            <form action="Authentication" method="post" enctype="multipart/form-data">
                                <div class="sign-up">
                                    <h4>First Name :</h4>
                                    <input name="Fname" type="text" value="Type here" style="font-family: sans-serif;color:black;" onfocus="this.value = '';" onblur="if (this.value == '') {
                                                this.value = 'Type here';
                                            }" required="">	
                                </div>

                                <div class="sign-up">
                                    <h4>Last Name :</h4>
                                    <input name="Lname" type="text" value="Type here" style="font-family: sans-serif;color: black;"onfocus="this.value = '';" onblur="if (this.value == '') {
                                                this.value = 'Type here';
                                            }" required="">

                                </div>

                                <div class="sign-up">
                                    <h4>Address :</h4>
                                    <textarea  name="Address"  style="font-family: sans-serif;color: black;" onfocus="this.value = '';" onblur="if (this.value == '') {
                                                this.value = 'Address';
                                            }" required="">Address</textarea>

                                </div>

                                <div class="sign-up">
                                    <h4>Contact :</h4>
                                    <input name="Contact" type="text" value="Mobile number" style="font-family: sans-serif;color: black;" onfocus="this.value = '';" onblur="if (this.value == '') {
                                                this.value = 'Mobile number';
                                            }" required="">

                                </div>



                                <div class="sign-up">
                                    <h4>Email Address :</h4>
                                    <input name="Email" type="text" value="eg.@gmail.com" style="font-family: sans-serif;color: black;" onfocus="this.value = '';" onblur="if (this.value == '') {
                                                this.value = 'eg.@gmail.com';
                                            }" required="">

                                </div>



                                <div class="sign-up">
                                    <h4>Profile Image :</h4>
                                    <input name="photo" type="file" value="insert Photo" style="font-size:15px;font-family: sans-serif;color:black;" c onfocus="this.value = '';" onblur="if (this.value == '') {
                                                this.value = 'Choose';
                                            }" required="">

                                </div>


                                <div class="sign-up">
                                    <h4>Password :</h4>
                                    <input name="Password" type="password"  style="font-family: sans-serif;color: black;" onfocus="this.value = '';" onblur="if (this.value == '') {
                                                this.value = '';
                                            }" required="">

                                </div>


                                <div class="sign-up">
                                    <h4>Confirm Password :</h4>
                                    <input type="password"  style="font-family: sans-serif;color: black;" onfocus="this.value = '';" onblur="if (this.value == '') {
                                                this.value = '';
                                            }" required="">

                                </div>


                                <div class="sign-up">
                                    <input type="submit" value="REGISTER NOW" class="mybutton" >
                                </div>

                            </form>
                        </div>

                        <div class="clearfix"></div>

                    </div>
                    <p>By logging in you agree to our <a href="#">Terms and Conditions</a> and <a href="#">Privacy Policy</a></p>
                </div>
            </div>

        </div>
    </div>
</div>


<div class="modal fade" id="loginmodal" tabindex="-1" role="dialog" aria-labelledby="myModalLabel">
    <div class="modal-dialog" role="document">
        <div class="modal-content modal-info">
            <div class="modal-header">
                <button type="button" class="close" data-dismiss="modal" aria-label="Close"><span aria-hidden="true">&times;</span></button>						
            </div>
            <div class="modal-body modal-spa">
                <div class="login-grids">
                    <div class="login">

                        <div class="login-right">
                            <h3>Sign in with your account</h3>
                            <form action="Login" method="post">
                                <div class="sign-in">
                                    <h4>Email :</h4>
                                    <input name="Email" type="text" value="example@gmail.com" style="font-family: sans-serif;color: black; "onfocus="this.value = '';" onblur="if (this.value == '') {
                                                this.value = 'example@gmail.com';
                                            }" required="">	
                                </div>
                                <div class="sign-in">
                                    <h4>Password :</h4>
                                    <input name="Password" type="password"  style="font-family: sans-serif;color: black;" onfocus="this.value = '';" onblur="if (this.value == '') {
                                                this.value = '';
                                            }" required="">
                                    <a href="#" style="font-family: sans-serif;font-size: 15px;">Forgot password?</a>
                                </div>
                                <div class="single-bottom">
                                    <input type="checkbox"  id="brand" value="">
                                    <label for="brand"><span></span>Remember Me.</label>
                                </div>
                                <div class="sign-in">
                                    <input type="submit" value="SIGNIN" >
                                </div>
                            </form>
                        </div>
                        <div class="clearfix"></div>
                    </div>
                    <p>By logging in you agree to our <a href="#">Terms and Conditions</a> and <a href="#">Privacy Policy</a></p>
                </div>
            </div>
        </div>
    </div>
</div>