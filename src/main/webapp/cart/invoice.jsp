<jsp:include page="/includes/header.jsp" />
<%-- Use the following left column instead after you configure a 
     secure connection as described in chapter 15.
<jsp:include page="/includes/column_left_all_absolute.jsp" />
--%>

<!-- begin middle column -->

<section class="cart">
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
    <div class="small-container cart-page">
        <div class="row">
            <div class="col-2">
                <h1>Your invoice</h1>

                <table>
                    <tr>
                        <th>Date</th>
                        <td>${invoice.invoiceDateDefaultFormat}</td>
                        <td></td>
                    </tr>
                    <tr>
                        <th class="top">Ship To</th>
                        <td>${user.addressHTMLFormat}</td>
                        <td></td>
                    </tr>
                    <tr>
                        <td colspan="3"><hr></td>
                    </tr>
                    <tr>
                        <th>Qty</th>
                        <th>Description</th>
                        <th>Price</th>
                    </tr>

                    <c:forEach var="item" items="${invoice.lineItems}">
                        <tr>
                            <td>${item.quantity}</td>
                            <td>${item.product.description}</td>
                            <td>${item.totalCurrencyFormat}</td>
                        </tr>
                    </c:forEach>

                    <tr>
                        <th>Total:</th>
                        <td></td>
                        <td>${invoice.invoiceTotalCurrencyFormat}</td>
                    </tr>
                </table><br>

                <form action="<c:url value='/order/displayUser' />" method="post" id="float_left">
                    <button class="buttoncont"  type="submit">
                        EDIT ADDRESS
                        <svg fill="currentColor" viewBox="0 0 24 24" class="icon1">
                            <path clip-rule="evenodd" d="M12 2.25c-5.385 0-9.75 4.365-9.75 9.75s4.365 9.75 9.75 9.75 9.75-4.365 9.75-9.75S17.385 2.25 12 2.25zm4.28 10.28a.75.75 0 000-1.06l-3-3a.75.75 0 10-1.06 1.06l1.72 1.72H8.25a.75.75 0 000 1.5h5.69l-1.72 1.72a.75.75 0 101.06 1.06l3-3z" fill-rule="evenodd"></path>
                        </svg>
                    </button><br>
                </form>

                <form action="<c:url value='/order/displayCreditCard' />" method="post">
                    <button class="buttoncont"  type="submit">
                        CONTINUE
                        <svg fill="currentColor" viewBox="0 0 24 24" class="icon1">
                            <path clip-rule="evenodd" d="M12 2.25c-5.385 0-9.75 4.365-9.75 9.75s4.365 9.75 9.75 9.75 9.75-4.365 9.75-9.75S17.385 2.25 12 2.25zm4.28 10.28a.75.75 0 000-1.06l-3-3a.75.75 0 10-1.06 1.06l1.72 1.72H8.25a.75.75 0 000 1.5h5.69l-1.72 1.72a.75.75 0 101.06 1.06l3-3z" fill-rule="evenodd"></path>
                        </svg>
                    </button><br>
                </form>
            </div>
        </div>
    </div>
</section>

<!-- end middle column -->

<jsp:include page="/includes/footer.jsp" />