<jsp:include page="/includes/header.jsp" />


<!-- start the middle column -->

<section>

    <div class="account-page">
        <div class="container">
            <div class="row">
                <div class="col-2">
                    <img src="images/image1.png" width="100%">
                </div>
                <div class="col-2">
                    <div class="form-container">
                        <div class="form-btn">
                            <span onclick="login()">LOGIN ADMIN</span>
                        </div>
                        <p>You did not log in successfully.</p>
                        <p>Please check your username and password and try again.</p>
                        <form action="j_security_check" method="post">
                            <label>Username</label>
                            <input type="text" name="j_username"><br>
                            <label>Password</label>
                            <input type="password" name="j_password"><br>
                            <label>&nbsp;</label>
                            <input type="submit" value="Login">
                        </form>
                    </div>
                </div>
            </div>
        </div>
    </div>

</section>

<!-- end the middle column -->

<jsp:include page="/includes/footer.jsp" />