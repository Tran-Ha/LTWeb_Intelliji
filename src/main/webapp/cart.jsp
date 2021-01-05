<%@ page contentType="text/html;charset=UTF-8" language="java" %>

<!doctype html>
<html class="no-js" lang="en">

<head>
    <title>Giỏ hàng</title>
    <%@ include file="head.jsp" %>
</head>

<body class="cart">
<!-- Add your site or application content here -->
<!-- header-area-start -->
<header>
    <%@ include file="header.jsp" %>
</header>
<!-- header-area-end -->

<!-- breadcrumbs-area-start -->
<div class="breadcrumbs-area mb-70">
    <div class="container">
        <div class="row">
            <div class="col-lg-12">
                <div class="breadcrumbs-menu">
                    <ul>
                        <li><a href="home.html">Trang chủ</a></li>
                        <li><a href="#" class="active">Giỏ hàng</a></li>
                    </ul>
                </div>
            </div>
        </div>
    </div>
</div>
<!-- breadcrumbs-area-end -->

<   <!-- cart-main-area-start -->
<div class="cart-main-area mb-70" style="background-color: #ededed">
    <div class="container">
        <div class="styles__StyledCartPage-sc-1n0ze23-0 BTbnH">
            <div class="cart">
                <div class="cart-inner">
                    <div class="styles__StyledCartProducts-p4m208-0 jgcBwz">
                        <h2 class="cart-products__title">Giỏ hàng <span class="cart-products__count">(1 sản
                                    phẩm)</span></h2>
                        <div class="cart-products-inner" style="width: 1100px">
                            <div class="cart-products__group">
                                <ul class="cart-products__products">

                                    <li class="cart-products__product">
                                        <div class="cart-products__inner">
                                            <div class="cart-products__img"><a
                                                    href="/nhung-giac-mo-o-hieu-sach-morisaki-p614854.html?spid=614857"><img
                                                    src="img/product/1.jpg"
                                                    alt="Những Giấc Mơ Ở Hiệu Sách Morisaki"></a></div>
                                            <div class="cart-products__content">
                                                <div class="cart-products__content--inner">
                                                    <div class="cart-products__desc"><a class="cart-products__name"
                                                                                        href="/nhung-giac-mo-o-hieu-sach-morisaki-p614854.html?spid=614857">Những
                                                        Giấc Mơ Ở Hiệu Sách Morisaki</a>
                                                        <p class="cart-products__badge"></p>
                                                        <p class="cart-products__author"><span>Tác giả: </span><a
                                                                href="/author/yagisawa-satoshi.html">Yagisawa
                                                            Satoshi</a></p>
                                                        <p class="cart-products__actions"><span
                                                                class="cart-products__del">Xóa</span><span
                                                                class="cart-products__buy-later">Để dành mua
                                                                    sau</span></p>
                                                    </div>
                                                    <div class="cart-products__details">
                                                        <div class="cart-products__pricess">
                                                            <p class="cart-products__real-prices">43.800đ</p>
                                                            <p class="cart-products__discount-prices">
                                                                <del>60.000đ</del><span
                                                                    class="cart-products__percent-prices">-27%</span>
                                                            </p>
                                                        </div>
                                                        <div class="cart-products__qty">
                                                            <div class="CartQty__StyledCartQty-o1bx97-0 iaIXXn">
                                                                    <span
                                                                            class="qty-decrease qty-disable">-</span><input
                                                                    type="tel" class="qty-input" value="1"><span
                                                                    class="qty-increase ">+</span></div>
                                                        </div>
                                                    </div>
                                                </div>
                                            </div>
                                        </div>
                                        <ul class="cart-products__gift-items"></ul>
                                    </li>

                                </ul>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </div>
</div>

<div class="container" style="background-color: #fff">
    <div class="row">
        <div class="col-lg-8 col-md-6 col-12">
            <div class="buttons-cart mb-30">
                <ul>
                    <li><a href="#">Cập nhật giỏ hàng</a></li>
                    <li><a href="#">Tiếp tục mua hàng</a></li>
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
                            <span class="amount">215.000đ</span>
                        </td>
                    </tr>
                    <tr class="shipping">
                        <th>Giao hàng</th>
                        <td>
                            <ul id="shipping_method">
                                <li style="margin-bottom: 0px ">
                                    <label>
                                        <span class="amount">17.000đ</span>
                                    </label>
                                </li>
                            </ul>
                        </td>
                    </tr>
                    <tr class="order-total">
                        <th>Tổng đơn hàng</th>
                        <td>
                            <strong>
                                <span class="amount">232.000đ</span>
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
<!-- cart-main-area-end -->

<!-- footer-area-start -->
<%@ include file="footer.jsp" %>
<!-- footer-area-end -->

<!-- all js here -->
<%@ include file="script.jsp" %>
</body>

</html>