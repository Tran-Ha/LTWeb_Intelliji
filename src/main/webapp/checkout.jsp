<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib prefix ="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix = "fn" uri = "http://java.sun.com/jsp/jstl/functions" %>

<!doctype html>
<html class="no-js" lang="en">
<head>
    <meta charset="utf-8">
    <meta http-equiv="x-ua-compatible" content="ie=edge">
    <title>Thanh toán</title>
    <meta name="description" content="">
    <meta name="viewport" content="width=device-width, initial-scale=1">

    <!-- Favicon -->
    <link rel="icon" type="image/gif" sizes="16x16" href="img/icon/icon.gif">
    <!-- all css here -->
    <!-- bootstrap v3.3.6 css -->
    <link rel="stylesheet" href="css/bootstrap.min.css">
    <!-- animate css -->
    <link rel="stylesheet" href="css/animate.css">
    <!-- meanmenu css -->
    <link rel="stylesheet" href="css/meanmenu.min.css">
    <!-- owl.carousel css -->
    <link rel="stylesheet" href="css/owl.carousel.css">
    <!-- font-awesome css -->
    <link rel="stylesheet" href="css/all.min.css">
    <link rel="stylesheet" href="css/fontawesome.min.css">
    <!-- flexslider.css-->
    <link rel="stylesheet" href="css/flexslider.css">
    <!-- chosen.min.css-->
    <link rel="stylesheet" href="css/chosen.min.css">
    <!-- style css -->
    <link rel="stylesheet" href="style.css">
    <!-- responsive css -->
    <link rel="stylesheet" href="css/responsive.css">
    <!-- modernizr css -->
    <script src="js/vendor/modernizr-2.8.3.min.js"></script>
</head>
<body class="checkout">
<!--[if lt IE 8]>
<p class="browserupgrade">You are using an <strong>outdated</strong> browser. Please <a href="http://browsehappy.com/">upgrade your browser</a> to improve your experience.</p>
<![endif]-->

<!-- Add your site or application content here -->
<!-- header-area-start -->
<header>
    <!-- header-top-area-start -->
    <div class="header-top-area">
        <div class="container">
            <div class="row">
                <div class="col-lg-6 col-md-6 col-12">
                </div>
                <div class="col-lg-6 col-md-6 col-12">
                    <div class="account-area text-right">
                        <ul>
                            <li><a href="my-account.html">Tài khoản</a></li>
                            <li><a href="checkout.html">Thanh toán</a></li>
                            <li><a href="login_signup.html">Đăng nhập</a></li>
                        </ul>
                    </div>
                </div>
            </div>
        </div>
    </div>
    <!-- header-top-area-end -->
    <!-- header-mid-area-start -->
    <div class="header-mid-area ptb-20">
        <div class="container">
            <div class="row">

                <div class="col-lg-3 col-md-5 col-12 ">
                    <div class="logo-area text-center logo-xs-mrg">
                        <a href="home.html">
                            <div class="logo-web">Zoe</div>
                            <span class="slogan">A book - A life</span>
                        </a>
                    </div>
                </div>

                <div class="col-lg-6 col-md-4 col-12">
                    <div class="header-search ptb-10">
                        <form action="#" method="GET">
                            <input type="text" placeholder="Tìm sản phẩm, danh mục, thương hiệu,..." />
                            <a href="#"><i class="fa fa-search"></i></a>
                        </form>
                    </div>
                </div>

                <div class="col-lg-3 col-md-3 col-12">
                    <div class="my-cart ptb-10">
                        <ul>
                            <li><a href="#"><i class="fa fa-shopping-cart"></i>Giỏ hàng</a>
                                <span>2</span>
                                <div class="mini-cart-sub">
                                    <div class="cart-product">
                                        <div class="single-cart">
                                            <div class="cart-img">
                                                <a href="product-details.html"><img src="img/product/1.jpg" alt="book" /></a>
                                            </div>
                                            <div class="cart-info">
                                                <h5><a href="#">Joust Duffle Bag</a></h5>
                                                <p>1 x £60.00</p>
                                            </div>
                                            <div class="cart-icon">
                                                <a href="#"><i class="fa fa-remove"></i></a>
                                            </div>
                                        </div>
                                        <div class="single-cart">
                                            <div class="cart-img">
                                                <a href="product-details.html"><img src="img/product/3.jpg" alt="book" /></a>
                                            </div>
                                            <div class="cart-info">
                                                <h5><a href="#">Chaz Kangeroo Hoodie</a></h5>
                                                <p>1 x £52.00</p>
                                            </div>
                                            <div class="cart-icon">
                                                <a href="#"><i class="fa fa-remove"></i></a>
                                            </div>
                                        </div>
                                    </div>
                                    <div class="cart-totals">
                                        <h5>Thành tiền <span>£12.00</span></h5>
                                    </div>
                                    <div class="cart-bottom">
                                        <a class="view-cart" href="cart.html">Xem giỏ hàng</a>
                                        <a href="checkout.html">Thanh toán</a>
                                    </div>
                                </div>
                            </li>
                        </ul>
                    </div>
                </div>
            </div>
        </div>
    </div>
    <!-- header-mid-area-end -->
    <!-- main-menu-area-start -->
    <div class="main-menu-area d-md-none d-none d-lg-block sticky-header-1" id="header-sticky">
        <div class="container">
            <div class="row">
                <div class="col-lg-12">
                    <div class="menu-area">
                        <nav>
                            <ul>
                                <li class="active"><a href="home.html">Trang chủ</a>
                                </li>
                                <li><a href="shop-list.html">Sách Tiếng Việt<i
                                        class="fa fa-angle-down"></i></a>
                                    <div class="mega-menu">
                                            <span>
                                                <a href="shop.html" class="title">Sách mới<i class="fas fa-book-open"></i></a>
                                            </span>
                                        <span>
                                                <a href="shop.html" class="title">bán chạy<i class="fas fa-heart"></i> </a>
                                            </span>
                                        <span>
                                                <a href="shop.html" class="title">Tuyển chọn<i class="fas fa-bookmark"></i></a>
                                            </span>
                                        <span>
                                                <a href="shop.html" class="title">Giảm giá<i class="fas fa-tags"></i></a>
                                            </span>
                                        <span>
                                                <a href="shop-list.html" class="title">văn học</a>
                                                <a href="shop.html">Tiểu thuyết</a>
                                                <a href="shop.html">Truyện ngắn</a>
                                                <a href="shop.html">Kinh điển</a>
                                                <a href="shop-list.html" class="more">Xem thêm...</a>
                                            </span>
                                        <span>
                                                <a href="shop-list.html" class="title">kinh tế</a>
                                                <a href="shop.html">Kinh doanh</a>
                                                <a href="shop.html">Quản trị</a>
                                                <a href="shop.html">Marketing</a>
                                                <a href="shop-list.html" class="more">Xem thêm...</a>
                                            </span>
                                        <span>
                                                <a href="shop-list.html" class="title">kĩ năng</a>
                                                <a href="shop.html">Kỹ năng sống</a>
                                                <a href="shop.html">Tâm lí</a>
                                                <a href="shop.html">Sống đẹp</a>
                                                <a href="shop-list.html" class="more">Xem thêm...</a>
                                            </span>
                                        <span>
                                                <a href="shop-list.html" class="title">thiếu nhi</a>
                                                <a href="shop.html">Cổ tích</a>
                                                <a href="shop.html">Truyện tranh</a>
                                                <a href="shop.html">Luyện chữ</a>
                                                <a href="shop-list.html" class="more">Xem thêm...</a>
                                            </span>
                                        <span>
                                                <a href="shop-list.html" class="title">Thường thức</a>
                                                <a href="shop.html">Giáo khoa</a>
                                                <a href="shop.html">Mẹ và bé</a>
                                                <a href="shop.html">Gia đình</a>
                                                <a href="shop-list.html" class="more">Xem thêm...</a>
                                            </span>
                                        <span>
                                                <a href="shop-list.html" class="title">học ngoại ngữ</a>
                                                <a href="shop.html">Tiếng Anh</a>
                                                <a href="shop.html">Tiếng Nhật</a>
                                                <a href="shop.html">Từ điển</a>
                                                <a href="shop-list.html" class="more">Xem thêm...</a>
                                            </span>
                                        <span>
                                                <a href="shop-list.html" class="title">tổng hợp</a>
                                                <a href="shop.html">Âm nhạc - Hội họa</a>
                                                <a href="shop.html">Chính trị - Pháp lý</a>
                                                <a href="shop.html">Nông - Lâm - Ngư nghiệp</a>
                                                <a href="shop-list.html" class="more">Xem thêm...</a>
                                            </span>

                                    </div>
                                </li>
                                <li><a href="shop-list.html">English books<i class="fa fa-angle-down"></i></a>
                                    <div class="mega-menu">
                                            <span>
                                                <a href="shop-list.html" class="title">Business - Economics</a>
                                                <a href="shop.html">Economics</a>
                                                <a href="shop.html">Finance </a>
                                                <a href="shop.html">Investment</a>
                                                <a href="shop-list.html" class="more">See more</a>
                                            </span>
                                        <span>
                                                <a href="shop-list.html" class="title">How-to Self help</a>
                                                <a href="shop.html">Communication</a>
                                                <a href="shop.html">Creativity</a>
                                                <a href="shop.html">Emotions</a>
                                                <a href="shop-list.html" class="more">See more</a>
                                            </span>
                                        <span>
                                                <a href="shop-list.html" class="title">Science - Technology</a>
                                                <a href="shop.html">Astronomy</a>
                                                <a href="shop.html">Internet - Computer</a>
                                                <a href="shop.html">Ecology</a>
                                                <a href="shop-list.html" class="more">See more</a>
                                            </span>
                                        <span>
                                                <a href="shop-list.html" class="title">Travel - Holiday</a>
                                                <a href="shop.html">American</a>
                                                <a href="shop.html">Asia</a>
                                                <a href="shop.html">Discovery</a>
                                                <a href="shop-list.html" class="more">See more</a>
                                            </span>
                                        <span>
                                                <a href="shop-list.html" class="title">Magazines</a>
                                                <a href="shop.html">Fashion</a>
                                                <a href="shop.html">Science</a>
                                                <a href="shop.html">Economics</a>
                                                <a href="shop-list.html" class="more">See more</a>
                                            </span>
                                        <span>
                                                <a href="shop-list.html" class="title">Education - Teaching</a>
                                                <a href="shop.html">ELTs</a>
                                                <a href="shop.html">Grammar</a>
                                                <a href="shop.html">Teaching</a>
                                                <a href="shop-list.html" class="more">See more</a>
                                            </span>
                                    </div>
                                </li>
                                <li><a href="#">Blog<i class="fa fa-angle-down"></i></a>
                                    <div class="sub-menu sub-menu-2">
                                        <ul>
                                            <li><a href="about.html">Giới thiệu</a></li>
                                            <li><a href="blog-details.html">Hội sách tháng 10/2020</a></li>
                                            <li><a href="blog-details.html">Hội sách tháng 11/2020</a></li>
                                            <li><a href="blog-details.html">Hội sách tháng 12/2020</a></li>
                                        </ul>
                                    </div>
                                </li>
                                <li><a href="contact.html">Liên hệ</a>
                                </li>
                            </ul>
                        </nav>
                    </div>

                </div>
            </div>
        </div>
    </div>
    <!-- main-menu-area-end -->
    <!-- mobile-menu-area-start -->
    <div class="mobile-menu-area d-lg-none d-block fix">
        <div class="container">
            <div class="row">
                <div class="col-lg-12">
                    <div class="mobile-menu">
                        <nav id="mobile-menu-active">
                            <ul id="nav">
                                <li><a href="home.html">Home</a>
                                </li>
                                <li><a href="product-details.html">Sách Tiếng Việt</a>
                                    <ul>
                                        <li><a href="shop.html">Sách mới <i class="fas fa-book-open"></i></a></li>
                                        <li><a href="shop.html">Bán chạy <i class="fas fa-heart"></i></a></li>
                                        <li><a href="shop.html">Tuyển chọn <i class="fas fa-bookmark"></i></a></li>
                                        <li><a href="shop.html">Giảm giá <i class="fas fa-tags"></i></a></li>
                                        <li><a href="shop.html">Văn học</a></li>
                                        <li><a href="shop.html">Kinh tế</a></li>
                                        <li><a href="shop.html">Kỹ năng</a></li>
                                        <li><a href="shop.html">Thiếu nhi</a></li>
                                        <li><a href="shop.html">Thường thức</a></li>
                                        <li><a href="shop.html">Học ngoại ngữ</a></li>
                                        <li><a href="shop.html">Tổng hợp</a></li>
                                    </ul>
                                </li>
                                <li><a href="product-details.html">English books</a>
                                    <ul>
                                        <li><a href="shop.html">Business - Economics</a></li>
                                        <li><a href="shop.html">How-to Self help</a></li>
                                        <li><a href="shop.html">Science - Technology</a></li>
                                        <li><a href="shop.html">Travel - Holiday</a></li>
                                        <li><a href="shop.html">Magazines</a></li>
                                        <li><a href="shop.html">Education - Teaching</a></li>
                                    </ul>
                                </li>
                                <li><a href="#">Blog</a>
                                    <ul>
                                        <li><a href="blog.html">Giới thiệu</a></li>
                                        <li><a href="blog-details.html">Hội sách tháng 10/2020</a></li>
                                        <li><a href="blog-details.html">Hội sách tháng 11/2020</a></li>
                                        <li><a href="blog-details.html">Hội sách tháng 12/2020</a></li>
                                    </ul>
                                </li>
                                <li><a href="product-details.html">Liên hệ</a>
                                </li>
                            </ul>
                        </nav>
                    </div>
                </div>
            </div>
        </div>
    </div>
    <!-- mobile-menu-area-end -->
</header>
<!-- header-area-end -->
<!-- breadcrumbs-area-start -->
<div class="breadcrumbs-area mb-70">
    <div class="container">
        <div class="row">
            <div class="col-lg-12">
                <div class="breadcrumbs-menu">
                    <ul>
                        <li><a href="#">Trang chủ</a></li>
                        <li><a href="#" class="active">Thanh toán</a></li>
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
                    <h2>Thanh toán</h2>
                </div>
            </div>
        </div>
    </div>
</div>
<!-- entry-header-area-end -->
<!-- coupon-area-area-start -->
<div class="coupon-area mb-70">
    <div class="container">
        <div class="row">
            <div class="col-lg-12">
                <div class="coupon-accordion">
                    <h3><span id="showlogin">Nhấn vào để đăng nhập</span></h3>
                    <div class="coupon-content" id="checkout-login">
                        <div class="coupon-info">
                            <p class="coupon-text"></p>
                            <form action="#">
                                <p class="form-row-first">
                                    <label>Email <span class="required">*</span></label>
                                    <input type="email" required="">
                                </p>
                                <p class="form-row-last">
                                    <label>Mật khẩu  <span class="required">*</span></label>
                                    <input type="text" required>
                                </p>
                                <p class="form-row">
                                    <input type="submit" name ="login" value="Đăng nhập">
                                    <label>
                                        <input type="checkbox">
                                        Lưu tài khoản
                                    </label>
                                </p>
                                <p class="lost-password">
                                    <a href="forget-password.html">Quên mật khẩu?</a>
                                </p>
                            </form>
                        </div>
                    </div>

                    <h3><span id="showsignup">Nhấn vào để đăng ký</span></h3>
                    <div class="coupon-content" id="checkout-signup">
                        <div class="coupon-info">
                            <p class="coupon-text"></p>
                            <form action="#">
                                <div class="row">
                                    <div class="col-lg-6">
                                        <p class="form-row-first">
                                            <label>Họ tên <span class="required">*</span></label>
                                            <input type="text" required>
                                        </p>
                                    </div>
                                    <div class="col-lg-6">
                                        <p class="form-row-first">
                                            <label>Ngày sinh <span class="required">*</span></label>
                                            <input type="date" required="">
                                        </p>
                                    </div>
                                </div>

                                <div class="row">
                                    <div class="col-lg-6">
                                        <p class="form-row-first">
                                            <label>Email <span class="required">*</span></label>
                                            <input type="email" required="">
                                        </p>
                                    </div>
                                    <div class="col-lg-6">
                                        <p class="form-row-first">
                                            <label>Số điện thoại <span class="required">*</span></label>
                                            <input type="text" required="">
                                        </p>
                                    </div>
                                </div>

                                <div class="row">
                                    <div class="col-lg-6">
                                        <p class="form-row-first">
                                            <label>Địa chỉ<span class="required">*</span></label>
                                            <input type="text" required="">
                                        </p>
                                    </div>
                                    <div class="col-lg-6">
                                        <p class="form-row-first">
                                            <label>Thành phố<span class="required">*</span></label>
                                            <input type="text" required="">
                                        </p>
                                    </div>
                                </div>

                                <p class="form-row-last">
                                    <label>Mật khẩu  <span class="required">*</span></label>
                                    <input type="password">
                                </p>

                                <p class="form-row-last">
                                    <label>Xác nhận mật khẩu  <span class="required">*</span></label>
                                    <input type="password">
                                </p>
                                <p class="form-row">
                                    <input type="submit" value="Đăng ký" name="signup" style="margin-left: 15px">
                                </p>
                            </form>
                        </div>
                    </div>

                    <h3><span id="showcoupon">Nhập mã giảm giá</span></h3>
                    <div class="coupon-checkout-content" id="checkout_coupon">
                        <div class="coupon-info">
                            <form action="#">
                                <p class="checkout-coupon">
                                    <input type="text" placeholder="Mã giảm giá">
                                    <input type="submit" value="Sử dụng">
                                </p>
                            </form>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </div>
</div>
<!-- coupon-area-area-end -->
<!-- checkout-area-start -->
<div class="checkout-area mb-70">
    <div class="container">
        <div class="row">
            <div class="col-12">
                <form action="#">
                    <div class="row">
                        <div class="col-lg-6 col-md-12 col-12">
                            <div class="checkbox-form">
                                <h3>Thông tin khách hàng</h3>
                                <div class="row">
                                    <div class=" col-lg-12">
                                        <div class="checkout-form-list">
                                            <label>Họ và tên <span class="required">*</span></label>
                                            <input type="text" placeholder="" required="">
                                        </div>
                                    </div>

                                    <div class="col-lg-12 col-md-12 col-12">
                                        <div class="checkout-form-list">
                                            <label>Địa chỉ <span class="required">*</span></label>
                                            <input type="text" placeholder="Số nhà, đường, phường (xã), quận (huyện)" required="">
                                        </div>
                                    </div>

                                    <div class="col-lg-6 col-md-6 col-12">
                                        <div class="checkout-form-list">
                                            <label>Tỉnh (Thành phố)<span class="required">*</span></label>
                                            <input type="text" placeholder="" required="">
                                        </div>
                                    </div>

                                    <div class="col-lg-6 col-md-6 col-12">
                                        <div class="checkout-form-list">
                                            <label>Email <span class="required">*</span></label>
                                            <input type="email" placeholder="" required="">
                                        </div>
                                    </div>
                                    <div class="col-lg-6 col-md-6 col-12">
                                        <div class="checkout-form-list">
                                            <label>Số điện thoại  <span class="required">*</span></label>
                                            <input type="text" placeholder="" required="">
                                        </div>
                                    </div>

                                </div>
                                <div class="different-address">
                                    <div class="ship-different-title">
                                        <h3>
                                            <label>Giao hàng đến địa chỉ khác?</label>
                                            <input type="checkbox" id="ship-box">
                                        </h3>
                                    </div>
                                    <div class="row" id="ship-box-info" style="display: none;">
                                        <div class=" col-lg-12">

                                        </div>

                                        <div class="col-lg-12 col-md-12 col-12">
                                            <div class="checkout-form-list">
                                                <label>Địa chỉ <span class="required">*</span></label>
                                                <input type="text" placeholder="Số nhà, đường, phường (xã), quận (huyện)" required="">
                                            </div>
                                        </div>

                                        <div class="col-lg-6 col-md-6 col-12">
                                            <div class="checkout-form-list">
                                                <label>Tỉnh (Thành phố)<span class="required">*</span></label>
                                                <input type="text" placeholder="" required="">
                                            </div>
                                        </div>


                                    </div>
                                    <div class="order-notes">
                                        <div class="checkout-form-list">
                                            <label>Ghi chú</label>
                                            <textarea placeholder="Lưu ý cho shop hoặc đơn vị giao hàng, ..." rows="10" cols="30" id="checkout-mess"></textarea>
                                        </div>
                                    </div>
                                </div>
                            </div>
                        </div>
                        <div class="col-lg-6 col-md-12 col-12">
                            <div class="your-order">
                                <h3>Đơn hàng</h3>
                                <div class="your-order-table table-responsive">
                                    <table>
                                        <thead>
                                        <tr>
                                            <th class="product-name">Sản phẩm</th>
                                            <th class="product-total">Thành tiền</th>
                                        </tr>
                                        </thead>
                                        <tbody>
                                        <tr class="cart_item">
                                            <td class="product-name">
                                                Khéo ăn nói sẽ có được thiên hạ <strong class="product-quantity"> × 1</strong>
                                            </td>
                                            <td class="product-total">
                                                <span class="amount">165.000đ</span>
                                            </td>
                                        </tr>
                                        <tr class="cart_item">
                                            <td class="product-name">
                                                Kỹ thuật lập tình<strong class="product-quantity"> × 1</strong>
                                            </td>
                                            <td class="product-total">
                                                <span class="amount">350.000đ</span>
                                            </td>
                                        </tr>
                                        </tbody>
                                        <tfoot>
                                        <tr class="cart-subtotal">
                                            <th>Tạm tính</th>
                                            <td><span class="amount">515.000đ</span></td>
                                        </tr>
                                        <tr class="shipping">
                                            <th>Phí giao hàng</th>
                                            <td>
                                                <ul>
                                                    <li>
                                                        <input type="radio" name="fee-ship" id="fsA">
                                                        <label for="fsA">
                                                            Tỷ lệ cố định: <span class="amount">15.000đ</span>
                                                        </label>
                                                    </li>
                                                    <li>
                                                        <input type="radio" name="fee-ship" id="fsB">
                                                        <label for="fsB">Miễn phí</label>
                                                    </li>
                                                    <li></li>
                                                </ul>
                                            </td>
                                        </tr>
                                        <tr class="order-total">
                                            <th>Tổng đơn hàng</th>
                                            <td><strong><span class="amount">530.000đ</span></strong>
                                            </td>
                                        </tr>
                                        </tfoot>
                                    </table>
                                </div>
                                <div class="payment-method">
                                    <div class="payment-accordion">
                                        <div class="panel panel-default">
                                            <div class="pay">
                                                <input type="radio" name="payment" id="radioOne">
                                                <label for="radioOne"><p>Thanh toán khi nhận hàng</p></label>
                                            </div>
                                            <div class="pay">
                                                <input type="radio" name="payment" id="radioTwo">
                                                <label for="radioTwo"><p>Thanh toán qua Internet Banking. (VietcomBank, BIDV)</p></label>
                                            </div>
                                            <div class="pay">
                                                <input type="radio" name="payment" id="radioThree">
                                                <label for="radioThree"><p>Thanh toán qua ví Momo.</p></label>
                                            </div>
                                        </div>
                                    </div>
                                    <div class="order-button-payment">
                                        <input type="submit" value="Đặt hàng">
                                    </div>
                                </div>
                            </div>
                        </div>
                    </div>
                </form>
            </div>
        </div>
    </div>
</div>
<!-- checkout-area-end -->
<!-- footer-area-start -->
<footer>
    <!-- footer-top-start -->
    <div class="footer-top">
        <div class="container">
            <div class="row">
                <div class="col-lg-12">
                    <div class="footer-top-menu bb-2">
                        <nav>
                            <ul>
                                <li><a href="#">Trang chủ</a></li>
                                <li><a href="#">Liên hệ</a></li>
                                <li><a href="#">Blog</a></li>
                            </ul>
                        </nav>
                    </div>
                </div>
            </div>
        </div>
    </div>
    <!-- footer-top-start -->
    <!-- footer-mid-start -->
    <div class="footer-mid ptb-20">
        <div class="container">
            <div class="row">
                <div class="col-lg-8 col-md-12">
                    <div class="row">
                        <div class="col-lg-8 col-md-8 col-12">
                            <div class="single-footer br-2 xs-mb">
                                <div class="footer-title mb-20">
                                    <h3>Về chúng tôi</h3>
                                </div>
                                <div class="footer-mid-menu">
                                    <p>Zoe nhận đặt hàng trực tuyến và giao hàng tận nơi,<br>
                                        có hỗ trợ mua và nhận hàng trực tiếp tại cửa hàng chính.</p>
                                    <h3>KẾT NỐI VỚI CHÚNG TÔI</h3>
                                    <p>
                                        <a rel="noreferrer" href="" class="icon" target="_blank" title="Facebook"><i class="fab fa-facebook-f" style="color: blue;"></i></a>
                                        <a rel="noreferrer" href="" class="icon" target="_blank" title="Youtube"><i class="fab fa-youtube " style="color: red;"></i></a>
                                        <a rel="noreferrer" href="" class="icon" target="_blank" title="Zalo"><img src="img/icon/zalo.png" alt="Zalo" srcset="" style="width: 22px;height: 22px;margin-bottom: 7px;"></a>
                                    </p>
                                </div>
                            </div>
                        </div>
                        <!-- <div class="col-lg-4 col-md-4 col-12">
                            <div class="single-footer br-2 xs-mb">
                                <div class="footer-title mb-20">
                                    <h3>Công ty</h3>
                                </div>
                                <div class="footer-mid-menu">
                                    <ul>
                                        <li><a href="contact.html">Liên hệ</a></li>
                                        <li><a href="#">Bản đồ</a></li>
                                        <li><a href="#">Cửa hàng</a></li>
                                        <li><a href="register.html">Tài khoản</a></li>
                                    </ul>
                                </div>
                            </div>
                        </div> -->
                        <div class="col-lg-4 col-md-4 col-12">
                            <div class="single-footer br-2 xs-mb">
                                <div class="footer-title mb-20">
                                    <h3>Tài khoản của bạn</h3>
                                </div>
                                <div class="footer-mid-menu">
                                    <ul>
                                        <li><a href="contact.html">Địa chỉ</a></li>
                                        <li><a href="#">Thanh toán</a></li>
                                        <li><a href="#">Hóa đơn</a></li>
                                        <li><a href="#">Thông tin cá nhân</a></li>
                                    </ul>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
                <div class="col-lg-4 col-md-12">
                    <div class="single-footer mrg-sm">
                        <div class="footer-title mb-20">
                            <h3>THÔNG TIN CỬA HÀNG</h3>
                        </div>
                        <div class="footer-contact">
                            <p class="adress">
                                <span>Công ty Zoe</span>
                                42 kp 6, p. Linh Trung, Thủ Đức, TP Hồ Chí Minh
                            </p>
                            <p><span>Liên hệ:</span> (+1)866-540-3229</p>
                            <p><span>Email:</span> support@zoe.com</p>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </div>
    </footer>
    <!-- footer-mid-end -->


    <!-- all js here -->
    <!-- jquery latest version -->
    <script src="js/vendor/jquery-1.12.0.min.js"></script>
    <!-- popper js -->
    <script src="js/popper.min.js"></script>
    <!-- bootstrap js -->
    <script src="js/bootstrap.min.js"></script>
    <!-- owl.carousel js -->
    <script src="js/owl.carousel.min.js"></script>
    <!-- meanmenu js -->
    <script src="js/jquery.meanmenu.js"></script>
    <!-- wow js -->
    <script src="js/wow.min.js"></script>
    <!-- jquery.parallax-1.1.3.js -->
    <script src="js/jquery.parallax-1.1.3.js"></script>
    <!-- jquery.countdown.min.js -->
    <script src="js/jquery.countdown.min.js"></script>
    <!-- jquery.flexslider.js -->
    <script src="js/jquery.flexslider.js"></script>
    <!-- chosen.jquery.min.js -->
    <script src="js/chosen.jquery.min.js"></script>
    <!-- jquery.counterup.min.js -->
    <script src="js/jquery.counterup.min.js"></script>
    <!-- waypoints.min.js -->
    <script src="js/waypoints.min.js"></script>
    <!-- plugins js -->
    <script src="js/plugins.js"></script>
    <!-- main js -->
    <script src="js/main.js"></script>

    <a id="scrollUp" href="#top" style="position: fixed; z-index: 2147483647; display: block;"><i class="fa fa-angle-up"></i></a>
</body>
</html>
