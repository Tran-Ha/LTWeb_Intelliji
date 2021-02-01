<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>

<!doctype html>
<html class="no-js" lang="en">

<head>
    <title>Giỏ hàng</title>
    <%@ include file="head.jsp" %>
    <script>
        <c:if test="${cartNotification != null}">
        setTimeout(function () {
            alert("${cartNotification}");
        }, 0);
        <c:remove var="cartNotification"/>
        </c:if>
    </script>
</head>

<body class="cart">
<!-- Add your site or application content here -->
<!-- header-area-start -->
<header>
    <%@ include file="ajaxHeader.jsp" %>
</header>
<!-- header-area-end -->

<!-- breadcrumbs-area-start -->
<div class="breadcrumbs-area mb-70">
    <div class="container">
        <div class="row">
            <div class="col-lg-12">
                <div class="breadcrumbs-menu">
                    <ul>
                        <li><a href="default?page=home">Trang chủ</a></li>
                        <li><a href="default?page=cart" class="active">Giỏ hàng</a></li>
                    </ul>
                </div>
            </div>
        </div>
    </div>
</div>
<!-- breadcrumbs-area-end -->

<!-- cart-main-area-start -->
<div class="cart-main-area mb-70" style="background-color: #ededed">
    <div class="container">
        <div class="styles__StyledCartPage-sc-1n0ze23-0 BTbnH">
            <div class="cart">
                <div class="cart-inner">
                    <div class="styles__StyledCartProducts-p4m208-0 jgcBwz">
                        <h2 class="cart-products__title">Giỏ hàng <span
                                class="cart-products__count">(${cart == null ? 0 : cart.getTotalQuantity()} sản phẩm)</span>
                        </h2>
                        <div class="cart-products-inner" style="width: 1100px">
                            <div class="cart-products__group">
                                <ul class="cart-products__products">
                                    <c:forEach var="book" items="${cart.getBooks()}">
                                    <li class="cart-products__product">
                                        <div class="cart-products__inner" style="margin-bottom: 0px">
                                            <div class="cart-products__img">
                                                <a href="detailProduct?id=${book.id}">
                                                    <img src="${book.getMainImg()}" alt="${book.name}">
                                                </a>
                                            </div>
                                            <div class="cart-products__content">
                                                <div class="cart-products__content--inner">
                                                    <div class="cart-products__desc">
                                                        <a class="cart-products__name"
                                                           href="detailProduct?id=${book.id}">${book.name}</a>
                                                        <p class="cart-products__badge"></p>
                                                        <p class="cart-products__author">
                                                            <span>Tác giả: </span>
                                                            <c:forEach var="author" items="${book.authors}">
                                                                <a href="search?author=${author}">${author}</a>
                                                            </c:forEach>
                                                        </p>
                                                        <p class="cart-products__actions">
                                                            <a href="updateBookQuantity?page=cart&id=${book.id}&quantity=0">
                                                                <span class="cart-products__del">Xóa</span>
                                                            </a>
                                                            <span class="cart-products__buy-later">Để dành mua sau</span>
                                                        </p>
                                                    </div>
                                                    <div class="cart-products__details">
                                                        <div class="cart-products__pricess">
                                                            <p class="cart-products__real-prices">${cart.convertToMoney(book.priceSale)}đ</p>
                                                            <p class="cart-products__discount-prices">
                                                                <del>${cart.convertToMoney(book.price)}đ</del>
                                                                <span class="cart-products__percent-prices">-${book.getDiscount()}%</span>
                                                            </p>
                                                        </div>
                                                        <div class="cart-products__qty">
                                                            <div class="CartQty__StyledCartQty-o1bx97-0 iaIXXn">
                                                                <c:choose>
                                                                    <c:when test="${cart.getQuantityOfBook(book) == 0}">
                                                                        <span class="qty-decrease">-</span>
                                                                    </c:when>
                                                                    <c:otherwise>
                                                                        <a href="updateBookQuantity?page=cart&id=${book.id}&quantity=${cart.getQuantityOfBook(book) - 1}"><span
                                                                                class="qty-decrease">-</span></a>
                                                                    </c:otherwise>
                                                                </c:choose>
                                                                <form id="updateForm" method="get"
                                                                      action="updateBookQuantity" style="margin: auto">
                                                                    <input type="hidden" name="page" value="cart">
                                                                    <input type="hidden" name="id" value="${book.id}">
                                                                    <input type="text" name="quantity" class="qty-input"
                                                                           maxlength="2"
                                                                           value="${cart.getQuantityOfBook(book)}">
                                                                </form>
                                                                <c:choose>
                                                                <c:when test="${cart.getQuantityOfBook(book) == book.quantity}">
                                                                <span class="qty-increase ">+</span></div>
                                                            </c:when>
                                                            <c:otherwise>
                                                            <a href="updateBookQuantity?page=cart&id=${book.id}&quantity=${cart.getQuantityOfBook(book) + 1}"><span
                                                                    class="qty-increase ">+</span></a></div>
                                                        </c:otherwise>
                                                        </c:choose>
                                                    </div>
                                                </div>
                                            </div>
                                        </div>
                            </div>
                            <ul class="cart-products__gift-items"></ul>
                            </li>
                            <hr/>
                            </c:forEach>
                            </ul>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </div>
</div>
</div>

<c:choose>
    <c:when test="${cart.getTotalQuantity()>0}">
        <div class="container" style="background-color: #fff">
            <div class="row">
                <div class="col-lg-8 col-md-6 col-12">
                    <div class="buttons-cart mb-30">
                        <ul>
                            <li><a href="/Zoe/updateCart">Cập nhật giỏ hàng</a></li>
                            <li><a href="default?page=home">Tiếp tục mua hàng</a></li>
                        </ul>
                    </div>
                </div>
                <div class="col-lg-4 col-md-6 col-12">
                    <div class="cart_totals">
                        <h2>TỔNG CỘNG</h2>
                        <table>
                            <tbody>
                            <tr class="cart-subtotal">
                                <th>Thành tiền</th>
                                <td>
                                    <span class="amount">${cart == null ? 0 : cart.convertToMoney(cart.getTotalPrice())}đ</span>
                                </td>
                            </tr>
                            <tr class="shipping">
                                <th>Giao hàng</th>
                                <td>
                                    <ul id="shipping_method">
                                        <li style="margin-bottom: 0px ">
                                            <label>
                                                <span class="amount">20.000đ</span>
                                            </label>
                                        </li>
                                    </ul>
                                </td>
                            </tr>
                            <tr class="order-total">
                                <th>Tổng đơn hàng</th>
                                <td>
                                    <strong>
                                        <span class="amount">${cart == null || cart.getTotalPriceAndShipFee() == 20000 ? 0 : cart.convertToMoney(cart.getTotalPriceAndShipFee())}đ</span>
                                    </strong>
                                </td>
                            </tr>
                            </tbody>
                        </table>
                        <div class="wc-proceed-to-checkout">
                            <a href="#">Đặt hàng</a>
                        </div>
                        <br>
                    </div>
                </div>
            </div>
        </div>
    </c:when>
    <c:otherwise>
        <div class="container mb-40" style="text-align: center;">
            <div class="mtb-15" style="color: #0c1923;font-size: 22px;">Giỏ hàng của bạn còn trống</div>
            <a class="btn btn-primary" href="#" role="button" style="background: #d9440d; color: white;border: #c69500" class="mtb-15" >Mua ngay</a>
        </div>

    </c:otherwise>
</c:choose>
<!-- cart-main-area-end -->

<!-- footer-area-start -->
<%@ include file="footer.jsp" %>
<!-- footer-area-end -->

<!-- all js here -->
<%@ include file="script.jsp" %>
</body>

</html>