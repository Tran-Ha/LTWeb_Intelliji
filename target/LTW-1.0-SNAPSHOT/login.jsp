<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib prefix ="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix = "fn" uri = "http://java.sun.com/jsp/jstl/functions" %>

<!doctype html>
<html class="no-js" lang="en">

<head>
    <meta charset="utf-8">
    <meta http-equiv="x-ua-compatible" content="ie=edge">
    <title>Đăng nhập - Đăng kí</title>
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
    <!-- ajax css -->
    <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.5.1/jquery.min.js"></script>
    <script src=" https://cdnjs.cloudflare.com/ajax/libs/jquery/3.4.0/jquery.min.js"></script>
    <script src="https://cdnjs.cloudflare.com/ajax/libs/jquery-validate/1.19.0/jquery.validate.min.js"></script>
</head>

<body class="login">
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
                            <li><a href="login.html">Đăng nhập</a></li>
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
                                                <a href="product-details.html"><img src="img/product/1.jpg"
                                                                                    alt="book" /></a>
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
                                                <a href="product-details.html"><img src="img/product/3.jpg"
                                                                                    alt="book" /></a>
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
                                <li><a href="shop-list.html">Sách Tiếng Việt<i class="fa fa-angle-down"></i></a>
                                    <div class="mega-menu">
                                            <span>
                                                <a href="shop.html" class="title">Sách mới<i
                                                        class="fas fa-book-open"></i></a>
                                            </span>
                                        <span>
                                                <a href="shop.html" class="title">bán chạy<i class="fas fa-heart"></i>
                                                </a>
                                            </span>
                                        <span>
                                                <a href="shop.html" class="title">Tuyển chọn<i
                                                        class="fas fa-bookmark"></i></a>
                                            </span>
                                        <span>
                                                <a href="shop.html" class="title">Giảm giá<i
                                                        class="fas fa-tags"></i></a>
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
                                <li><a href="home.html">Trang chủ</a>
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
                        <li><a href="#" class="active">Đăng nhập</a></li>
                    </ul>
                </div>
            </div>
        </div>
    </div>
</div>
<!-- breadcrumbs-area-end -->
<!-- user-login-area-start -->
<div class="user-login-area mb-70">
    <div class="container">
        <div class="offset-lg-3 col-lg-6 col-md-12 col-12">
            <div class="form_list">

                <ul class="tab-group">

                    <li class="tab active"><a href="#login">
                        <h2>Đăng nhập</h2>
                    </a></li>

                    <li class="tab"><a href="#signup">
                        <h2>Đăng kí</h2>
                    </a></li>

                </ul>

                <form method="post" action="/LTW_war/Login" id="login" style="display: block;" >
                    <div class="form-group">
                        <input type="username" name="username" id="username" class=" form-control"
                               placeholder="Nhập email">
                        <p id="username-error"></p>
                    </div>
                    <div class="form-group">
                        <input type="password" name="password" id="password" class=" form-control"
                               placeholder="Mật khẩu">
                        <p id="password-error"></p>
                    </div>
                    <div class="user-foot text-center">
                        <div class="single-login">
                            <input id="ckb1" type="checkbox" name="remember-me" value="forever">
                            <label for="ckb1">
                                Ghi nhớ
                            </label>
                        </div>
                        <div class="mb-15 " style="width: 100%;clear: both;">
                            <button type="submit" id="btnsignin" style="border: 1px solid #9f9e9e;">
                                Đăng nhập </button>
                        </div>
                        <div class="mb-15 ">
                            <a href="forget-password.html" class="clearfix" rel="nofollow" style="text-decoration: underline;">
                                <i class="fas fa-question-circle"></i>
                                Quên mật khẩu
                            </a>
                        </div>

                        <div class="mb-15 ">
                            <p class="clearfix" style="color: rgb(122, 122, 122);">Hoặc đăng nhập với</p>
                        </div>

                        <div class="loginFb mb-15 " rel="nofollow">
                            <a href="#"> <i class="fab fa-facebook-f"></i> Đăng nhập bằng facebook</a>
                        </div>

                        <div class="loginGg mb-15 " rel="nofollow">
                            <a href="#"><i class="fab fa-google-plus-g"></i> Đăng nhập Google</a>
                        </div>
                    </div>

                </form>

                <form method="post" action="#" id="signup" style="display: none;">
                    <div class="form-group">
                        <input type="text" name="fullName" id="fullName"
                               class="form-control"
                               placeholder="Họ tên (*)"></div>
                    <div class="form-group">
                        <input type="text" name="mobile" id="mobile"
                               class="form-control" placeholder="Điện thoại (*)">
                    </div>
                    <div class="form-group">
                        <input type="email" name="email" id="email"
                               class="form-control" placeholder="Email (*)"></div>
                    <div class="form-group">
                        <select id="cityId" name="cityId" class="form-control" style="color: #495057 !important;">
                            <option value="">Tỉnh/Thành phố *</option>
                            <option value="254">Hà Nội</option>
                            <option value="255">Hồ Chí Minh</option>
                            <option value="256">An Giang</option>
                            <option value="257">Bà Rịa - Vũng Tàu</option>
                            <option value="258">Bắc Ninh</option>
                            <option value="259">Bắc Giang</option>
                            <option value="260">Bình Dương</option>
                            <option value="261">Bình Định</option>
                            <option value="262">Bình Phước</option>
                            <option value="263">Bình Thuận</option>
                            <option value="264">Bến Tre</option>
                            <option value="265">Bắc Cạn</option>
                            <option value="266">Cần Thơ</option>
                            <option value="267">Khánh Hòa</option>
                            <option value="268">Thừa Thiên Huế</option>
                            <option value="269">Lào Cai</option>
                            <option value="270">Quảng Ninh</option>
                            <option value="271">Đồng Nai</option>
                            <option value="272">Nam Định</option>
                            <option value="273">Cà Mau</option>
                            <option value="274">Cao Bằng</option>
                            <option value="275">Gia Lai</option>
                            <option value="276">Hà Giang</option>
                            <option value="277">Hà Nam</option>
                            <option value="278">Hà Tĩnh</option>
                            <option value="279">Hải Dương</option>
                            <option value="280">Hải Phòng</option>
                            <option value="281">Hòa Bình</option>
                            <option value="282">Hưng Yên</option>
                            <option value="283">Kiên Giang</option>
                            <option value="284">Kon Tum</option>
                            <option value="285">Lai Châu</option>
                            <option value="286">Lâm Đồng</option>
                            <option value="287">Lạng Sơn</option>
                            <option value="288">Long An</option>
                            <option value="289">Nghệ An</option>
                            <option value="290">Ninh Bình</option>
                            <option value="291">Ninh Thuận</option>
                            <option value="292">Phú Thọ</option>
                            <option value="293">Phú Yên</option>
                            <option value="294">Quảng Bình</option>
                            <option value="295">Quảng Nam</option>
                            <option value="296">Quảng Ngãi</option>
                            <option value="297">Quảng Trị</option>
                            <option value="298">Sóc Trăng</option>
                            <option value="299">Sơn La</option>
                            <option value="300">Tây Ninh</option>
                            <option value="301">Thái Bình</option>
                            <option value="302">Thái Nguyên</option>
                            <option value="303">Thanh Hóa</option>
                            <option value="304">Tiền Giang</option>
                            <option value="305">Trà Vinh</option>
                            <option value="306">Tuyên Quang</option>
                            <option value="307">Vĩnh Long</option>
                            <option value="308">Vĩnh Phúc</option>
                            <option value="309">Yên Bái</option>
                            <option value="310">Đắc Lắc</option>
                            <option value="311">Đồng Tháp</option>
                            <option value="312">Đà Nẵng</option>
                            <option value="313">Đắc Nông</option>
                            <option value="314">Hậu Giang</option>
                            <option value="315">Bạc Liêu</option>
                            <option value="316">Điện Biên</option>
                        </select></div>
                    <div class="form-group">
                        <input type="text" id="address" name="address" value=""
                               placeholder="Địa chỉ chi tiết  " class=" form-control input-sm">
                    </div>
                    <div class="form-group">
                        <input type="password" name="pwd" id="pwd" class=" form-control"
                               placeholder="Mật khẩu của bạn (*)">
                    </div>
                    <div class="form-group">
                        <input type="password" name="rePassword" id="rePassword"  class=" form-control"
                               placeholder="Nhập lại mật khẩu (*)">
                    </div>
                    <div class="form-group text-center">
                        <button type="submit"  style="border: 1px solid #9f9e9e;">
                            Đăng ký </button>
                    </div>
                    <div class="form-group d-none">
                        <i>Lưu ý: các trường dấu <span class="required">*</span> là bắt buộc phải nhập</i></div>
                </form>

            </div>

        </div>
    </div>
</div>
</body>
<!-- user-login-area-end -->
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
    <!-- footer-mid-end -->
    <!-- footer-bottom-start -->
    <div class="footer-bottom">
        <div class="container">
            <div class="row bt-2">
                <div class="col-lg-6 col-md-6 col-12">
                    <div class="copy-right-area">
                        <p>Bản quyền thuộc về ©<a href="#">Zoe</a>. Giấy chứng nhận Đăng ký Kinh doanh số 1234567890
                        </p>
                    </div>
                </div>
                <div class="col-lg-6 col-md-6 col-12">
                    <div class="payment-img text-right">
                        <a href="#"><img src="img/1.png" alt="payment" /></a>
                    </div>
                </div>
            </div>
        </div>
    </div>
    <!-- footer-bottom-end -->
</footer>
<!-- footer-area-end -->
<!-- all js here -->
<!-- jquery  -->
<script src="js/jquery.min.js"></script>
<script src="js/jquery2.min.js"></script>
<!-- popper js -->
<script src="js/popper.min.js"></script>
<!-- validate js -->
<script src="js/jquery.validate.min.js"></script>
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
</html>