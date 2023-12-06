<jsp:include page="/includes/header.jsp" />
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>

<!-- begin middle column -->

<section id="admin">
  <div class="small-container cart-page">
    <div class="row">
      <div class="col-2">
        <h1>Your invoice</h1>
        <table>
          <tr>
            <td><b>Date</b></td>
            <td>${invoice.invoiceDate}</td>
            <td></td>
          </tr>
          <tr>
            <td><b>Ship To</b></td>
            <td>${invoice.user.addressHTMLFormat}</td>
            <td></td>
          </tr>
          <tr><td colspan="3"><hr></td></tr>
          <tr>
            <td><b>Qty</b></td>
            <td><b>Description</b></td>
            <td><b>Price</b></td>
          </tr>

          <c:forEach var="item" items="${invoice.lineItems}">
            <tr>
              <td>${item.quantity}</td>
              <td>${item.product.description}</td>
              <td>${item.totalCurrencyFormat}</td>
            </tr>
          </c:forEach>

          <tr><td colspan="3"><hr></td></tr>
          <tr>
            <td><b>Total</b></td>
            <td></td>
            <td><p>${invoice.invoiceTotalCurrencyFormat}</td>
          </tr>
        </table>

        <label>Payment information</label>
        <span>${invoice.user.creditCardType}: ${invoice.user.creditCardNumber}
    (${invoice.user.creditCardExpirationDate})</span><br>
        <label>Email Address</label>
        <span>${invoice.user.email}</span><br><br>

        <form action="processInvoice" method="post">
          <button class="buttoncont"  type="submit">
            Process Invoice
            <svg fill="currentColor" viewBox="0 0 24 24" class="icon1">
              <path clip-rule="evenodd" d="M12 2.25c-5.385 0-9.75 4.365-9.75 9.75s4.365 9.75 9.75 9.75 9.75-4.365 9.75-9.75S17.385 2.25 12 2.25zm4.28 10.28a.75.75 0 000-1.06l-3-3a.75.75 0 10-1.06 1.06l1.72 1.72H8.25a.75.75 0 000 1.5h5.69l-1.72 1.72a.75.75 0 101.06 1.06l3-3z" fill-rule="evenodd"></path>
            </svg>
          </button><br>
        </form>
        <form action="displayInvoices" method="post">
          <button class="buttoncont"  type="submit">
            View Unprocessed Invoices
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