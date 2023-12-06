<jsp:include page="/includes/header.jsp" />
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<section>
    <div class="small-container cart-page">
        <div class="row">
            <div class="col-2">
                <h1>Join our email list</h1>
                <p>If you do, we'll send you announcements about new releases and special offers.</p>
                <br><br>

                <p><i>${message}</i></p>
                <br>

                <form action="<c:url value='/user/subscribeToEmail'/>" method="post">
                    <div class="containerst concho">
                        <input type="email" name="email" class="input" required >
                        <label class="label">Email</label>
                    </div>
                   <br>
                    <div class="containerst concho">
                        <input type="text" name="firstName" class="input" required >
                        <label class="label">First Name</label>
                    </div><br>
                    <div class="containerst concho">
                        <input type="text" name="lastName" class="input" required >
                        <label class="label">Last Name</label>
                    </div><br>
                    <button type="submit" class="btn btn-primary" value="Join Now" id="submit">
                        JOIN NOW
                    </button><br>
                </form>
            </div>
        </div>
    </div>
</section>

<jsp:include page="/includes/footer.jsp" />