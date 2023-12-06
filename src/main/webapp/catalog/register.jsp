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


                <form action="<c:url value='/catalog/product/${product.code}/listen/register'/>" method="post">
                    <label>Email</label>
                    <input type="email" name="email" required><br>
                    <label>First Name</label>
                    <input type="text" name="firstName" required><br>
                    <label>Last Name</label>
                    <input type="text" name="lastName" required><br>
                    <label>&nbsp;</label>
                    <input type="submit" value="Register" id="submit">
                </form>
            </div>
        </div>
    </div>
</section>


<jsp:include page="/includes/footer.jsp" />

