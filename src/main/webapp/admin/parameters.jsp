<jsp:include page="/includes/header.jsp" />
<%--<jsp:include page="/includes/column_left_admin.jsp" />--%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>

<!-- begin middle column -->

<section>
    <div class="small-container cart-page">
        <div class="row">
            <div class="col-2">
                <h1>FAVs report</h1>
                <p>Please enter dates using this format: yyyy-mm-dd.</p>

                <form action="<c:url value='/adminController/displayReport'/>" method="post">

                    <!-- Note the use of hidden fields to pass parameters -->
                    <input type="hidden" name="reportName" value="${param.reportName}">
                    <input type="hidden" name="reportTitle" value="${param.reportTitle}">

                    <label>Start Date</label>
                    <input type="text" size="10" maxlength=10
                           name="startDate" value="${currentYear}-01-01" required><br>

                    <label>End Date</label>
                    <input type="text" size="10" maxlength=10
                           name="endDate" value="${currentYear}-12-31" required><br>

                    <label>&nbsp;</label>
                    <button class="buttoncont"  type="submit">
                        Continue
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