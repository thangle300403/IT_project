<jsp:include page="/includes/header.jsp" />

<section>
    <div class="container">
        <div class="row">
            <div class="col-2">
                <h1>Thanks for joining our email list</h1>
                <p>Here is the information that you entered:</p>
                <label  class="no_pad_top">Email</label>
                <span>${user.email}</span><br>
                <label class="no_pad_top">First Name</label>
                <span>${user.firstName}</span><br>
                <label class="no_pad_top">Last Name</label>
                <span>${user.lastName}</span><br>
            </div>
        </div>
    </div>
</section>

<jsp:include page="/includes/footer.jsp" />