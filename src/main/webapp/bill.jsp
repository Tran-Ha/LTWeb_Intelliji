<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions" %>
<%@ taglib prefix="s" uri="http://java.sun.com/jsp/jstl/core" %>
<!doctype html>
<html class="no-js" lang="en">
<html>

<head>
    <title>Chi tiết đơn hàng</title>
    <jsp:include page="head.jsp"/>

</head>

<body class="cart">
<jsp:include page="header.jsp"/>
<!-- breadcrumbs-area-start -->
<div class="breadcrumbs-area mb-70">
    <div class="container">
        <div class="row">
            <div class="col-lg-12">
                <div class="breadcrumbs-menu">
                    <ul>
                        <li><a href="index.html">Trang chủ</a></li>
                        <li><a href="#" class="active">Chi tiết đơn hàng</a></li>
                    </ul>
                </div>
            </div>
        </div>
    </div>
</div>
<!-- breadcrumbs-area-end -->
<!-- entry-header-area-start -->
<div class="entry-header-area">
    <div class="container">
        <div class="row">
            <div class="col-lg-12">
                <div class="entry-header-title">
                    <h2>Chi tiết đơn hàng</h2>
                </div>
            </div>
        </div>
    </div>
</div>
<!-- entry-header-area-end -->
<!-- cart-main-area-start -->
<div class="cart-main-area mb-70">

    <div class="container Kxluz" style="background-color: #ededed">
        <div class="heading"><span>Chi tiết đơn hàng #237264668</span><span class="split">-</span><span class="status">Chờ xác nhận</span></div>
        <div class="created-date">Ngày đặt hàng: 19:17 11/08/2020</div>
        <div class="styles__StyledGroupSection-ri73gr-0 kHWfJY">
            <div class="styles__StyledSection-ri73gr-1 ipnhKS">
                <div class="title">Địa chỉ người nhận</div>
                <div class="content">
                    <p class="name">Võ Duy Tân</p>
                    <p class="address"><span>Địa chỉ: </span>đình Thanh Ba, Thị trấn Cần Giuộc, Huyện Cần Giuộc,
                        Long An, Việt Nam</p>
                    <p class="phone"><span>Điện thoại: </span>0786538845</p>
                </div>
            </div>
            <div class="styles__StyledSection-ri73gr-1 ipnhKS">
                <div class="title">Hình thức giao hàng</div>
                <div class="content">
                    <p>Giao vào Thứ ba, 18/08</p>
                    <p>Phí vận chuyển: 44.000đ</p>
                </div>
            </div>
            <div class="styles__StyledSection-ri73gr-1 ipnhKS">
                <div class="title">Hình thức thanh toán</div>
                <div class="content">
                    <p class="">Thanh toán tiền mặt khi nhận hàng</p>
                </div>
            </div>
        </div>
        <table class="styles__StyledProductList-ri73gr-3 Oesya">
            <thead>
            <tr>
                <th>Sản phẩm</th>
                <th>Giá</th>
                <th>Số lượng</th>
                <th>Giảm giá</th>
                <th>Tạm tính</th>
            </tr>
            </thead>
            <tbody>
            <tr>
                <td>
                    <div class="product-item"><img src="./img/product/1.jpg" alt="">
                        <div class="product-info"><a class="product-name" href="">Sách Những tấm gương tuổi
                            trẻ</a>
                            <p class="product-seller">Cung cấp bởi <a href="#">NXB Trẻ</a></p>
                            <p class="product-sku">Sku: 1735431807858</p>
                        </div>
                    </div>
                </td>
                <td class="price">209.000 ₫</td>
                <td class="quantity">1</td>
                <td class="discount-amount">0 ₫</td>
                <td class="raw-total">209.000 ₫</td>
            </tr>
            </tbody>
            <tfoot>
            <tr>
                <td colspan="4"><span>Tạm tính</span></td>
                <td>209.000 ₫</td>
            </tr>
            <tr>
                <td colspan="4"><span>Phí vận chuyển</span></td>
                <td>44.000 ₫</td>
            </tr>
            <tr>
                <td colspan="4"><span>Tổng cộng</span></td>
                <td><span class="sum">253.000 ₫</span></td>
            </tr>

            <tr>
                <td colspan="4"></td>
                <td><span><button id="cancel">Huỷ đơn hàng</button></span></td>
            </tr>
            </tfoot>
        </table><a class="view-list-order" href="my-account.html">&lt;&lt; Quay lại đơn hàng của tôi</a>
    </div>

</div>

<!-- footer-area-start -->
<jsp:include page="footer.jsp"/>
<!-- footer-area-end -->

<%--js--%>
<jsp:include page="script.jsp"/>

<a id="scrollUp" href="#top" style="position: fixed; z-index: 2147483647; display: block;"><i
        class="fa fa-angle-up"></i></a>
</body>

</html>