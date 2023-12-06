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
                <h1>Enter your name and contact information</h1>
                <tr>
                    <form action="<c:url value='/order/processUser' />" method=post>
                        <p id="required">Required <span class="required">*</span></p>

                        <div class="containerst concho">
                            <label>First Name</label>
                            <input type="text" name="firstName"  maxlength=20
                                   value="${user.firstName}" required>
                            <p class="required">*</p><br>
                        </div>

                        <div class="containerst concho">
                            <label>Last Name</label>
                            <input type="text" name="lastName" value="${user.lastName}" required>
                            <p class="required">*</p><br>
                        </div>

                        <div class="containerst concho">
                            <label>Email Address</label>
                            <input type="email" name="email" value="${user.email}" required>
                            <p class="required">*</p><br>
                        </div>

                        <div class="containerst concho">
                            <label>Company</label>
                            <input type="text" name="companyName" value="${user.companyName}">
                            <p class="required">&nbsp;</p><br>
                        </div>

                        <div class="containerst concho">
                            <label>Address1</label>
                            <input type="text" name="address1" value="${user.address1}" required>
                            <p class="required">*</p><br>
                        </div>

                        <div class="containerst concho">
                        <label>Address2</label>
                        <input type="text" name="address2" value="${user.address2}">
                        <p class="required">&nbsp;</p><br>
                        </div>

                            <div class="containerst concho">
                        <label>City</label>
                        <input type="text" name="city" value="${user.city}" required>
                        <p class="required">*</p><br></div>

                                <div class="containerst concho">
                        <label>State</label>
                        <input type="text" name="state" value="${user.state}" required>
                        <p class="required">*</p><br></div>

                                    <div class="containerst concho">
                        <label>Zip Code</label>
                        <input type="text" name="zip" value="${user.zip}" required>
                        <p class="required">*</p><br></div>

                                        <div class="containerst concho">
                        <label>Country</label>
                        <input type="text" name="country" value="${user.country}" required>
                        <p class="required">*</p><br></div>

                        <label>&nbsp;</label>
                        <button class="buttoncont"  type="submit">
                            Continue
                            <svg fill="currentColor" viewBox="0 0 24 24" class="icon1">
                                <path clip-rule="evenodd" d="M12 2.25c-5.385 0-9.75 4.365-9.75 9.75s4.365 9.75 9.75 9.75 9.75-4.365 9.75-9.75S17.385 2.25 12 2.25zm4.28 10.28a.75.75 0 000-1.06l-3-3a.75.75 0 10-1.06 1.06l1.72 1.72H8.25a.75.75 0 000 1.5h5.69l-1.72 1.72a.75.75 0 101.06 1.06l3-3z" fill-rule="evenodd"></path>
                            </svg>
                        </button><br>
                    </form>
                </tr>
            </div>
        </div>
    </div>
</section>

<!-- end middle column -->

<jsp:include page="/includes/footer.jsp" />