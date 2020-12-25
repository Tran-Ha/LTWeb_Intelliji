<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions" %>

<!doctype html>
<html class=" js flexbox canvas canvastext webgl no-touch geolocation postmessage websqldatabase indexeddb hashchange history draganddrop websockets rgba hsla multiplebgs backgroundsize borderimage borderradius boxshadow textshadow opacity cssanimations csscolumns cssgradients cssreflections csstransforms csstransforms3d csstransitions fontface generatedcontent video audio localstorage sessionstorage webworkers no-applicationcache svg inlinesvg smil svgclippaths js flexbox canvas canvastext webgl no-touch geolocation postmessage websqldatabase indexeddb hashchange history draganddrop websockets rgba hsla multiplebgs backgroundsize borderimage borderradius boxshadow textshadow opacity cssanimations csscolumns cssgradients cssreflections csstransforms csstransforms3d csstransitions fontface generatedcontent video audio localstorage sessionstorage webworkers no-applicationcache svg inlinesvg smil svgclippaths js flexbox canvas canvastext webgl no-touch geolocation postmessage websqldatabase indexeddb hashchange history draganddrop websockets rgba hsla multiplebgs backgroundsize borderimage borderradius boxshadow textshadow opacity cssanimations csscolumns cssgradients cssreflections csstransforms csstransforms3d csstransitions fontface generatedcontent video audio localstorage sessionstorage webworkers no-applicationcache svg inlinesvg smil svgclippaths"
      lang="en" style="">
<head>
    <meta charset="utf-8">
    <meta http-equiv="x-ua-compatible" content="ie=edge">
    <title>Kết quả tìm kiếm</title>
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
    <style type="text/css">
        .product-wrapper:hover .product-link {
            margin-bottom: -40px;
        }
    </style>
</head>

<body class="shop">
<!--[if lt IE 8]>
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
                        <form action="LoadFilter" method="GET">
                            <input type="text" placeholder="Tìm sản phẩm, danh mục, thương hiệu,...">
                            <a href="LoadFilter<%--http://localhost:8080/LoadDB_war_exploded/LoadFilter--%>"><i class="fa fa-search"></i></a>
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
                                                <a href="product-details.html"><img src="img/products/1.jpg" alt="book"></a>
                                            </div>
                                            <div class="cart-info">
                                                <h5><a href="#">Lý thuyết tiền tệ</a></h5>
                                                <p>1 x 60.000đ</p>
                                            </div>
                                            <div class="cart-icon">
                                                <a href="#"><i class="fa fa-remove"></i></a>
                                            </div>
                                        </div>
                                        <div class="single-cart">
                                            <div class="cart-img">
                                                <a href="product-details.html"><img src="img/products/3.jpg" alt="book"></a>
                                            </div>
                                            <div class="cart-info">
                                                <h5><a href="#">Bất động sản</a></h5>
                                                <p>1 x 52.000đ</p>
                                            </div>
                                            <div class="cart-icon">
                                                <a href="#"><i class="fa fa-remove"></i></a>
                                            </div>
                                        </div>
                                    </div>
                                    <div class="cart-totals">
                                        <h5>Thành tiền <span>12.000đ</span></h5>
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
    <div class="main-menu-area d-md-none d-none d-lg-block sticky-header-1 sticky" id="header-sticky">
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
                                                <a href="shop.html" class="title">bán chạy<i class="fas fa-heart"></i> </a>
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

</header>

<!-- breadcrumbs-area-start -->
<div class="breadcrumbs-area mb-70">
    <div class="container">
        <div class="row">
            <div class="col-lg-12">
                <div class="breadcrumbs-menu">
                    <ul>
                        <li><a href="#">Trang chủ</a></li>
                        <li><a href="#" class="active">Kết quả tìm kiếm</a></li>
                    </ul>
                </div>
            </div>
        </div>
    </div>
</div>
<!-- breadcrumbs-area-end -->
<!-- shop-main-area-start -->
<div class="shop-main-area mb-70">
    <div class="container">
        <div class="row">
            <div class="col-lg-3 col-md-12 col-12 order-lg-1 order-2 mt-sm-50 mt-xs-40">
                <div class="shop-left">
                    <div class="section-title-5 mb-30">
                        <h2>Tùy chọn mua sắm</h2>
                    </div>
                    <div class="left-title mb-20">
                        <h4>Thể loại</h4>;
                    </div>
                    <div class="left-menu mb-30">
                        <ul>
                            <c:forEach items="${list}" var="item">
                            <li><a href="#">${item.name}<span>(15)</span></a></li>
                            </c:forEach>
                        </ul>
                    </div>
                    <div class="left-title mb-20">
                        <h4>Công ty phát hành</h4>
                    </div>
                    <div class="left-menu mb-30">
                        <ul>
                            <li><a href="#">Nhà xuất bản Trẻ<span>(4)</span></a></li>
                            <li><a href="#">Nhà xuất bản Kim Đồng<span>(7)</span></a></li>
                            <li><a href="#">Thái Hà <span>(3)</span></a></li>
                            <li><a href="#">Nhã Nam<span>(3)</span></a></li>
                            <li><a href="#">Công ty cổ phần Văn hóa sách Việt Nam<span>(2)</span></a></li>
                            <li><a href="#">Alphabooks<span>(3)</span></a></li>
                            <li><a href="#">First new - Trí Việt <span>(1)</span></a></li>
                        </ul>
                    </div>
                    <div class="left-title mb-20">
                        <h4>Giá</h4>
                    </div>
                    <div class="left-menu mb-30">
                        <ul>
                            <li><a href="#">dưới 100.000đ<span>(1)</span></a></li>
                            <li><a href="#">từ 100.000đ - 200.000đ<span>(11)</span></a></li>
                            <li><a href="#">từ 200.000đ - 300.000đ<span>(2)</span></a></li>
                            <li><a href="#">từ 300.000đ - 500.000đ<span>(3)</span></a></li>
                            <li><a href="#">trên 500.000đ<span>(1)</span></a></li>
                        </ul>
                    </div>
                    <div class="left-title mb-20">
                        <h4>Đề xuất</h4>
                    </div>
                    <div class="random-area mb-30">
                        <div class="product-active-2 owl-carousel owl-loaded owl-drag">


                            <div class="owl-stage-outer">
                                <div class="owl-stage"
                                     style="transform: translate3d(-1785px, 0px, 0px); transition: all 1s ease 0s; width: 4080px;">
                                    <div class="owl-item cloned" style="width: 255px;">
                                        <div class="product-total-2">
                                            <div class="single-most-product bd mb-18">
                                                <div class="most-product-img">
                                                    <a href="#"><img src="img/products/23.jpg" alt="book"></a>
                                                </div>
                                                <div class="most-product-content">
                                                    <div class="product-rating">
                                                        <ul>
                                                            <li><a href="#"><i class="fa fa-star"></i></a></li>
                                                            <li><a href="#"><i class="fa fa-star"></i></a></li>
                                                            <li><a href="#"><i class="fa fa-star"></i></a></li>
                                                            <li><a href="#"><i class="fa fa-star"></i></a></li>
                                                            <li><a href="#"><i class="fa fa-star"></i></a></li>
                                                        </ul>
                                                    </div>
                                                    <h4><a href="#">Bad blood</a></h4>
                                                    <div class="product-price">
                                                        <ul>
                                                            <li>120.000đ</li>
                                                            <li class="old-price">140.000đ</li>
                                                        </ul>
                                                    </div>
                                                </div>
                                            </div>
                                            <div class="single-most-product bd mb-18">
                                                <div class="most-product-img">
                                                    <a href="#"><img src="img/products/24.jpg" alt="book"></a>
                                                </div>
                                                <div class="most-product-content">
                                                    <div class="product-rating">
                                                        <ul>
                                                            <li><a href="#"><i class="fa fa-star"></i></a></li>
                                                            <li><a href="#"><i class="fa fa-star"></i></a></li>
                                                            <li><a href="#"><i class="fa fa-star"></i></a></li>
                                                            <li><a href="#"><i class="fa fa-star"></i></a></li>
                                                            <li><a href="#"><i class="fa fa-star"></i></a></li>
                                                        </ul>
                                                    </div>
                                                    <h4><a href="#">Vô cùng tàn nhẫn - Vô cùng yêu thương</a></h4>
                                                    <div class="product-price">
                                                        <ul>
                                                            <li>120.000đ</li>
                                                            <li class="old-price">135.000đ</li>
                                                        </ul>
                                                    </div>
                                                </div>
                                            </div>
                                            <div class="single-most-product">
                                                <div class="most-product-img">
                                                    <a href="#"><img src="img/products/22.jpg" alt="book"></a>
                                                </div>
                                                <div class="most-product-content">
                                                    <div class="product-rating">
                                                        <ul>
                                                            <li><a href="#"><i class="fa fa-star"></i></a></li>
                                                            <li><a href="#"><i class="fa fa-star"></i></a></li>
                                                            <li><a href="#"><i class="fa fa-star"></i></a></li>
                                                            <li><a href="#"><i class="fa fa-star"></i></a></li>
                                                            <li><a href="#"><i class="fa fa-star"></i></a></li>
                                                        </ul>
                                                    </div>
                                                    <h4><a href="#">Tìm lại bầu trời</a></h4>
                                                    <div class="product-price">
                                                        <ul>
                                                            <li>95.000đ</li>
                                                        </ul>
                                                    </div>
                                                </div>
                                            </div>
                                        </div>
                                    </div>
                                    <div class="owl-item cloned" style="width: 255px;">
                                        <div class="product-total-2">
                                            <div class="single-most-product bd mb-18">
                                                <div class="most-product-img">
                                                    <a href="#"><img src="img/products/20.jpg" alt="book"></a>
                                                </div>
                                                <div class="most-product-content">
                                                    <div class="product-rating">
                                                        <ul>
                                                            <li><a href="#"><i class="fa fa-star"></i></a></li>
                                                            <li><a href="#"><i class="fa fa-star"></i></a></li>
                                                            <li><a href="#"><i class="fa fa-star"></i></a></li>
                                                            <li><a href="#"><i class="fa fa-star"></i></a></li>
                                                            <li><a href="#"><i class="fa fa-star"></i></a></li>
                                                        </ul>
                                                    </div>
                                                    <h4><a href="#">Deep learning</a></h4>
                                                    <div class="product-price">
                                                        <ul>
                                                            <li>30.000đ</li>
                                                            <li class="old-price">33.000đ</li>
                                                        </ul>
                                                    </div>
                                                </div>
                                            </div>
                                            <div class="single-most-product bd mb-18">
                                                <div class="most-product-img">
                                                    <a href="#"><img src="img/products/21.jpg" alt="book"></a>
                                                </div>
                                                <div class="most-product-content">
                                                    <div class="product-rating">
                                                        <ul>
                                                            <li><a href="#"><i class="fa fa-star"></i></a></li>
                                                            <li><a href="#"><i class="fa fa-star"></i></a></li>
                                                            <li><a href="#"><i class="fa fa-star"></i></a></li>
                                                            <li><a href="#"><i class="fa fa-star"></i></a></li>
                                                            <li><a href="#"><i class="fa fa-star"></i></a></li>
                                                        </ul>
                                                    </div>
                                                    <h4><a href="#">Đau để trưởng thành</a></h4>
                                                    <div class="product-price">
                                                        <ul>
                                                            <li>30.000đ</li>
                                                            <li class="old-price">35.000đ</li>
                                                        </ul>
                                                    </div>
                                                </div>
                                            </div>
                                            <div class="single-most-product">
                                                <div class="most-product-img">
                                                    <a href="#"><img src="img/products/22.jpg" alt="book"></a>
                                                </div>
                                                <div class="most-product-content">
                                                    <div class="product-rating">
                                                        <ul>
                                                            <li><a href="#"><i class="fa fa-star"></i></a></li>
                                                            <li><a href="#"><i class="fa fa-star"></i></a></li>
                                                            <li><a href="#"><i class="fa fa-star"></i></a></li>
                                                            <li><a href="#"><i class="fa fa-star"></i></a></li>
                                                            <li><a href="#"><i class="fa fa-star"></i></a></li>
                                                        </ul>
                                                    </div>
                                                    <h4><a href="#">Bí mật của thành công</a></h4>
                                                    <div class="product-price">
                                                        <ul>
                                                            <li>120.000đ</li>
                                                        </ul>
                                                    </div>
                                                </div>
                                            </div>
                                        </div>
                                    </div>
                                    <div class="owl-item cloned" style="width: 255px;">
                                        <div class="product-total-2">
                                            <div class="single-most-product bd mb-18">
                                                <div class="most-product-img">
                                                    <a href="#"><img src="img/products/23.jpg" alt="book"></a>
                                                </div>
                                                <div class="most-product-content">
                                                    <div class="product-rating">
                                                        <ul>
                                                            <li><a href="#"><i class="fa fa-star"></i></a></li>
                                                            <li><a href="#"><i class="fa fa-star"></i></a></li>
                                                            <li><a href="#"><i class="fa fa-star"></i></a></li>
                                                            <li><a href="#"><i class="fa fa-star"></i></a></li>
                                                            <li><a href="#"><i class="fa fa-star"></i></a></li>
                                                        </ul>
                                                    </div>
                                                    <h4><a href="#">Bad blood</a></h4>
                                                    <div class="product-price">
                                                        <ul>
                                                            <li>120.000đ</li>
                                                            <li class="old-price">140.000đ</li>
                                                        </ul>
                                                    </div>
                                                </div>
                                            </div>
                                            <div class="single-most-product bd mb-18">
                                                <div class="most-product-img">
                                                    <a href="#"><img src="img/products/24.jpg" alt="book"></a>
                                                </div>
                                                <div class="most-product-content">
                                                    <div class="product-rating">
                                                        <ul>
                                                            <li><a href="#"><i class="fa fa-star"></i></a></li>
                                                            <li><a href="#"><i class="fa fa-star"></i></a></li>
                                                            <li><a href="#"><i class="fa fa-star"></i></a></li>
                                                            <li><a href="#"><i class="fa fa-star"></i></a></li>
                                                            <li><a href="#"><i class="fa fa-star"></i></a></li>
                                                        </ul>
                                                    </div>
                                                    <h4><a href="#">Vô cùng Tàn nhẫn - Vô cùng Yêu thương</a></h4>
                                                    <div class="product-price">
                                                        <ul>
                                                            <li>120.000đ</li>
                                                            <li class="old-price">135.000đ</li>
                                                        </ul>
                                                    </div>
                                                </div>
                                            </div>
                                            <div class="single-most-product">
                                                <div class="most-product-img">
                                                    <a href="#"><img src="img/products/22.jpg" alt="book"></a>
                                                </div>
                                                <div class="most-product-content">
                                                    <div class="product-rating">
                                                        <ul>
                                                            <li><a href="#"><i class="fa fa-star"></i></a></li>
                                                            <li><a href="#"><i class="fa fa-star"></i></a></li>
                                                            <li><a href="#"><i class="fa fa-star"></i></a></li>
                                                            <li><a href="#"><i class="fa fa-star"></i></a></li>
                                                            <li><a href="#"><i class="fa fa-star"></i></a></li>
                                                        </ul>
                                                    </div>
                                                    <h4><a href="#">Hơi thở hoá tinh không</a></h4>
                                                    <div class="product-price">
                                                        <ul>
                                                            <li>95.000đ</li>
                                                        </ul>
                                                    </div>
                                                </div>
                                            </div>
                                        </div>
                                    </div>
                                    <div class="owl-item cloned active" style="width: 255px;">
                                        <div class="product-total-2">
                                            <div class="single-most-product bd mb-18">
                                                <div class="most-product-img">
                                                    <a href="#"><img src="img/products/20.jpg" alt="book"></a>
                                                </div>
                                                <div class="most-product-content">
                                                    <div class="product-rating">
                                                        <ul>
                                                            <li><a href="#"><i class="fa fa-star"></i></a></li>
                                                            <li><a href="#"><i class="fa fa-star"></i></a></li>
                                                            <li><a href="#"><i class="fa fa-star"></i></a></li>
                                                            <li><a href="#"><i class="fa fa-star"></i></a></li>
                                                            <li><a href="#"><i class="fa fa-star"></i></a></li>
                                                        </ul>
                                                    </div>
                                                    <h4><a href="#">Deep learning</a></h4>
                                                    <div class="product-price">
                                                        <ul>
                                                            <li>30.000đ</li>
                                                            <li class="old-price">33.000đ</li>
                                                        </ul>
                                                    </div>
                                                </div>
                                            </div>
                                            <div class="single-most-product bd mb-18">
                                                <div class="most-product-img">
                                                    <a href="#"><img src="img/products/21.jpg" alt="book"></a>
                                                </div>
                                                <div class="most-product-content">
                                                    <div class="product-rating">
                                                        <ul>
                                                            <li><a href="#"><i class="fa fa-star"></i></a></li>
                                                            <li><a href="#"><i class="fa fa-star"></i></a></li>
                                                            <li><a href="#"><i class="fa fa-star"></i></a></li>
                                                            <li><a href="#"><i class="fa fa-star"></i></a></li>
                                                            <li><a href="#"><i class="fa fa-star"></i></a></li>
                                                        </ul>
                                                    </div>
                                                    <h4><a href="#">Đau để trưởng thành</a></h4>
                                                    <div class="product-price">
                                                        <ul>
                                                            <li>30.000đ</li>
                                                            <li class="old-price">35.000đ</li>
                                                        </ul>
                                                    </div>
                                                </div>
                                            </div>
                                            <div class="single-most-product">
                                                <div class="most-product-img">
                                                    <a href="#"><img src="img/products/22.jpg" alt="book"></a>
                                                </div>
                                                <div class="most-product-content">
                                                    <div class="product-rating">
                                                        <ul>
                                                            <li><a href="#"><i class="fa fa-star"></i></a></li>
                                                            <li><a href="#"><i class="fa fa-star"></i></a></li>
                                                            <li><a href="#"><i class="fa fa-star"></i></a></li>
                                                            <li><a href="#"><i class="fa fa-star"></i></a></li>
                                                            <li><a href="#"><i class="fa fa-star"></i></a></li>
                                                        </ul>
                                                    </div>
                                                    <h4><a href="#">Hơi thở hoá tinh không</a></h4>
                                                    <div class="product-price">
                                                        <ul>
                                                            <li>120.000đ</li>
                                                        </ul>
                                                    </div>
                                                </div>
                                            </div>
                                        </div>
                                    </div>
                                </div>
                            </div>
                            <div class="owl-nav">
                                <button type="button" role="presentation" class="owl-prev"><i
                                        class="fa fa-angle-left"></i></button>
                                <button type="button" role="presentation" class="owl-next"><i
                                        class="fa fa-angle-right"></i></button>
                            </div>
                            <div class="owl-dots disabled"></div>
                            <div class="owl-nav">
                                <button type="button" role="presentation" class="owl-prev"><i
                                        class="fa fa-angle-left"></i></button>
                                <button type="button" role="presentation" class="owl-next"><i
                                        class="fa fa-angle-right"></i></button>
                            </div>
                            <div class="owl-dots disabled"></div>
                            <div class="owl-nav">
                                <button type="button" role="presentation" class="owl-prev"><i
                                        class="fa fa-angle-left"></i></button>
                                <button type="button" role="presentation" class="owl-next"><i
                                        class="fa fa-angle-right"></i></button>
                            </div>
                            <div class="owl-dots disabled"></div>
                        </div>
                    </div>
                    <div class="left-title mb-20">
                        <h4>Sản phẩm yêu thích</h4>
                    </div>
                    <div class="random-area mb-30">
                        <div class="product-active-2 owl-carousel owl-loaded owl-drag">


                            <div class="owl-stage-outer">
                                <div class="owl-stage"
                                     style="transform: translate3d(-1785px, 0px, 0px); transition: all 1s ease 0s; width: 4080px;">
                                    <div class="owl-item cloned" style="width: 255px;">
                                        <div class="product-total-2">
                                            <div class="single-most-product bd mb-18">
                                                <div class="most-product-img">
                                                    <a href="#"><img src="img/products/23.jpg" alt="book"></a>
                                                </div>
                                                <div class="most-product-content">
                                                    <div class="product-rating">
                                                        <ul>
                                                            <li><a href="#"><i class="fa fa-star"></i></a></li>
                                                            <li><a href="#"><i class="fa fa-star"></i></a></li>
                                                            <li><a href="#"><i class="fa fa-star"></i></a></li>
                                                            <li><a href="#"><i class="fa fa-star"></i></a></li>
                                                            <li><a href="#"><i class="fa fa-star"></i></a></li>
                                                        </ul>
                                                    </div>
                                                    <h4><a href="#">Bad blood</a></h4>
                                                    <div class="product-price">
                                                        <ul>
                                                            <li>120.000đ</li>
                                                            <li class="old-price">140.000đ</li>
                                                        </ul>
                                                    </div>
                                                </div>
                                            </div>
                                            <div class="single-most-product bd mb-18">
                                                <div class="most-product-img">
                                                    <a href="#"><img src="img/products/24.jpg" alt="book"></a>
                                                </div>
                                                <div class="most-product-content">
                                                    <div class="product-rating">
                                                        <ul>
                                                            <li><a href="#"><i class="fa fa-star"></i></a></li>
                                                            <li><a href="#"><i class="fa fa-star"></i></a></li>
                                                            <li><a href="#"><i class="fa fa-star"></i></a></li>
                                                            <li><a href="#"><i class="fa fa-star"></i></a></li>
                                                            <li><a href="#"><i class="fa fa-star"></i></a></li>
                                                        </ul>
                                                    </div>
                                                    <h4><a href="#">Vô cùng tàn nhẫn - Vô cùng yêu thương</a></h4>
                                                    <div class="product-price">
                                                        <ul>
                                                            <li>120.000đ</li>
                                                            <li class="old-price">135.000đ</li>
                                                        </ul>
                                                    </div>
                                                </div>
                                            </div>
                                            <div class="single-most-product">
                                                <div class="most-product-img">
                                                    <a href="#"><img src="img/products/22.jpg" alt="book"></a>
                                                </div>
                                                <div class="most-product-content">
                                                    <div class="product-rating">
                                                        <ul>
                                                            <li><a href="#"><i class="fa fa-star"></i></a></li>
                                                            <li><a href="#"><i class="fa fa-star"></i></a></li>
                                                            <li><a href="#"><i class="fa fa-star"></i></a></li>
                                                            <li><a href="#"><i class="fa fa-star"></i></a></li>
                                                            <li><a href="#"><i class="fa fa-star"></i></a></li>
                                                        </ul>
                                                    </div>
                                                    <h4><a href="#">Tìm lại bầu trời</a></h4>
                                                    <div class="product-price">
                                                        <ul>
                                                            <li>95.000đ</li>
                                                        </ul>
                                                    </div>
                                                </div>
                                            </div>
                                        </div>
                                    </div>
                                    <div class="owl-item cloned" style="width: 255px;">
                                        <div class="product-total-2">
                                            <div class="single-most-product bd mb-18">
                                                <div class="most-product-img">
                                                    <a href="#"><img src="img/products/20.jpg" alt="book"></a>
                                                </div>
                                                <div class="most-product-content">
                                                    <div class="product-rating">
                                                        <ul>
                                                            <li><a href="#"><i class="fa fa-star"></i></a></li>
                                                            <li><a href="#"><i class="fa fa-star"></i></a></li>
                                                            <li><a href="#"><i class="fa fa-star"></i></a></li>
                                                            <li><a href="#"><i class="fa fa-star"></i></a></li>
                                                            <li><a href="#"><i class="fa fa-star"></i></a></li>
                                                        </ul>
                                                    </div>
                                                    <h4><a href="#">Deep learning</a></h4>
                                                    <div class="product-price">
                                                        <ul>
                                                            <li>30.000đ</li>
                                                            <li class="old-price">33.000đ</li>
                                                        </ul>
                                                    </div>
                                                </div>
                                            </div>
                                            <div class="single-most-product bd mb-18">
                                                <div class="most-product-img">
                                                    <a href="#"><img src="img/products/21.jpg" alt="book"></a>
                                                </div>
                                                <div class="most-product-content">
                                                    <div class="product-rating">
                                                        <ul>
                                                            <li><a href="#"><i class="fa fa-star"></i></a></li>
                                                            <li><a href="#"><i class="fa fa-star"></i></a></li>
                                                            <li><a href="#"><i class="fa fa-star"></i></a></li>
                                                            <li><a href="#"><i class="fa fa-star"></i></a></li>
                                                            <li><a href="#"><i class="fa fa-star"></i></a></li>
                                                        </ul>
                                                    </div>
                                                    <h4><a href="#">Đau để trưởng thành</a></h4>
                                                    <div class="product-price">
                                                        <ul>
                                                            <li>30.000đ</li>
                                                            <li class="old-price">35.000đ</li>
                                                        </ul>
                                                    </div>
                                                </div>
                                            </div>
                                            <div class="single-most-product">
                                                <div class="most-product-img">
                                                    <a href="#"><img src="img/products/22.jpg" alt="book"></a>
                                                </div>
                                                <div class="most-product-content">
                                                    <div class="product-rating">
                                                        <ul>
                                                            <li><a href="#"><i class="fa fa-star"></i></a></li>
                                                            <li><a href="#"><i class="fa fa-star"></i></a></li>
                                                            <li><a href="#"><i class="fa fa-star"></i></a></li>
                                                            <li><a href="#"><i class="fa fa-star"></i></a></li>
                                                            <li><a href="#"><i class="fa fa-star"></i></a></li>
                                                        </ul>
                                                    </div>
                                                    <h4><a href="#">Bí mật của thành công</a></h4>
                                                    <div class="product-price">
                                                        <ul>
                                                            <li>120.000đ</li>
                                                        </ul>
                                                    </div>
                                                </div>
                                            </div>
                                        </div>
                                    </div>
                                    <div class="owl-item cloned" style="width: 255px;">
                                        <div class="product-total-2">
                                            <div class="single-most-product bd mb-18">
                                                <div class="most-product-img">
                                                    <a href="#"><img src="img/products/23.jpg" alt="book"></a>
                                                </div>
                                                <div class="most-product-content">
                                                    <div class="product-rating">
                                                        <ul>
                                                            <li><a href="#"><i class="fa fa-star"></i></a></li>
                                                            <li><a href="#"><i class="fa fa-star"></i></a></li>
                                                            <li><a href="#"><i class="fa fa-star"></i></a></li>
                                                            <li><a href="#"><i class="fa fa-star"></i></a></li>
                                                            <li><a href="#"><i class="fa fa-star"></i></a></li>
                                                        </ul>
                                                    </div>
                                                    <h4><a href="#">Bad blood</a></h4>
                                                    <div class="product-price">
                                                        <ul>
                                                            <li>120.000đ</li>
                                                            <li class="old-price">140.000đ</li>
                                                        </ul>
                                                    </div>
                                                </div>
                                            </div>
                                            <div class="single-most-product bd mb-18">
                                                <div class="most-product-img">
                                                    <a href="#"><img src="img/products/24.jpg" alt="book"></a>
                                                </div>
                                                <div class="most-product-content">
                                                    <div class="product-rating">
                                                        <ul>
                                                            <li><a href="#"><i class="fa fa-star"></i></a></li>
                                                            <li><a href="#"><i class="fa fa-star"></i></a></li>
                                                            <li><a href="#"><i class="fa fa-star"></i></a></li>
                                                            <li><a href="#"><i class="fa fa-star"></i></a></li>
                                                            <li><a href="#"><i class="fa fa-star"></i></a></li>
                                                        </ul>
                                                    </div>
                                                    <h4><a href="#">Vô cùng Tàn nhẫn - Vô cùng Yêu thương</a></h4>
                                                    <div class="product-price">
                                                        <ul>
                                                            <li>120.000đ</li>
                                                            <li class="old-price">135.000đ</li>
                                                        </ul>
                                                    </div>
                                                </div>
                                            </div>
                                            <div class="single-most-product">
                                                <div class="most-product-img">
                                                    <a href="#"><img src="img/products/22.jpg" alt="book"></a>
                                                </div>
                                                <div class="most-product-content">
                                                    <div class="product-rating">
                                                        <ul>
                                                            <li><a href="#"><i class="fa fa-star"></i></a></li>
                                                            <li><a href="#"><i class="fa fa-star"></i></a></li>
                                                            <li><a href="#"><i class="fa fa-star"></i></a></li>
                                                            <li><a href="#"><i class="fa fa-star"></i></a></li>
                                                            <li><a href="#"><i class="fa fa-star"></i></a></li>
                                                        </ul>
                                                    </div>
                                                    <h4><a href="#">Hơi thở hoá tinh không</a></h4>
                                                    <div class="product-price">
                                                        <ul>
                                                            <li>95.000đ</li>
                                                        </ul>
                                                    </div>
                                                </div>
                                            </div>
                                        </div>
                                    </div>
                                    <div class="owl-item cloned active" style="width: 255px;">
                                        <div class="product-total-2">
                                            <div class="single-most-product bd mb-18">
                                                <div class="most-product-img">
                                                    <a href="#"><img src="img/products/20.jpg" alt="book"></a>
                                                </div>
                                                <div class="most-product-content">
                                                    <div class="product-rating">
                                                        <ul>
                                                            <li><a href="#"><i class="fa fa-star"></i></a></li>
                                                            <li><a href="#"><i class="fa fa-star"></i></a></li>
                                                            <li><a href="#"><i class="fa fa-star"></i></a></li>
                                                            <li><a href="#"><i class="fa fa-star"></i></a></li>
                                                            <li><a href="#"><i class="fa fa-star"></i></a></li>
                                                        </ul>
                                                    </div>
                                                    <h4><a href="#">Deep learning</a></h4>
                                                    <div class="product-price">
                                                        <ul>
                                                            <li>30.000đ</li>
                                                            <li class="old-price">33.000đ</li>
                                                        </ul>
                                                    </div>
                                                </div>
                                            </div>
                                            <div class="single-most-product bd mb-18">
                                                <div class="most-product-img">
                                                    <a href="#"><img src="img/products/21.jpg" alt="book"></a>
                                                </div>
                                                <div class="most-product-content">
                                                    <div class="product-rating">
                                                        <ul>
                                                            <li><a href="#"><i class="fa fa-star"></i></a></li>
                                                            <li><a href="#"><i class="fa fa-star"></i></a></li>
                                                            <li><a href="#"><i class="fa fa-star"></i></a></li>
                                                            <li><a href="#"><i class="fa fa-star"></i></a></li>
                                                            <li><a href="#"><i class="fa fa-star"></i></a></li>
                                                        </ul>
                                                    </div>
                                                    <h4><a href="#">Đau để trưởng thành</a></h4>
                                                    <div class="product-price">
                                                        <ul>
                                                            <li>30.000đ</li>
                                                            <li class="old-price">35.000đ</li>
                                                        </ul>
                                                    </div>
                                                </div>
                                            </div>
                                            <div class="single-most-product">
                                                <div class="most-product-img">
                                                    <a href="#"><img src="img/products/22.jpg" alt="book"></a>
                                                </div>
                                                <div class="most-product-content">
                                                    <div class="product-rating">
                                                        <ul>
                                                            <li><a href="#"><i class="fa fa-star"></i></a></li>
                                                            <li><a href="#"><i class="fa fa-star"></i></a></li>
                                                            <li><a href="#"><i class="fa fa-star"></i></a></li>
                                                            <li><a href="#"><i class="fa fa-star"></i></a></li>
                                                            <li><a href="#"><i class="fa fa-star"></i></a></li>
                                                        </ul>
                                                    </div>
                                                    <h4><a href="#">Hơi thở hoá tinh không</a></h4>
                                                    <div class="product-price">
                                                        <ul>
                                                            <li>120.000đ</li>
                                                        </ul>
                                                    </div>
                                                </div>
                                            </div>
                                        </div>
                                    </div>
                                </div>
                            </div>
                            <div class="owl-nav">
                                <button type="button" role="presentation" class="owl-prev"><i
                                        class="fa fa-angle-left"></i></button>
                                <button type="button" role="presentation" class="owl-next"><i
                                        class="fa fa-angle-right"></i></button>
                            </div>
                            <div class="owl-dots disabled"></div>
                            <div class="owl-nav">
                                <button type="button" role="presentation" class="owl-prev"><i
                                        class="fa fa-angle-left"></i></button>
                                <button type="button" role="presentation" class="owl-next"><i
                                        class="fa fa-angle-right"></i></button>
                            </div>
                            <div class="owl-dots disabled"></div>
                            <div class="owl-nav">
                                <button type="button" role="presentation" class="owl-prev"><i
                                        class="fa fa-angle-left"></i></button>
                                <button type="button" role="presentation" class="owl-next"><i
                                        class="fa fa-angle-right"></i></button>
                            </div>
                            <div class="owl-dots disabled"></div>
                        </div>
                    </div>
                </div>
            </div>

            <div class="col-lg-9 col-md-12 col-12 order-lg-2 order-1">
                <div class="category-image mb-30">
                    <a href="#"><img src="img/banner/32.jpg" alt="banner"></a>
                </div>
                <div class="section-title-5 mb-30">
                    <h2>Sách</h2>
                </div>
                <div class="toolbar mb-30">
                    <div class="shop-tab">
                        <div class="tab-3">
                            <ul class="nav">
                                <li><a href="#th" data-toggle="tab" class=""><i class="fa fa-th-large"></i>lưới</a></li>
                                <li><a class="active" href="#list" data-toggle="tab"><i class="fa fa-bars"></i>danh sách</a>
                                </li>
                            </ul>
                        </div>
                        <div class="list-page">
                            <p>Sản phẩm 1-9 trong 11</p>
                        </div>
                    </div>
                    <div class="toolbar-sorter">
                        <span>Sắp xếp</span>
                        <select id="sorter" class="sorter-options" data-role="sorter">
                            <option selected="selected" value="position"> Giá thấp - cao</option>
                            <option value="name"> Giá cao - thấp</option>
                            <option value="price"> Giảm giá nhiều</option>
                            <option value="name"> Hàng mới</option>
                            <option value="price"> Bán chạy</option>
                        </select>
                        <a href="#"><i class="fa fa-arrow-up"></i></a>
                    </div>
                </div>
                <!-- tab-area-start -->
                <div class="tab-content">
                    <div class="tab-pane fade" id="th">
                        <div class="row">

                            <c:forEach items="${data}" var="d">
                                <div class="col-xl-3 col-lg-4 col-md-6 col-sm-6">
                                    <!-- single-product-start -->
                                    <div class="product-wrapper mb-40">
                                        <div class="product-img">
                                            <a href="#">
                                                <img src="${d.img}" alt="book" class="primary">
                                            </a>
                                            <div class="quick-view">
                                                <a class="action-view" href="#" data-target="#productModal"
                                                   data-toggle="modal" title="Quick View">
                                                    <i class="fa fa-search-plus"></i>
                                                </a>
                                            </div>
                                            <div class="product-flag">
                                                <ul>
                                                    <li><span class="discount-percentage">-5%</span></li>
                                                </ul>
                                            </div>
                                        </div>
                                        <div class="product-details text-center">
                                            <div class="product-rating">
                                                <ul>
                                                    <li><a href="#"><i class="fa fa-star"></i></a></li>
                                                    <li><a href="#"><i class="fa fa-star"></i></a></li>
                                                    <li><a href="#"><i class="fa fa-star"></i></a></li>
                                                    <li><a href="#"><i class="fa fa-star"></i></a></li>
                                                    <li><a href="#"><i class="fa fa-star"></i></a></li>
                                                </ul>
                                            </div>
                                            <h4><a href="#">${d.title}</a></h4>
                                            <div class="product-price">
                                                <ul>
                                                    <li>${d.getPriceSale()}đ</li>
                                                </ul>
                                            </div>
                                        </div>
                                        <div class="product-link">
                                            <div class="product-button">
                                                <a href="#" title="Add to cart"><i class="fa fa-shopping-cart"></i>Thêm
                                                    vào giỏ hàng</a>
                                            </div>
                                            <div class="add-to-link">
                                                <ul>
                                                    <li><a href="product-details.html" title="Details"><i
                                                            class="fa fa-external-link"></i></a></li>
                                                </ul>
                                            </div>
                                        </div>
                                    </div>
                                    <!-- single-product-end -->
                                </div>
                            </c:forEach>
                        </div>
                    </div>

                    <div class="tab-pane fade active show" id="list">
                        <!-- single-shop-start -->
                        <c:forEach items="${data}" var="item">
                            <div class="single-shop mb-30">
                                <div class="row">
                                    <div class="col-lg-4 col-md-4 col-12">
                                        <div class="product-wrapper-2">
                                            <div class="product-img">
                                                <a href="#">
                                                    <img src="${item.img}" alt="book" class="primary">
                                                </a>
                                            </div>
                                        </div>
                                    </div>
                                    <div class="col-lg-8 col-md-8 col-12">
                                        <div class="product-wrapper-content">
                                            <div class="product-details">
                                                <div class="product-rating">
                                                    <ul>
                                                        <li><a href="#"><i class="fa fa-star"></i></a></li>
                                                        <li><a href="#"><i class="fa fa-star"></i></a></li>
                                                        <li><a href="#"><i class="fa fa-star"></i></a></li>
                                                        <li><a href="#"><i class="fa fa-star"></i></a></li>
                                                        <li><a href="#"><i class="fa fa-star"></i></a></li>
                                                    </ul>
                                                </div>
                                                <h4><a href="#">${item.title}</a></h4>
                                                <div class="product-price">
                                                    <ul>
                                                        <li>${item.priceSale}đ</li>
                                                        <li class="old-price">${item.price}đ</li>
                                                    </ul>
                                                </div>
                                                <p>${item.text}</p>
                                            </div>
                                            <div class="product-link">
                                                <div class="product-button">
                                                    <a href="#" title="Add to cart"><i class="fa fa-shopping-cart"></i>Thêm
                                                        vào giỏ hàng</a>
                                                </div>
                                                <div class="add-to-link">
                                                    <ul>
                                                        <li><a href="product-details.html" title="Details"><i
                                                                class="fa fa-external-link"></i></a></li>
                                                    </ul>
                                                </div>
                                            </div>
                                        </div>
                                    </div>
                                </div>
                            </div>
                        </c:forEach>
                        <!-- single-shop-end -->

                    </div>
                </div>

                <!-- tab-area-end -->
                <!-- pagination-area-start -->
                <div class="pagination-area mt-50">
                    <div class="page-number">
                        <ul>
                            <li><a href="#" class="active">1</a></li>
                            <li><a href="#">2</a></li>
                            <li><a href="#">3</a></li>
                            <li><a href="#">4</a></li>
                            <li><a href="#" class="angle"><i class="fa fa-angle-right"></i></a></li>
                        </ul>
                    </div>
                </div>
                <!-- pagination-area-end -->
            </div>
        </div>
    </div>
</div>
<!-- shop-main-area-end -->
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
                                        <a rel="noreferrer" href="" class="icon" target="_blank" title="Facebook"><i
                                                class="fab fa-facebook-f" style="color: blue;"></i></a>
                                        <a rel="noreferrer" href="" class="icon" target="_blank" title="Youtube"><i
                                                class="fab fa-youtube " style="color: red;"></i></a>
                                        <a rel="noreferrer" href="" class="icon" target="_blank" title="Zalo"><img
                                                src="img/icon/zalo.png" alt="Zalo" srcset=""
                                                style="width: 22px;height: 22px;margin-bottom: 7px;"></a>
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
                        <a href="#"><img src="img/1.png" alt="payment"/></a>
                    </div>
                </div>
            </div>
        </div>
    </div>
    <!-- footer-bottom-end -->
</footer>
<!-- footer-area-end -->

<!-- Modal -->
<div class="modal fade" id="productModal" tabindex="-1" role="dialog">
    <div class="modal-dialog" role="document">
        <div class="modal-content">
            <div class="modal-header">
                <button type="button" class="close" data-dismiss="modal" aria-label="Close"><span
                        aria-hidden="true">x</span></button>
            </div>
            <div class="modal-body">
                <div class="row">
                    <div class="col-md-5 col-sm-5 col-xs-12">
                        <div class="modal-tab">
                            <div class="product-details-large tab-content">
                                <div class="tab-pane active" id="image-1">
                                    <img src="img/product/quickview-l4.jpg" alt=""/>
                                </div>
                                <div class="tab-pane" id="image-2">
                                    <img src="img/product/quickview-l2.jpg" alt=""/>
                                </div>
                                <div class="tab-pane" id="image-3">
                                    <img src="img/product/quickview-l3.jpg" alt=""/>
                                </div>
                                <div class="tab-pane" id="image-4">
                                    <img src="img/product/quickview-l5.jpg" alt=""/>
                                </div>
                            </div>
                            <div class="product-details-small quickview-active owl-carousel">
                                <a class="active" href="#image-1"><img src="img/product/quickview-s4.jpg"
                                                                       alt=""/></a>
                                <a href="#image-2"><img src="img/product/quickview-s2.jpg" alt=""/></a>
                                <a href="#image-3"><img src="img/product/quickview-s3.jpg" alt=""/></a>
                                <a href="#image-4"><img src="img/product/quickview-s5.jpg" alt=""/></a>
                            </div>
                        </div>
                    </div>
                    <div class="col-md-7 col-sm-7 col-xs-12">
                        <div class="modal-pro-content">
                            <h3>Chaz Kangeroo Hoodie3</h3>
                            <div class="price">
                                <span>70.000đ</span>
                            </div>
                            <p>Pellentesque habitant morbi tristique senectus et netus et malesuada fames ac turpis
                                egestas. Vestibulum tortor quam, feugiat vitae, ultricies eget, tempor sit amet.</p>
                            <div class="quick-view-select">
                                <div class="select-option-part">
                                    <label>Size</label>
                                    <select class="select">
                                        <option value="">S</option>
                                        <option value="">M</option>
                                        <option value="">L</option>
                                    </select>
                                </div>
                                <div class="quickview-color-wrap">
                                    <label>Color</label>
                                    <div class="quickview-color">
                                        <ul>
                                            <li class="blue">b</li>
                                            <li class="red">r</li>
                                            <li class="pink">p</li>
                                        </ul>
                                    </div>
                                </div>
                            </div>
                            <form action="#">
                                <input type="number" value="1"/>
                                <button>Add to cart</button>
                            </form>
                            <span><i class="fa fa-check"></i> In stock</span>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </div>
</div>
<!-- Modal end -->
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
</body>

</html>