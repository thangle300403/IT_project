<jsp:include page="/includes/header.jsp" />

<%-- Use the following left column instead after you configure a 
     secure connection as described in chapter 15.
<jsp:include page="/includes/column_left_all_absolute.jsp" />
--%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>

<!-- begin middle column -->

<section class="cart">
    <div class="container">
        <div class="row">
            <div class="col-2">
                <h1>Enter your credit card information</h1>

                <form action="<c:url value='/order/completeOrder' />" method="post">
                    <table>
                        <tr>
                            <td><b>Credit card type</b></td>
                            <td>
                                <select name="creditCardType" size="1">
                                    <option value="Visa">Visa</option>
                                    <option value="Mastercard">Mastercard</option>
                                    <option value="AmEx">American Express</option>
                                </select>
                            </td>
                        </tr>
                        <tr>
                            <td><b>Card number</b></td>
                            <td><input type="text" size="20" name="creditCardNumber"
                                       maxlength="25" required></td>
                        </tr>
                        <tr>
                            <td><b>Expiration date (mm/yyyy)</b></td>
                            <td><select name="creditCardExpirationMonth">
                                <option value="01">01</option>
                                <option value="02">02</option>
                                <option value="03">03</option>
                                <option value="04">04</option>
                                <option value="05">05</option>
                                <option value="06">06</option>
                                <option value="07">07</option>
                                <option value="08">08</option>
                                <option value="09">09</option>
                                <option value="10">10</option>
                                <option value="11">11</option>
                                <option value="12">12</option>
                            </select>
                                /
                                <select name="creditCardExpirationYear">
                                    <c:forEach var="year" items="${creditCardYears}">
                                        <option value="${year}">${year}</option>
                                    </c:forEach>
                                </select>
                            </td>
                        </tr>
                        <tr>
                            <td></td>
                            <td>
                                <button class="buttoncont"  type="submit">
                                    SUBMIT ORDER
                                    <svg fill="currentColor" viewBox="0 0 24 24" class="icon1">
                                        <path clip-rule="evenodd" d="M12 2.25c-5.385 0-9.75 4.365-9.75 9.75s4.365 9.75 9.75 9.75 9.75-4.365 9.75-9.75S17.385 2.25 12 2.25zm4.28 10.28a.75.75 0 000-1.06l-3-3a.75.75 0 10-1.06 1.06l1.72 1.72H8.25a.75.75 0 000 1.5h5.69l-1.72 1.72a.75.75 0 101.06 1.06l3-3z" fill-rule="evenodd"></path>
                                    </svg>
                                </button><br>
                            </td>
                        </tr>
                    </table>
                </form>
            </div>
        </div>
    </div>
</section>

<!-- end middle column -->

<jsp:include page="/includes/footer.jsp" />