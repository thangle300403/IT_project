<jsp:include page="/includes/header.jsp" />
<%-- Use the following left column instead after you configure a
     secure connection as described in chapter 15.
<jsp:include page="/includes/column_left_all_absolute.jsp" />
--%>

<!-- begin middle column -->

<section>
    <%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
    <div class="small-container cart-page">
        <div class="row">
            <div class="col-2">
                <h1>Thank you, ${user.firstName}</h1>
                <p>
                    It's fantastic to know that they're not only comfortable but also meet your style preferences. We strive to provide products that enhance our customers' experiences, and your positive feedback is truly rewarding.

                    If there's anything specific you enjoyed about the shoes or if you have any suggestions for improvement, we'd love to hear more. Your insights help us continually refine our offerings. Also, keep an eye out for our upcoming promotions; we have some exciting new arrivals that you might find interesting.

                    Once again, thank you for choosing our products, and we look forward to serving you again!
                </p>
            </div>
        </div>
    </div>
</section>

<!-- end middle column -->

<jsp:include page="/includes/footer.jsp" />
