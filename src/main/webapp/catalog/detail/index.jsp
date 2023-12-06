<jsp:include page="/includes/header.jsp" />
<!-- start the middle column -->
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<section>
    <div class="small-container single-product">
        <div class="row">
            <div class="col-2">
<%--                <jsp:include page="/includes/product_table.jsp" />--%>
                <div class="card">
                    <div class="card-img">
                        <img src="../../images/${product.imageURL}" width="175" height="175" alt="Album Image">
                    </div>
                    <div class="card-title"><h2>${product.albumName}</h2></div>
                    <div class="card-subtitle">
                        <h3>Product Details <i class="fa fa-indent"></i></h3>
                        <p>${product.detail}</p>
                    </div>
                    <hr class="card-divider">
                    <div class="card-footer">
                        <div class="card-price">
                            <p>${product.productType}</p>
                            <p>${product.priceCurrencyFormat}</p>
                        </div>
                    </div>
                </div>
                <form method="post" action="<c:url value='/order/addItem'/>">
                    <input type="hidden" name="productCode" value="${product.code}">
                    <button class="button conga" >
                        <span class="button_lg">
                            <span class="button_sl"></span>
                            <span class="button_text">ADD TO CART</span>
                        </span>
                    </button>
                </form>
                <a href="<c:url value='/catalog/product/${product.code}/listen' />">
                    <button class="button conga" >
                        <span class="button_lg">
                            <span class="button_sl"></span>
                            <span class="button_text">ADD TO FAVOURITE</span>
                        </span>
                    </button>
                </a>


            </div>
        </div>
    </div>
    <p class="clear_both">
    Yonex - Your best choice of relentless attack
    </p>
</section>

<!-- end the middle column -->

<jsp:include page="/includes/footer.jsp" />

