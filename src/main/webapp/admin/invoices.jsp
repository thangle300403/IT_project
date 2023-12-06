<jsp:include page="/includes/header.jsp" />
<%--<jsp:include page="/includes/column_left_admin.jsp" />--%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>

<!-- begin middle column -->

<section id="admin">
    <div class="small-container cart-page">
        <div class="row">
            <div class="col-2">
                <h1>Invoices to be processed:</h1>

                <c:if test="${unprocessedInvoices == null}">
                    <p>There are no invoices to process.</p>
                </c:if>


                <c:if test="${unprocessedInvoices != null}">
                    <table>

                        <tr>
                            <td></td>
                            <td><b>Customer Name</b></td>
                            <td><b>Invoice Date</b></td>
                        </tr>


                        <c:forEach var="invoice" items="${unprocessedInvoices}">
                            <tr>
                                <td>
                                    <a href="displayInvoice?invoiceNumber=${invoice.invoiceNumber}">Click to View</a>
                                </td>
                                <td>${invoice.user.firstName} ${invoice.user.lastName}</td>
                                <td>${invoice.invoiceDateDefaultFormat}</td>
                            </tr>
                        </c:forEach>

                    </table>
                </c:if>

                <form action="<c:url value='/admin'/>" method="post">
                    <button class="buttoncont"  type="submit">
                        Go Back to Menu
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