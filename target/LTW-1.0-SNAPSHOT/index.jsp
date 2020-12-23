
<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib prefix ="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix = "fn" uri = "http://java.sun.com/jsp/jstl/functions" %>

<!doctype html>
<html class="no-js" lang="en">

<head>
    <title>Zoe Book Shop</title>
    <jsp:include page="head.jsp"/>
</head>

<body>
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
                        <form action="search-result.html" method="GET">
                            <input type="text" placeholder="Tìm sản phẩm, danh mục, thương hiệu,..." />
                            <a href="search-result.html"><i class="fa fa-search"></i></a>
                        </form>
                    </div>
                </div>

                <div class="col-lg-3 col-md-3 col-12">
                    <div class="my-cart ptb-10">
                        <ul>
                            <li><a href="cart.html" class="nowrap"><i class="fa fa-shopping-cart"></i>Giỏ hàng</a>
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
                                                <p>1 x 60.000đ</p>
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
<!-- slider-area-start -->
<div class="container">
    <div class="slider-area">
        <div class="slider-active owl-carousel">
            <div class="single-slider pt-50 bg-img" style="background-image:url(img/slider/1.jpg);">
                <div class="pl-15">
                    <div class="row">
                        <div class="col-lg-5">
                            <div class="slider-content pl-15 slider-animated-1 text-center">
                                <h1>Big sales</h1>
                                <h2>Tháng 11</h2>
                                <h3>Đồng giá chỉ từ 99.000đ</h3>
                                <a href="#">Xem thêm</a>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
            <div class="single-slider slider-h1-2 pt-50 bg-img"
                 style="background-image:url(img/slider/2.jpg);text-align: center;">
                <div class="pl-15">
                    <div class="slider-content slider-content-2 slider-animated-1">
                        <h1 style="color:rgb(122, 121, 121)">Giảm sâu</h1>
                        <h2 style="color:rgb(250, 16, 16)">40%</h2>
                        <h3 style="color:rgb(105, 101, 100); font-size:40px;">Đại tiệc sale cuối năm</h3>
                        <a href="#">Mua ngay</a>
                    </div>
                </div>
            </div>
        </div>
    </div>
</div>
<!-- banner-area-start -->
<div class="banner-area banner-res-large pb-5 mt-16">
    <div class="container">
        <div class="row">
            <div class="col-lg-3 col-md-6 col-sm-6 col-12">
                <div class="single-banner ptb-10">
                    <div class="banner-img">
                        <a href="#"><img src="img/banner/1.png" alt="banner" /></a>
                    </div>
                    <div class="banner-text">
                        <h4>Miễn phí giao hàng</h4>
                        <p>Cho hóa đơn trên 250K VNĐ</p>
                    </div>
                </div>
            </div>
            <div class="col-lg-3 col-md-6 col-sm-6 col-12">
                <div class="single-banner ptb-10">
                    <div class="banner-img">
                        <a href="#"><img src="img/banner/2.png" alt="banner" /></a>
                    </div>
                    <div class="banner-text">
                        <h4>Đổi trả</h4>
                        <p>Trong 30 ngày</p>
                    </div>
                </div>
            </div>
            <div class="col-lg-3 col-md-6 col-sm-6 col-12">
                <div class="single-banner ptb-10">
                    <div class="banner-img">
                        <a href="#"><img src="img/banner/3.png" alt="banner" /></a>
                    </div>
                    <div class="banner-text">
                        <h4>Thanh toán</h4>
                        <p>Khi nhận hàng</p>
                    </div>
                </div>
            </div>
            <div class="col-lg-3 col-md-6 col-sm-6 col-12">
                <div class="single-banner ptb-10">
                    <div class="banner-img">
                        <a href="#"><img src="img/banner/4.png" alt="banner" /></a>
                    </div>
                    <div class="banner-text">
                        <h4>Hỗ trợ</h4>
                        <p>Liên hệ: + 0123.4567.89</p>
                    </div>
                </div>
            </div>
        </div>
    </div>
</div>
<!-- banner-area-end -->
<!-- slider-area-end -->
<!-- product-area-start -->

<div class="product-are mt-16 xs-mb">
    <div class="container">
        <div class="row">
            <div class="col-lg-12">
                <div class="section-title text-center">
                    <span class="line"></span>
                    <h2>Sách hay nổi bật</h2>
                </div>
            </div>
            <div class="col-lg-12">
                <!-- tab-menu-start -->
                <div class="tab-menu mb-20 text-center">
                    <ul class="nav justify-content-center">
                        <li><a class="active" href="#newbooks" data-toggle="tab">Sách mới</a></li>
                        <li><a href="#hotbooks" data-toggle="tab">Hot nhất</a></li>
                        <li><a href="#bestsellers" data-toggle="tab">Bán chạy</a></li>
                        <li><a href="#discountbooks" data-toggle="tab">Khuyến mãi</a></li>

                    </ul>
                </div>
                <!-- tab-menu-end -->
            </div>
        </div>
        <!-- tab-area-start -->
        <div class="tab-content">
            <div class="tab-pane fade show active" id="newbooks">

                <div class="tab-active owl-carousel">
                    <!-- single-product-start -->
                    <c:forEach items="${list}" var="p">
                        <div class="product-wrapper">


                            <div class="product-img">
                                <a href="product-details.html">
                                    <img src="${p.img}" alt="book" class="primary" />
                                </a>
                                <div class="quick-view">
                                    <a class="action-view" href="#" data-target="#productModal" data-toggle="modal"
                                       title="Xem nhanh">
                                        <i class="fa fa-search-plus"></i>
                                    </a>
                                </div>
                                <div class="product-flag">
                                    <ul>
                                        <li><span class="sale">mới</span> <br></li>
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
                                <h4><a href="#">${p.name}</a></h4>
                                <div class="product-price">
                                    <ul>
                                        <li>${p.price}</li>
                                        <li class="old-price">${p.salePrice}</li>
                                    </ul>
                                </div>
                            </div>
                            <div class="product-link">
                                <div class="product-button">
                                    <a href="#" title="Thêm vào giỏ hàng"><i class="fa fa-shopping-cart"></i>Thêm vào
                                        giỏ hàng</a>
                                </div>
                                <div class="add-to-link">
                                    <ul>
                                        <li><a href="product-details.html" title="Chi tiết"><i
                                                class="fas fa-external-link-alt"></i></a></li>
                                    </ul>
                                </div>
                            </div>

                        </div>
                    </c:forEach>
                    <!-- single-product-end -->
                </div>

            </div>
            <div class="tab-pane fade show" id="hotbooks">
                <div class="tab-active owl-carousel">
                    <!-- single-product-start -->
                    <div class="product-wrapper">
                        <div class="product-img">
                            <a href="product-details.html">
                                <img src="img/product/1.jpg" alt="book" class="primary" />
                            </a>
                            <div class="quick-view">
                                <a class="action-view" href="#" data-target="#productModal" data-toggle="modal"
                                   title="Xem nhanh">
                                    <i class="fa fa-search-plus"></i>
                                </a>
                            </div>
                            <div class="product-flag">
                                <ul>
                                    <li><span class="sale">mới</span></li>
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
                            <h4><a href="#">Nhân số học</a></h4>
                            <div class="product-price">
                                <ul>
                                    <li>60.000đ</li>
                                </ul>
                            </div>
                        </div>
                        <div class="product-link">
                            <div class="product-button">
                                <a href="#" title="Thêm vào giỏ hàng"><i class="fa fa-shopping-cart"></i>Thêm vào
                                    giỏ hàng</a>
                            </div>
                            <div class="add-to-link">
                                <ul>
                                    <li><a href="product-details.html" title="Chi tiết"><i
                                            class="fas fa-external-link-alt"></i></a></li>
                                </ul>
                            </div>
                        </div>
                    </div>
                    <!-- single-product-end -->
                    <!-- single-product-start -->
                    <div class="product-wrapper">
                        <div class="product-img">
                            <a href="product-details.html">
                                <img src="img/product/3.jpg" alt="book" class="primary" />
                            </a>
                            <div class="quick-view">
                                <a class="action-view" href="#" data-target="#productModal" data-toggle="modal"
                                   title="Xem nhanh">
                                    <i class="fa fa-search-plus"></i>
                                </a>
                            </div>
                            <div class="product-flag">
                                <ul>
                                    <li><span class="sale">mới</span> <br></li>
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
                            <h4><a href="#">Tô Bình Yên</a></h4>
                            <div class="product-price">
                                <ul>
                                    <li>52.000đ</li>
                                </ul>
                            </div>
                        </div>
                        <div class="product-link">
                            <div class="product-button">
                                <a href="#" title="Thêm vào giỏ hàng"><i class="fa fa-shopping-cart"></i>Thêm vào
                                    giỏ hàng</a>
                            </div>
                            <div class="add-to-link">
                                <ul>
                                    <li><a href="product-details.html" title="Chi tiết"><i
                                            class="fas fa-external-link-alt"></i></a></li>
                                </ul>
                            </div>
                        </div>
                    </div>
                    <!-- single-product-end -->
                    <!-- single-product-start -->
                    <div class="product-wrapper">
                        <div class="product-img">
                            <a href="product-details.html">
                                <img src="img/product/5.jpg" alt="book" class="primary" />
                            </a>
                            <div class="quick-view">
                                <a class="action-view" href="#" data-target="#productModal" data-toggle="modal"
                                   title="Xem nhanh">
                                    <i class="fa fa-search-plus"></i>
                                </a>
                            </div>
                            <div class="product-flag">
                                <ul>
                                    <li><span class="sale">mới</span> <br></li>
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
                            <h4><a href="#">Con chim xanh biếc bay về</a></h4>
                            <div class="product-price">
                                <ul>
                                    <li>34.000đ</li>
                                </ul>
                            </div>
                        </div>
                        <div class="product-link">
                            <div class="product-button">
                                <a href="#" title="Thêm vào giỏ hàng"><i class="fa fa-shopping-cart"></i>Thêm vào
                                    giỏ hàng</a>
                            </div>
                            <div class="add-to-link">
                                <ul>
                                    <li><a href="product-details.html" title="Chi tiết"><i
                                            class="fas fa-external-link-alt"></i></a></li>
                                </ul>
                            </div>
                        </div>
                    </div>
                    <!-- single-product-end -->
                    <!-- single-product-start -->
                    <div class="product-wrapper">
                        <div class="product-img">
                            <a href="product-details.html">
                                <img src="img/product/7.jpg" alt="book" class="primary" />
                            </a>
                            <div class="quick-view">
                                <a class="action-view" href="#" data-target="#productModal" data-toggle="modal"
                                   title="Xem nhanh">
                                    <i class="fa fa-search-plus"></i>
                                </a>
                            </div>
                            <div class="product-flag">
                                <ul>
                                    <li><span class="sale">mới</span> <br></li>
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
                            <h4><a href="#">Biên sử nước</a></h4>
                            <div class="product-price">
                                <ul>
                                    <li>30.000đ</li>
                                    <li class="old-price">32.000đ</li>
                                </ul>
                            </div>
                        </div>
                        <div class="product-link">
                            <div class="product-button">
                                <a href="#" title="Thêm vào giỏ hàng"><i class="fa fa-shopping-cart"></i>Thêm vào
                                    giỏ hàng</a>
                            </div>
                            <div class="add-to-link">
                                <ul>
                                    <li><a href="product-details.html" title="Chi tiết"><i
                                            class="fas fa-external-link-alt"></i></a></li>
                                </ul>
                            </div>
                        </div>
                    </div>
                    <!-- single-product-end -->
                    <!-- single-product-start -->
                    <div class="product-wrapper">
                        <div class="product-img">
                            <a href="product-details.html">
                                <img src="img/product/9.jpg" alt="book" class="primary" />
                            </a>
                            <div class="quick-view">
                                <a class="action-view" href="#" data-target="#productModal" data-toggle="modal"
                                   title="Xem nhanh">
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
                            <h4><a href="#">Từ tốt đến vĩ đại</a></h4>
                            <div class="product-price">
                                <ul>
                                    <li>35.000đ</li>
                                    <li class="old-price">40.000đ</li>
                                </ul>
                            </div>
                        </div>
                        <div class="product-link">
                            <div class="product-button">
                                <a href="#" title="Thêm vào giỏ hàng"><i class="fa fa-shopping-cart"></i>Thêm vào
                                    giỏ hàng</a>
                            </div>
                            <div class="add-to-link">
                                <ul>
                                    <li><a href="product-details.html" title="Chi tiết"><i
                                            class="fas fa-external-link-alt"></i></a></li>
                                </ul>
                            </div>
                        </div>
                    </div>
                    <!-- single-product-end -->
                    <!-- single-product-start -->
                    <div class="product-wrapper">
                        <div class="product-img">
                            <a href="#">
                                <img src="img/product/11.jpg" alt="book" class="primary" />
                            </a>
                            <div class="quick-view">
                                <a class="action-view" href="#" data-target="#productModal" data-toggle="modal"
                                   title="Xem nhanh">
                                    <i class="fa fa-search-plus"></i>
                                </a>
                            </div>
                            <div class="product-flag">
                                <ul>
                                    <li><span class="sale">mới</span> <br></li>
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
                            <h4><a href="#">Con chim xanh biếc bay về (tập 2)</a></h4>
                            <div class="product-price">
                                <ul>
                                    <li>74.000đ</li>
                                    <li class="old-price">78.000đ</li>
                                </ul>
                            </div>
                        </div>
                        <div class="product-link">
                            <div class="product-button">
                                <a href="#" title="Thêm vào giỏ hàng"><i class="fa fa-shopping-cart"></i>Thêm vào
                                    giỏ hàng</a>
                            </div>
                            <div class="add-to-link">
                                <ul>
                                    <li><a href="product-details.html" title="Chi tiết"><i
                                            class="fas fa-external-link-alt"></i></a></li>
                                </ul>
                            </div>
                        </div>
                    </div>
                    <!-- single-product-end -->
                </div>
            </div>
            <div class="tab-pane fade" id="bestsellers">
                <div class="tab-active owl-carousel">
                    <!-- single-product-start -->
                    <div class="product-wrapper">
                        <div class="product-img">
                            <a href="#">
                                <img src="img/product/2.jpg" alt="book" class="primary" />
                            </a>
                            <div class="quick-view">
                                <a class="action-view" href="#" data-target="#productModal" data-toggle="modal"
                                   title="Xem nhanh">
                                    <i class="fa fa-search-plus"></i>
                                </a>
                            </div>
                            <div class="product-flag">
                                <ul>
                                    <li><span class="sale">mới</span></li>
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
                            <h4><a href="#">Spy Family</a></h4>
                            <div class="product-price">
                                <ul>
                                    <li>30.000đ</li>
                                    <li class="old-price">32.000đ</li>
                                </ul>
                            </div>
                        </div>
                        <div class="product-link">
                            <div class="product-button">
                                <a href="#" title="Thêm vào giỏ hàng"><i class="fa fa-shopping-cart"></i>Thêm vào
                                    giỏ hàng</a>
                            </div>
                            <div class="add-to-link">
                                <ul>
                                    <li><a href="product-details.html" title="Chi tiết"><i
                                            class="fas fa-external-link-alt"></i></a></li>
                                </ul>
                            </div>
                        </div>
                    </div>
                    <!-- single-product-end -->
                    <!-- single-product-start -->
                    <div class="product-wrapper">
                        <div class="product-img">
                            <a href="#">
                                <img src="img/product/4.jpg" alt="book" class="primary" />
                            </a>
                            <div class="quick-view">
                                <a class="action-view" href="#" data-target="#productModal" data-toggle="modal"
                                   title="Xem nhanh">
                                    <i class="fa fa-search-plus"></i>
                                </a>
                            </div>
                            <div class="product-flag">
                                <ul>
                                    <li><span class="sale">mới</span></li>
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
                            <h4><a href="#">Jin</a></h4>
                            <div class="product-price">
                                <ul>
                                    <li>30.000đ</li>
                                    <li class="old-price">32.000đ</li>
                                </ul>
                            </div>
                        </div>
                        <div class="product-link">
                            <div class="product-button">
                                <a href="#" title="Thêm vào giỏ hàng"><i class="fa fa-shopping-cart"></i>Thêm vào
                                    giỏ hàng</a>
                            </div>
                            <div class="add-to-link">
                                <ul>
                                    <li><a href="product-details.html" title="Chi tiết"><i
                                            class="fas fa-external-link-alt"></i></a></li>
                                </ul>
                            </div>
                        </div>
                    </div>
                    <!-- single-product-end -->
                    <!-- single-product-start -->
                    <div class="product-wrapper">
                        <div class="product-img">
                            <a href="#">
                                <img src="img/product/6.jpg" alt="book" class="primary" />
                            </a>
                            <div class="quick-view">
                                <a class="action-view" href="#" data-target="#productModal" data-toggle="modal"
                                   title="Xem nhanh">
                                    <i class="fa fa-search-plus"></i>
                                </a>
                            </div>
                            <div class="product-flag">
                                <ul>
                                    <li><span class="sale">mới</span></li>
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
                            <h4><a href="#">Nhà giả kim</a></h4>
                            <div class="product-price">
                                <ul>
                                    <li>60.000đ</li>
                                </ul>
                            </div>
                        </div>
                        <div class="product-link">
                            <div class="product-button">
                                <a href="#" title="Thêm vào giỏ hàng"><i class="fa fa-shopping-cart"></i>Thêm vào
                                    giỏ hàng</a>
                            </div>
                            <div class="add-to-link">
                                <ul>
                                    <li><a href="product-details.html" title="Chi tiết"><i
                                            class="fas fa-external-link-alt"></i></a></li>
                                </ul>
                            </div>
                        </div>
                    </div>
                    <!-- single-product-end -->
                    <!-- single-product-start -->
                    <div class="product-wrapper">
                        <div class="product-img">
                            <a href="#">
                                <img src="img/product/8.jpg" alt="book" class="primary" />
                            </a>
                            <div class="quick-view">
                                <a class="action-view" href="#" data-target="#productModal" data-toggle="modal"
                                   title="Xem nhanh">
                                    <i class="fa fa-search-plus"></i>
                                </a>
                            </div>
                            <div class="product-flag">
                                <ul>
                                    <li><span class="sale">mới</span> <br></li>
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
                            <h4><a href="#">Lược sử loài người</a></h4>
                            <div class="product-price">
                                <ul>
                                    <li>52.000đ</li>
                                </ul>
                            </div>
                        </div>
                        <div class="product-link">
                            <div class="product-button">
                                <a href="#" title="Thêm vào giỏ hàng"><i class="fa fa-shopping-cart"></i>Thêm vào
                                    giỏ hàng</a>
                            </div>
                            <div class="add-to-link">
                                <ul>
                                    <li><a href="product-details.html" title="Chi tiết"><i
                                            class="fas fa-external-link-alt"></i></a></li>
                                </ul>
                            </div>
                        </div>
                    </div>
                    <!-- single-product-end -->
                    <!-- single-product-start -->
                    <div class="product-wrapper">
                        <div class="product-img">
                            <a href="#">
                                <img src="img/product/10.jpg" alt="book" class="primary" />
                            </a>
                            <div class="quick-view">
                                <a class="action-view" href="#" data-target="#productModal" data-toggle="modal"
                                   title="Xem nhanh">
                                    <i class="fa fa-search-plus"></i>
                                </a>
                            </div>
                            <div class="product-flag">
                                <ul>
                                    <li><span class="sale">mới</span> <br></li>
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
                            <h4><a href="#">Rich habits</a></h4>
                            <div class="product-price">
                                <ul>
                                    <li>35.000đ</li>
                                    <li class="old-price">40.000đ</li>
                                </ul>
                            </div>
                        </div>
                        <div class="product-link">
                            <div class="product-button">
                                <a href="#" title="Thêm vào giỏ hàng"><i class="fa fa-shopping-cart"></i>Thêm vào
                                    giỏ hàng</a>
                            </div>
                            <div class="add-to-link">
                                <ul>
                                    <li><a href="product-details.html" title="Chi tiết"><i
                                            class="fas fa-external-link-alt"></i></a></li>
                                </ul>
                            </div>
                        </div>
                    </div>
                    <!-- single-product-end -->
                    <!-- single-product-start -->
                    <div class="product-wrapper">
                        <div class="product-img">
                            <a href="#">
                                <img src="img/product/12.jpg" alt="book" class="primary" />
                            </a>
                            <div class="quick-view">
                                <a class="action-view" href="#" data-target="#productModal" data-toggle="modal"
                                   title="Xem nhanh">
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
                            <h4><a href="#">45 đời tổng thống Hoa Kì</a></h4>
                            <div class="product-price">
                                <ul>
                                    <li>74.000đ</li>
                                    <li class="old-price">78.000đ</li>
                                </ul>
                            </div>
                        </div>
                        <div class="product-link">
                            <div class="product-button">
                                <a href="#" title="Thêm vào giỏ hàng"><i class="fa fa-shopping-cart"></i>Thêm vào
                                    giỏ hàng</a>
                            </div>
                            <div class="add-to-link">
                                <ul>
                                    <li><a href="product-details.html" title="Chi tiết"><i
                                            class="fas fa-external-link-alt"></i></a></li>
                                </ul>
                            </div>
                        </div>
                    </div>
                    <!-- single-product-end -->
                </div>
            </div>
            <div class="tab-pane fade" id="discountbooks">
                <div class="tab-active owl-carousel">
                    <!-- single-product-start -->
                    <div class="product-wrapper">
                        <div class="product-img">
                            <a href="#">
                                <img src="img/product/14.jpg" alt="book" class="primary" />
                            </a>
                            <div class="quick-view">
                                <a class="action-view" href="#" data-target="#productModal" data-toggle="modal"
                                   title="Xem nhanh">
                                    <i class="fa fa-search-plus"></i>
                                </a>
                            </div>
                            <div class="product-flag">
                                <ul>
                                    <li><span class="sale">mới</span> <br></li>
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
                            <h4><a href="#">Thiên quân Tứ Phúc</a></h4>
                            <div class="product-price">
                                <ul>
                                    <li>35.000đ</li>
                                    <li class="old-price">40.000đ</li>
                                </ul>
                            </div>
                        </div>
                        <div class="product-link">
                            <div class="product-button">
                                <a href="#" title="Thêm vào giỏ hàng"><i class="fa fa-shopping-cart"></i>Thêm vào
                                    giỏ hàng</a>
                            </div>
                            <div class="add-to-link">
                                <ul>
                                    <li><a href="product-details.html" title="Chi tiết"><i
                                            class="fas fa-external-link-alt"></i></a></li>
                                </ul>
                            </div>
                        </div>
                    </div>
                    <!-- single-product-end -->
                    <!-- single-product-start -->
                    <div class="product-wrapper">
                        <div class="product-img">
                            <a href="#">
                                <img src="img/product/16.jpg" alt="book" class="primary" />
                            </a>
                            <div class="quick-view">
                                <a class="action-view" href="#" data-target="#productModal" data-toggle="modal"
                                   title="Xem nhanh">
                                    <i class="fa fa-search-plus"></i>
                                </a>
                            </div>
                            <div class="product-flag">
                                <ul>
                                    <li><span class="sale">mới</span></li>
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
                            <h4><a href="#">Ngày người thương thương một người khác</a></h4>
                            <div class="product-price">
                                <ul>
                                    <li>74.000đ</li>
                                    <li class="old-price">78.000đ</li>
                                </ul>
                            </div>
                        </div>
                        <div class="product-link">
                            <div class="product-button">
                                <a href="#" title="Thêm vào giỏ hàng"><i class="fa fa-shopping-cart"></i>Thêm vào
                                    giỏ hàng</a>
                            </div>
                            <div class="add-to-link">
                                <ul>
                                    <li><a href="product-details.html" title="Chi tiết"><i
                                            class="fas fa-external-link-alt"></i></a></li>
                                </ul>
                            </div>
                        </div>
                    </div>
                    <!-- single-product-end -->
                    <!-- single-product-start -->
                    <div class="product-wrapper">
                        <div class="product-img">
                            <a href="#">
                                <img src="img/product/18.jpg" alt="book" class="primary" />
                            </a>
                            <div class="quick-view">
                                <a class="action-view" href="#" data-target="#productModal" data-toggle="modal"
                                   title="Xem nhanh">
                                    <i class="fa fa-search-plus"></i>
                                </a>
                            </div>
                            <div class="product-flag">
                                <ul>
                                    <li><span class="sale">mới</span> <br></li>
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
                            <h4><a href="#">Đắc Nhân Tâm</a></h4>
                            <div class="product-price">
                                <ul>
                                    <li>60.000đ</li>
                                </ul>
                            </div>
                        </div>
                        <div class="product-link">
                            <div class="product-button">
                                <a href="#" title="Thêm vào giỏ hàng"><i class="fa fa-shopping-cart"></i>Thêm vào
                                    giỏ hàng</a>
                            </div>
                            <div class="add-to-link">
                                <ul>
                                    <li><a href="product-details.html" title="Chi tiết"><i
                                            class="fas fa-external-link-alt"></i></a></li>
                                </ul>
                            </div>
                        </div>
                    </div>
                    <!-- single-product-end -->
                    <!-- single-product-start -->
                    <div class="product-wrapper">
                        <div class="product-img">
                            <a href="#">
                                <img src="img/product/19.jpg" alt="book" class="primary" />
                            </a>
                            <div class="quick-view">
                                <a class="action-view" href="#" data-target="#productModal" data-toggle="modal"
                                   title="Xem nhanh">
                                    <i class="fa fa-search-plus"></i>
                                </a>
                            </div>
                            <div class="product-flag">
                                <ul>
                                    <li><span class="sale">mới</span></li>
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
                            <h4><a href="#">This is marketing </a></h4>
                            <div class="product-price">
                                <ul>
                                    <li>422.000đ0đ</li>
                                </ul>
                            </div>
                        </div>
                        <div class="product-link">
                            <div class="product-button">
                                <a href="#" title="Thêm vào giỏ hàng"><i class="fa fa-shopping-cart"></i>Thêm vào
                                    giỏ hàng</a>
                            </div>
                            <div class="add-to-link">
                                <ul>
                                    <li><a href="product-details.html" title="Chi tiết"><i
                                            class="fas fa-external-link-alt"></i></a></li>
                                </ul>
                            </div>
                        </div>
                    </div>
                    <!-- single-product-end -->
                    <!-- single-product-start -->
                    <div class="product-wrapper">
                        <div class="product-img">
                            <a href="#">
                                <img src="img/product/17.jpg" alt="book" class="primary" />
                            </a>
                            <div class="quick-view">
                                <a class="action-view" href="#" data-target="#productModal" data-toggle="modal"
                                   title="Xem nhanh">
                                    <i class="fa fa-search-plus"></i>
                                </a>
                            </div>
                            <div class="product-flag">
                                <ul>
                                    <li><span class="sale">mới</span></li>
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
                            <h4><a href="#">Trillion Dolar Coach</a></h4>
                            <div class="product-price">
                                <ul>
                                    <li>346.500đ</li>
                                </ul>
                            </div>
                        </div>
                        <div class="product-link">
                            <div class="product-button">
                                <a href="#" title="Thêm vào giỏ hàng"><i class="fa fa-shopping-cart"></i>Thêm vào
                                    giỏ hàng</a>
                            </div>
                            <div class="add-to-link">
                                <ul>
                                    <li><a href="product-details.html" title="Chi tiết"><i
                                            class="fas fa-external-link-alt"></i></a></li>
                                </ul>
                            </div>
                        </div>
                    </div>
                    <!-- single-product-end -->
                    <!-- single-product-start -->
                    <div class="product-wrapper">
                        <div class="product-img">
                            <a href="#">
                                <img src="img/product/13.jpg" alt="book" class="primary" />
                            </a>
                            <div class="quick-view">
                                <a class="action-view" href="#" data-target="#productModal" data-toggle="modal"
                                   title="Xem nhanh">
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
                            <h4><a href="#">Từ điển tiếng em</a></h4>
                            <div class="product-price">
                                <ul>
                                    <li>80.000đ</li>
                                    <li class="old-price">122.000đ</li>
                                </ul>
                            </div>
                        </div>
                        <div class="product-link">
                            <div class="product-button">
                                <a href="#" title="Thêm vào giỏ hàng"><i class="fa fa-shopping-cart"></i>Thêm vào
                                    giỏ hàng</a>
                            </div>
                            <div class="add-to-link">
                                <ul>
                                    <li><a href="product-details.html" title="Chi tiết"><i
                                            class="fas fa-external-link-alt"></i></a></li>
                                </ul>
                            </div>
                        </div>
                    </div>
                    <!-- single-product-end -->
                </div>
            </div>
        </div>
        <!-- tab-area-end -->
    </div>
</div>

<!-- product-area-end -->
<!-- banner-area-start -->
<!-- <div class="banner-area-5 mtb-95">
        <div class="container">
            <div class="row">
                <div class="col-lg-12">
                    <div class="banner-img-2">
                        <a href="#"><img src="img/banner/5.jpg" alt="banner" /></a>
                        <div class="banner-text">
                            <h3>G. Meyer Books & Spiritual Traveler Press</h3>
                            <h2>Giảm đến 30%</h2>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </div> -->
<!-- banner-area-end -->

<!-- new-book-area-start -->
<div class="new-book-area">
    <div class="container">
        <div class="row">
            <div class="col-lg-12">
                <div class="section-title text-center mt-16  section-title-res">
                    <span class="line"> </span>
                    <h2>Sách tâm lí- kĩ năng</h2>
                </div>
            </div>
        </div>
        <div class="tab-active owl-carousel">
            <div class="tab-total">
                <!-- single-product-start -->
                <div class="product-wrapper mb-15">
                    <div class="product-img">
                        <a href="#">
                            <img src="img/product/50.jpg" alt="book" class="primary" />
                        </a>
                        <div class="quick-view">
                            <a class="action-view" href="#" data-target="#productModal" data-toggle="modal"
                               title="Xem nhanh">
                                <i class="fa fa-search-plus"></i>
                            </a>
                        </div>
                        <div class="product-flag">
                            <ul>
                                <li><span class="sale">mới</span> </li>
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
                        <h4><a href="#">Cẩm nang giáo dục</a></h4>
                        <div class="product-price">
                            <ul>
                                <li>60.000đ</li>
                            </ul>
                        </div>
                    </div>
                    <div class="product-link">
                        <div class="product-button">
                            <a href="#" title="Thêm vào giỏ hàng"><i class="fa fa-shopping-cart"></i>Thêm vào giỏ
                                hàng</a>
                        </div>
                        <div class="add-to-link">
                            <ul>
                                <li><a href="product-details.html" title="Chi tiết"><i
                                        class="fas fa-external-link-alt"></i></a></li>
                            </ul>
                        </div>
                    </div>
                </div>
                <!-- single-product-end -->
                <!-- single-product-start -->
                <div class="product-wrapper">
                    <div class="product-img">
                        <a href="#">
                            <img src="img/product/49.jpg" alt="book" class="primary" />
                        </a>
                        <div class="quick-view">
                            <a class="action-view" href="#" data-target="#productModal" data-toggle="modal"
                               title="Xem nhanh">
                                <i class="fa fa-search-plus"></i>
                            </a>
                        </div>
                        <div class="product-flag">
                            <ul>
                                <li><span class="sale">mới</span> <br></li>
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
                        <h4><a href="#">Cẩm nang con trai</a></h4>
                        <div class="product-price">
                            <ul>
                                <li>34.000đ</li>
                                <li class="old-price">36.000đ</li>
                            </ul>
                        </div>
                    </div>
                    <div class="product-link">
                        <div class="product-button">
                            <a href="#" title="Thêm vào giỏ hàng"><i class="fa fa-shopping-cart"></i>Thêm vào giỏ
                                hàng</a>
                        </div>
                        <div class="add-to-link">
                            <ul>
                                <li><a href="product-details.html" title="Chi tiết"><i
                                        class="fas fa-external-link-alt"></i></a></li>
                            </ul>
                        </div>
                    </div>
                </div>
                <!-- single-product-end -->
            </div>
            <div class="tab-total">
                <!-- single-product-start -->
                <div class="product-wrapper mb-15">
                    <div class="product-img">
                        <a href="#">
                            <img src="img/product/49.jpg" alt="book" class="primary" />
                        </a>
                        <div class="quick-view">
                            <a class="action-view" href="#" data-target="#productModal" data-toggle="modal"
                               title="Xem nhanh">
                                <i class="fa fa-search-plus"></i>
                            </a>
                        </div>
                        <div class="product-flag">
                            <ul>
                                <li><span class="sale">mới</span> <br></li>
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
                        <h4><a href="#">Cẩm nang con gái</a></h4>
                        <div class="product-price">
                            <ul>
                                <li>52.000đ</li>
                            </ul>
                        </div>
                    </div>
                    <div class="product-link">
                        <div class="product-button">
                            <a href="#" title="Thêm vào giỏ hàng"><i class="fa fa-shopping-cart"></i>Thêm vào giỏ
                                hàng</a>
                        </div>
                        <div class="add-to-link">
                            <ul>
                                <li><a href="product-details.html" title="Chi tiết"><i
                                        class="fas fa-external-link-alt"></i></a></li>
                            </ul>
                        </div>
                    </div>
                </div>
                <!-- single-product-end -->
                <!-- single-product-start -->
                <div class="product-wrapper">
                    <div class="product-img">
                        <a href="#">
                            <img src="img/product/47.jpg" alt="book" class="primary" />
                        </a>
                        <div class="quick-view">
                            <a class="action-view" href="#" data-target="#productModal" data-toggle="modal"
                               title="Xem nhanh">
                                <i class="fa fa-search-plus"></i>
                            </a>
                        </div>
                        <div class="product-flag">
                            <ul>
                                <li><span class="sale">mới</span> </li>
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
                        <h4><a href="#">Tôi quyết định sống cho mình</a></h4>
                        <div class="product-price">
                            <ul>
                                <li>59.000đ</li>
                            </ul>
                        </div>
                    </div>
                    <div class="product-link">
                        <div class="product-button">
                            <a href="#" title="Thêm vào giỏ hàng"><i class="fa fa-shopping-cart"></i>Thêm vào giỏ
                                hàng</a>
                        </div>
                        <div class="add-to-link">
                            <ul>
                                <li><a href="product-details.html" title="Chi tiết"><i
                                        class="fas fa-external-link-alt"></i></a></li>
                            </ul>
                        </div>
                    </div>
                </div>
                <!-- single-product-end -->
            </div>
            <div class="tab-total">
                <!-- single-product-start -->
                <div class="product-wrapper mb-15">
                    <div class="product-img">
                        <a href="#">
                            <img src="img/product/41.jpg" alt="book" class="primary" />
                        </a>
                        <div class="quick-view">
                            <a class="action-view" href="#" data-target="#productModal" data-toggle="modal"
                               title="Xem nhanh">
                                <i class="fa fa-search-plus"></i>
                            </a>
                        </div>
                        <div class="product-flag">
                            <ul>
                                <li><span class="sale">mới</span> </li>
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
                        <h4><a href="#">Memory</a></h4>
                        <div class="product-price">
                            <ul>
                                <li>34.000đ</li>
                            </ul>
                        </div>
                    </div>
                    <div class="product-link">
                        <div class="product-button">
                            <a href="#" title="Thêm vào giỏ hàng"><i class="fa fa-shopping-cart"></i>Thêm vào giỏ
                                hàng</a>
                        </div>
                        <div class="add-to-link">
                            <ul>
                                <li><a href="product-details.html" title="Chi tiết"><i
                                        class="fas fa-external-link-alt"></i></a></li>
                            </ul>
                        </div>
                    </div>
                </div>
                <!-- single-product-end -->
                <!-- single-product-start -->
                <div class="product-wrapper">
                    <div class="product-img">
                        <a href="#">
                            <img src="img/product/33.jpg" alt="book" class="primary" />
                        </a>
                        <div class="quick-view">
                            <a class="action-view" href="#" data-target="#productModal" data-toggle="modal"
                               title="Xem nhanh">
                                <i class="fa fa-search-plus"></i>
                            </a>
                        </div>
                        <div class="product-flag">
                            <ul>
                                <li><span class="sale">mới</span> </li>
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
                        <h4><a href="#">Bác Hồ</a></h4>
                        <div class="product-price">
                            <ul>
                                <li>32.000đ</li>
                            </ul>
                        </div>
                    </div>
                    <div class="product-link">
                        <div class="product-button">
                            <a href="#" title="Thêm vào giỏ hàng"><i class="fa fa-shopping-cart"></i>Thêm vào giỏ
                                hàng</a>
                        </div>
                        <div class="add-to-link">
                            <ul>
                                <li><a href="product-details.html" title="Chi tiết"><i
                                        class="fas fa-external-link-alt"></i></a></li>
                            </ul>
                        </div>
                    </div>
                </div>
                <!-- single-product-end -->
            </div>
            <div class="tab-total">
                <!-- single-product-start -->
                <div class="product-wrapper mb-15">
                    <div class="product-img">
                        <a href="#">
                            <img src="img/product/32.jpg" alt="book" class="primary" />
                        </a>
                        <div class="quick-view">
                            <a class="action-view" href="#" data-target="#productModal" data-toggle="modal"
                               title="Xem nhanh">
                                <i class="fa fa-search-plus"></i>
                            </a>
                        </div>
                        <div class="product-flag">
                            <ul>
                                <li><span class="sale">mới</span> <br></li>
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
                        <h4><a href="#">Gương sáng của thế hệ</a></h4>
                        <div class="product-price">
                            <ul>
                                <li>30.000đ</li>
                                <li class="old-price">32.000đ</li>
                            </ul>
                        </div>
                    </div>
                    <div class="product-link">
                        <div class="product-button">
                            <a href="#" title="Thêm vào giỏ hàng"><i class="fa fa-shopping-cart"></i>Thêm vào giỏ
                                hàng</a>
                        </div>
                        <div class="add-to-link">
                            <ul>
                                <li><a href="product-details.html" title="Chi tiết"><i
                                        class="fas fa-external-link-alt"></i></a></li>
                            </ul>
                        </div>
                    </div>
                </div>
                <!-- single-product-end -->
                <!-- single-product-start -->
                <div class="product-wrapper">
                    <div class="product-img">
                        <a href="#">
                            <img src="img/product/20.jpg" alt="book" class="primary" />
                        </a>
                        <div class="quick-view">
                            <a class="action-view" href="#" data-target="#productModal" data-toggle="modal"
                               title="Xem nhanh">
                                <i class="fa fa-search-plus"></i>
                            </a>
                        </div>
                        <div class="product-flag">
                            <ul>
                                <li><span class="sale">mới</span> </li>
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
                        <h4><a href="#">Deep learning</a></h4>
                        <div class="product-price">
                            <ul>
                                <li>252.000đ</li>
                            </ul>
                        </div>
                    </div>
                    <div class="product-link">
                        <div class="product-button">
                            <a href="#" title="Thêm vào giỏ hàng"><i class="fa fa-shopping-cart"></i>Thêm vào giỏ
                                hàng</a>
                        </div>
                        <div class="add-to-link">
                            <ul>
                                <li><a href="product-details.html" title="Chi tiết"><i
                                        class="fas fa-external-link-alt"></i></a></li>
                            </ul>
                        </div>
                    </div>
                </div>
                <!-- single-product-end -->
            </div>
            <div class="tab-total">
                <!-- single-product-start -->
                <div class="product-wrapper mb-15">
                    <div class="product-img">
                        <a href="#">
                            <img src="img/product/22.jpg" alt="book" class="primary" />
                        </a>
                        <div class="quick-view">
                            <a class="action-view" href="#" data-target="#productModal" data-toggle="modal"
                               title="Xem nhanh">
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
                        <h4><a href="#">Hơi thở hóa tinh không</a></h4>
                        <div class="product-price">
                            <ul>
                                <li>35.000đ</li>
                                <li class="old-price">40.000đ</li>
                            </ul>
                        </div>
                    </div>
                    <div class="product-link">
                        <div class="product-button">
                            <a href="#" title="Thêm vào giỏ hàng"><i class="fa fa-shopping-cart"></i>Thêm vào giỏ
                                hàng</a>
                        </div>
                        <div class="add-to-link">
                            <ul>
                                <li><a href="product-details.html" title="Chi tiết"><i
                                        class="fas fa-external-link-alt"></i></a></li>
                            </ul>
                        </div>
                    </div>
                </div>
                <!-- single-product-end -->
                <!-- single-product-start -->
                <div class="product-wrapper">
                    <div class="product-img">
                        <a href="#">
                            <img src="img/product/23.jpg" alt="book" class="primary" />
                        </a>
                        <div class="quick-view">
                            <a class="action-view" href="#" data-target="#productModal" data-toggle="modal"
                               title="Xem nhanh">
                                <i class="fa fa-search-plus"></i>
                            </a>
                        </div>
                        <div class="product-flag">
                            <ul>
                                <li><span class="sale">mới</span> </li>
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
                        <h4><a href="#">Bad blood</a></h4>
                        <div class="product-price">
                            <ul>
                                <li>35.000đ</li>
                                <li class="old-price">40.000đ</li>
                            </ul>
                        </div>
                    </div>
                    <div class="product-link">
                        <div class="product-button">
                            <a href="#" title="Thêm vào giỏ hàng"><i class="fa fa-shopping-cart"></i>Thêm vào giỏ
                                hàng</a>
                        </div>
                        <div class="add-to-link">
                            <ul>
                                <li><a href="product-details.html" title="Chi tiết"><i
                                        class="fas fa-external-link-alt"></i></a></li>
                            </ul>
                        </div>
                    </div>
                </div>
                <!-- single-product-end -->
            </div>
            <div class="tab-total">
                <!-- single-product-start -->
                <div class="product-wrapper mb-15">
                    <div class="product-img">
                        <a href="#">
                            <img src="img/product/24.jpg" alt="book" class="primary" />
                        </a>
                        <div class="quick-view">
                            <a class="action-view" href="#" data-target="#productModal" data-toggle="modal"
                               title="Xem nhanh">
                                <i class="fa fa-search-plus"></i>
                            </a>
                        </div>
                        <div class="product-flag">
                            <ul>
                                <li><span class="sale">mới</span></li>
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
                        <h4><a href="#">Tàn nhẫn yêu thương</a></h4>
                        <div class="product-price">
                            <ul>
                                <li>74.000đ</li>
                                <li class="old-price">78.000đ</li>
                            </ul>
                        </div>
                    </div>
                    <div class="product-link">
                        <div class="product-button">
                            <a href="#" title="Thêm vào giỏ hàng"><i class="fa fa-shopping-cart"></i>Thêm vào giỏ
                                hàng</a>
                        </div>
                        <div class="add-to-link">
                            <ul>
                                <li><a href="product-details.html" title="Chi tiết"><i
                                        class="fas fa-external-link-alt"></i></a></li>
                            </ul>
                        </div>
                    </div>
                </div>
                <!-- single-product-end -->
                <!-- single-product-start -->
                <div class="product-wrapper">
                    <div class="product-img">
                        <a href="#">
                            <img src="img/product/3.jpg" alt="book" class="primary" />
                        </a>
                        <div class="quick-view">
                            <a class="action-view" href="#" data-target="#productModal" data-toggle="modal"
                               title="Xem nhanh">
                                <i class="fa fa-search-plus"></i>
                            </a>
                        </div>
                        <div class="product-flag">
                            <ul>
                                <li><span class="sale">mới</span> </li>
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
                        <h4><a href="#">Tô bình yên</a></h4>
                        <div class="product-price">
                            <ul>
                                <li>36.000đ</li>
                                <li class="old-price">38.000đ</li>
                            </ul>
                        </div>
                    </div>
                    <div class="product-link">
                        <div class="product-button">
                            <a href="#" title="Thêm vào giỏ hàng"><i class="fa fa-shopping-cart"></i>Thêm vào giỏ
                                hàng</a>
                        </div>
                        <div class="add-to-link">
                            <ul>
                                <li><a href="product-details.html" title="Chi tiết"><i
                                        class="fas fa-external-link-alt"></i></a></li>
                            </ul>
                        </div>
                    </div>
                </div>
                <!-- single-product-end -->
            </div>
        </div>
    </div>
</div>
<!-- new-book-area-start -->
<!-- banner-static-area-start -->

<div class="new-book-area">
    <div class="container">
        <div class="row">
            <div class="col-lg-12">
                <div class="section-title text-center mt-16  section-title-res">
                    <span class="line"> </span>
                    <h2>Sách văn học</h2>
                </div>
            </div>
        </div>
        <div class="tab-active owl-carousel">
            <div class="tab-total">
                <!-- single-product-start -->
                <div class="product-wrapper mb-15">
                    <div class="product-img">
                        <a href="#">
                            <img src="img/product/50.jpg" alt="book" class="primary" />
                        </a>
                        <div class="quick-view">
                            <a class="action-view" href="#" data-target="#productModal" data-toggle="modal"
                               title="Xem nhanh">
                                <i class="fa fa-search-plus"></i>
                            </a>
                        </div>
                        <div class="product-flag">
                            <ul>
                                <li><span class="sale">mới</span> </li>
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
                        <h4><a href="#">Cẩm nang giáo dục</a></h4>
                        <div class="product-price">
                            <ul>
                                <li>60.000đ</li>
                            </ul>
                        </div>
                    </div>
                    <div class="product-link">
                        <div class="product-button">
                            <a href="#" title="Thêm vào giỏ hàng"><i class="fa fa-shopping-cart"></i>Thêm vào giỏ
                                hàng</a>
                        </div>
                        <div class="add-to-link">
                            <ul>
                                <li><a href="product-details.html" title="Chi tiết"><i
                                        class="fas fa-external-link-alt"></i></a></li>
                            </ul>
                        </div>
                    </div>
                </div>
                <!-- single-product-end -->
                <!-- single-product-start -->
                <div class="product-wrapper">
                    <div class="product-img">
                        <a href="#">
                            <img src="img/product/49.jpg" alt="book" class="primary" />
                        </a>
                        <div class="quick-view">
                            <a class="action-view" href="#" data-target="#productModal" data-toggle="modal"
                               title="Xem nhanh">
                                <i class="fa fa-search-plus"></i>
                            </a>
                        </div>
                        <div class="product-flag">
                            <ul>
                                <li><span class="sale">mới</span> <br></li>
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
                        <h4><a href="#">Cẩm nang con trai</a></h4>
                        <div class="product-price">
                            <ul>
                                <li>34.000đ</li>
                                <li class="old-price">36.000đ</li>
                            </ul>
                        </div>
                    </div>
                    <div class="product-link">
                        <div class="product-button">
                            <a href="#" title="Thêm vào giỏ hàng"><i class="fa fa-shopping-cart"></i>Thêm vào giỏ
                                hàng</a>
                        </div>
                        <div class="add-to-link">
                            <ul>
                                <li><a href="product-details.html" title="Chi tiết"><i
                                        class="fas fa-external-link-alt"></i></a></li>
                            </ul>
                        </div>
                    </div>
                </div>
                <!-- single-product-end -->
            </div>
            <div class="tab-total">
                <!-- single-product-start -->
                <div class="product-wrapper mb-15">
                    <div class="product-img">
                        <a href="#">
                            <img src="img/product/49.jpg" alt="book" class="primary" />
                        </a>
                        <div class="quick-view">
                            <a class="action-view" href="#" data-target="#productModal" data-toggle="modal"
                               title="Xem nhanh">
                                <i class="fa fa-search-plus"></i>
                            </a>
                        </div>
                        <div class="product-flag">
                            <ul>
                                <li><span class="sale">mới</span> <br></li>
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
                        <h4><a href="#">Cẩm nang con gái</a></h4>
                        <div class="product-price">
                            <ul>
                                <li>52.000đ</li>
                            </ul>
                        </div>
                    </div>
                    <div class="product-link">
                        <div class="product-button">
                            <a href="#" title="Thêm vào giỏ hàng"><i class="fa fa-shopping-cart"></i>Thêm vào giỏ
                                hàng</a>
                        </div>
                        <div class="add-to-link">
                            <ul>
                                <li><a href="product-details.html" title="Chi tiết"><i
                                        class="fas fa-external-link-alt"></i></a></li>
                            </ul>
                        </div>
                    </div>
                </div>
                <!-- single-product-end -->
                <!-- single-product-start -->
                <div class="product-wrapper">
                    <div class="product-img">
                        <a href="#">
                            <img src="img/product/47.jpg" alt="book" class="primary" />
                        </a>
                        <div class="quick-view">
                            <a class="action-view" href="#" data-target="#productModal" data-toggle="modal"
                               title="Xem nhanh">
                                <i class="fa fa-search-plus"></i>
                            </a>
                        </div>
                        <div class="product-flag">
                            <ul>
                                <li><span class="sale">mới</span> </li>
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
                        <h4><a href="#">Tôi quyết định sống cho mình</a></h4>
                        <div class="product-price">
                            <ul>
                                <li>59.000đ</li>
                            </ul>
                        </div>
                    </div>
                    <div class="product-link">
                        <div class="product-button">
                            <a href="#" title="Thêm vào giỏ hàng"><i class="fa fa-shopping-cart"></i>Thêm vào giỏ
                                hàng</a>
                        </div>
                        <div class="add-to-link">
                            <ul>
                                <li><a href="product-details.html" title="Chi tiết"><i
                                        class="fas fa-external-link-alt"></i></a></li>
                            </ul>
                        </div>
                    </div>
                </div>
                <!-- single-product-end -->
            </div>
            <div class="tab-total">
                <!-- single-product-start -->
                <div class="product-wrapper mb-15">
                    <div class="product-img">
                        <a href="#">
                            <img src="img/product/41.jpg" alt="book" class="primary" />
                        </a>
                        <div class="quick-view">
                            <a class="action-view" href="#" data-target="#productModal" data-toggle="modal"
                               title="Xem nhanh">
                                <i class="fa fa-search-plus"></i>
                            </a>
                        </div>
                        <div class="product-flag">
                            <ul>
                                <li><span class="sale">mới</span> </li>
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
                        <h4><a href="#">Memory</a></h4>
                        <div class="product-price">
                            <ul>
                                <li>34.000đ</li>
                            </ul>
                        </div>
                    </div>
                    <div class="product-link">
                        <div class="product-button">
                            <a href="#" title="Thêm vào giỏ hàng"><i class="fa fa-shopping-cart"></i>Thêm vào giỏ
                                hàng</a>
                        </div>
                        <div class="add-to-link">
                            <ul>
                                <li><a href="product-details.html" title="Chi tiết"><i
                                        class="fas fa-external-link-alt"></i></a></li>
                            </ul>
                        </div>
                    </div>
                </div>
                <!-- single-product-end -->
                <!-- single-product-start -->
                <div class="product-wrapper">
                    <div class="product-img">
                        <a href="#">
                            <img src="img/product/33.jpg" alt="book" class="primary" />
                        </a>
                        <div class="quick-view">
                            <a class="action-view" href="#" data-target="#productModal" data-toggle="modal"
                               title="Xem nhanh">
                                <i class="fa fa-search-plus"></i>
                            </a>
                        </div>
                        <div class="product-flag">
                            <ul>
                                <li><span class="sale">mới</span> </li>
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
                        <h4><a href="#">Bác Hồ</a></h4>
                        <div class="product-price">
                            <ul>
                                <li>32.000đ</li>
                            </ul>
                        </div>
                    </div>
                    <div class="product-link">
                        <div class="product-button">
                            <a href="#" title="Thêm vào giỏ hàng"><i class="fa fa-shopping-cart"></i>Thêm vào giỏ
                                hàng</a>
                        </div>
                        <div class="add-to-link">
                            <ul>
                                <li><a href="product-details.html" title="Chi tiết"><i
                                        class="fas fa-external-link-alt"></i></a></li>
                            </ul>
                        </div>
                    </div>
                </div>
                <!-- single-product-end -->
            </div>
            <div class="tab-total">
                <!-- single-product-start -->
                <div class="product-wrapper mb-15">
                    <div class="product-img">
                        <a href="#">
                            <img src="img/product/32.jpg" alt="book" class="primary" />
                        </a>
                        <div class="quick-view">
                            <a class="action-view" href="#" data-target="#productModal" data-toggle="modal"
                               title="Xem nhanh">
                                <i class="fa fa-search-plus"></i>
                            </a>
                        </div>
                        <div class="product-flag">
                            <ul>
                                <li><span class="sale">mới</span> <br></li>
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
                        <h4><a href="#">Gương sáng của thế hệ</a></h4>
                        <div class="product-price">
                            <ul>
                                <li>30.000đ</li>
                                <li class="old-price">32.000đ</li>
                            </ul>
                        </div>
                    </div>
                    <div class="product-link">
                        <div class="product-button">
                            <a href="#" title="Thêm vào giỏ hàng"><i class="fa fa-shopping-cart"></i>Thêm vào giỏ
                                hàng</a>
                        </div>
                        <div class="add-to-link">
                            <ul>
                                <li><a href="product-details.html" title="Chi tiết"><i
                                        class="fas fa-external-link-alt"></i></a></li>
                            </ul>
                        </div>
                    </div>
                </div>
                <!-- single-product-end -->
                <!-- single-product-start -->
                <div class="product-wrapper">
                    <div class="product-img">
                        <a href="#">
                            <img src="img/product/20.jpg" alt="book" class="primary" />
                        </a>
                        <div class="quick-view">
                            <a class="action-view" href="#" data-target="#productModal" data-toggle="modal"
                               title="Xem nhanh">
                                <i class="fa fa-search-plus"></i>
                            </a>
                        </div>
                        <div class="product-flag">
                            <ul>
                                <li><span class="sale">mới</span> </li>
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
                        <h4><a href="#">Deep learning</a></h4>
                        <div class="product-price">
                            <ul>
                                <li>252.000đ</li>
                            </ul>
                        </div>
                    </div>
                    <div class="product-link">
                        <div class="product-button">
                            <a href="#" title="Thêm vào giỏ hàng"><i class="fa fa-shopping-cart"></i>Thêm vào giỏ
                                hàng</a>
                        </div>
                        <div class="add-to-link">
                            <ul>
                                <li><a href="product-details.html" title="Chi tiết"><i
                                        class="fas fa-external-link-alt"></i></a></li>
                            </ul>
                        </div>
                    </div>
                </div>
                <!-- single-product-end -->
            </div>
            <div class="tab-total">
                <!-- single-product-start -->
                <div class="product-wrapper mb-15">
                    <div class="product-img">
                        <a href="#">
                            <img src="img/product/22.jpg" alt="book" class="primary" />
                        </a>
                        <div class="quick-view">
                            <a class="action-view" href="#" data-target="#productModal" data-toggle="modal"
                               title="Xem nhanh">
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
                        <h4><a href="#">Hơi thở hóa tinh không</a></h4>
                        <div class="product-price">
                            <ul>
                                <li>35.000đ</li>
                                <li class="old-price">40.000đ</li>
                            </ul>
                        </div>
                    </div>
                    <div class="product-link">
                        <div class="product-button">
                            <a href="#" title="Thêm vào giỏ hàng"><i class="fa fa-shopping-cart"></i>Thêm vào giỏ
                                hàng</a>
                        </div>
                        <div class="add-to-link">
                            <ul>
                                <li><a href="product-details.html" title="Chi tiết"><i
                                        class="fas fa-external-link-alt"></i></a></li>
                            </ul>
                        </div>
                    </div>
                </div>
                <!-- single-product-end -->
                <!-- single-product-start -->
                <div class="product-wrapper">
                    <div class="product-img">
                        <a href="#">
                            <img src="img/product/23.jpg" alt="book" class="primary" />
                        </a>
                        <div class="quick-view">
                            <a class="action-view" href="#" data-target="#productModal" data-toggle="modal"
                               title="Xem nhanh">
                                <i class="fa fa-search-plus"></i>
                            </a>
                        </div>
                        <div class="product-flag">
                            <ul>
                                <li><span class="sale">mới</span> </li>
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
                        <h4><a href="#">Bad blood</a></h4>
                        <div class="product-price">
                            <ul>
                                <li>35.000đ</li>
                                <li class="old-price">40.000đ</li>
                            </ul>
                        </div>
                    </div>
                    <div class="product-link">
                        <div class="product-button">
                            <a href="#" title="Thêm vào giỏ hàng"><i class="fa fa-shopping-cart"></i>Thêm vào giỏ
                                hàng</a>
                        </div>
                        <div class="add-to-link">
                            <ul>
                                <li><a href="product-details.html" title="Chi tiết"><i
                                        class="fas fa-external-link-alt"></i></a></li>
                            </ul>
                        </div>
                    </div>
                </div>
                <!-- single-product-end -->
            </div>
            <div class="tab-total">
                <!-- single-product-start -->
                <div class="product-wrapper mb-15">
                    <div class="product-img">
                        <a href="#">
                            <img src="img/product/24.jpg" alt="book" class="primary" />
                        </a>
                        <div class="quick-view">
                            <a class="action-view" href="#" data-target="#productModal" data-toggle="modal"
                               title="Xem nhanh">
                                <i class="fa fa-search-plus"></i>
                            </a>
                        </div>
                        <div class="product-flag">
                            <ul>
                                <li><span class="sale">mới</span></li>
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
                        <h4><a href="#">Tàn nhẫn yêu thương</a></h4>
                        <div class="product-price">
                            <ul>
                                <li>74.000đ</li>
                                <li class="old-price">78.000đ</li>
                            </ul>
                        </div>
                    </div>
                    <div class="product-link">
                        <div class="product-button">
                            <a href="#" title="Thêm vào giỏ hàng"><i class="fa fa-shopping-cart"></i>Thêm vào giỏ
                                hàng</a>
                        </div>
                        <div class="add-to-link">
                            <ul>
                                <li><a href="product-details.html" title="Chi tiết"><i
                                        class="fas fa-external-link-alt"></i></a></li>
                            </ul>
                        </div>
                    </div>
                </div>
                <!-- single-product-end -->
                <!-- single-product-start -->
                <div class="product-wrapper">
                    <div class="product-img">
                        <a href="#">
                            <img src="img/product/3.jpg" alt="book" class="primary" />
                        </a>
                        <div class="quick-view">
                            <a class="action-view" href="#" data-target="#productModal" data-toggle="modal"
                               title="Xem nhanh">
                                <i class="fa fa-search-plus"></i>
                            </a>
                        </div>
                        <div class="product-flag">
                            <ul>
                                <li><span class="sale">mới</span> </li>
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
                        <h4><a href="#">Tô bình yên</a></h4>
                        <div class="product-price">
                            <ul>
                                <li>36.000đ</li>
                                <li class="old-price">38.000đ</li>
                            </ul>
                        </div>
                    </div>
                    <div class="product-link">
                        <div class="product-button">
                            <a href="#" title="Thêm vào giỏ hàng"><i class="fa fa-shopping-cart"></i>Thêm vào giỏ
                                hàng</a>
                        </div>
                        <div class="add-to-link">
                            <ul>
                                <li><a href="product-details.html" title="Chi tiết"><i
                                        class="fas fa-external-link-alt"></i></a></li>
                            </ul>
                        </div>
                    </div>
                </div>
                <!-- single-product-end -->
            </div>
        </div>
    </div>
</div>
<!-- banner-static-area-end -->

<!-- testimonial-area-start -->
<div class="testimonial-area bg">
    <div class="container">
        <div class="row">
            <div class="testimonial-active owl-carousel">
                <div class="col-lg-12">
                    <div class="single-testimonial text-center mt-16">
                        <div class="testimonial-img">
                            <a href="#"><i class="fa fa-quote-right"></i></a>
                        </div>
                        <div class="testimonial-text">
                            <p>“Reading is essential for those who seek to rise above the ordinary.”</p>
                            <a href="#"> – Jim Rohn</a>
                        </div>
                    </div>
                </div>
                <div class="col-lg-12">
                    <div class="single-testimonial text-center mt-16">
                        <div class="testimonial-img">
                            <a href="#"><i class="fa fa-quote-right"></i></a>
                        </div>
                        <div class="testimonial-text">
                            <p>“A reader lives a thousand lives before he dies . . . The man who never reads lives
                                only one.” </p>
                            <a href="#">– George R.R. Martin</a>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </div>
</div>
<!-- testimonial-area-end -->
<!-- recent-post-area-start -->
<div class="recent-post-area pt-30">
    <div class="container">
        <div class="row">
            <div class="col-lg-12">
                <div class="section-title text-center mtb-15 section-title-res">
                    <span class="line"></span>
                    <h2>Những bài viết mới</h2>
                </div>
            </div>
            <div class="post-active owl-carousel text-center">
                <div class="col-lg-12">
                    <div class="single-post">
                        <div class="post-img">
                            <a href="#"><img src="img/post/1.jpg" alt="post" /></a>
                            <div class="blog-date-time">
                                <span class="day-time">06</span>
                                <span class="moth-time">Dec</span>
                            </div>
                        </div>
                        <div class="post-content">
                            <h3><a href="#">Những quyển sách hay 2020</a></h3>
                            <span class="meta-author"> Những quyển sách mùa địch </span>
                            <p>Cùng trang bị cho mình những kiến thức về sức khỏe hay qua các đầu sách Cơ chế tự
                                chưa lành,...</p>
                        </div>
                    </div>
                </div>
                <div class="col-lg-12">
                    <div class="single-post">
                        <div class="post-img">
                            <a href="blog-details.html"><img src="img/post/2.jpg" alt="post" /></a>
                            <div class="blog-date-time">
                                <span class="day-time">06</span>
                                <span class="moth-time">Dec</span>
                            </div>
                        </div>
                        <div class="post-content">
                            <h3><a href="blog-details.html">Tủ sách quý cô</a></h3>
                            <span class="meta-author"> Cẩm nang cho hạnh phúc cho các nàng </span>
                            <p>Cùng dạo qua một loạt các đầu sách tâm lí, làm đẹp và phong cách từ những tác giả
                                Pháp qua cuốn...</p>
                        </div>
                    </div>
                </div>
                <div class="col-lg-12">
                    <div class="single-post">
                        <div class="post-img">
                            <a href="blog-details.html"><img src="img/post/3.jpg" alt="post" /></a>
                            <div class="blog-date-time">
                                <span class="day-time">07</span>
                                <span class="moth-time">Dec</span>
                            </div>
                        </div>
                        <div class="post-content">
                            <h3><a href="blog-details.html">Những sách hay về tâm lí tháng 10</a></h3>
                            <span class="meta-author"> Do tác giả Rosie Nguyen gợi ý </span>
                            <p>Những cách làm chủ cảm xúc và ý kiến của bản thân qua nhưng ngòi bút đậm chất của các
                                tác giả ...</p>
                        </div>
                    </div>
                </div>
                <div class="col-lg-12">
                    <div class="single-post">
                        <div class="post-img">
                            <a href="blog-details.html"><img src="img/post/4.jpg" alt="post" /></a>
                            <div class="blog-date-time">
                                <span class="day-time">08</span>
                                <span class="moth-time">Dec</span>
                            </div>
                        </div>
                        <div class="post-content">
                            <h3><a href="blog-details.html">Những đầu sách mới tháng 11</a></h3>
                            <span class="meta-author">Cùng khám phá truyện ngắn đặc sắc </span>
                            <p>Sau những câu chuyện đậm tính nhân văn của Con chó mang giỏ hoa hồng,...</p>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </div>
</div>
<!-- recent-post-area-end -->


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
                                    <img src="img/product/quickview-l1.jpg" alt="" />
                                </div>
                                <div class="tab-pane" id="image-2">
                                    <img src="img/product/quickview-l2.jpg" alt="" />
                                </div>
                                <div class="tab-pane" id="image-3">
                                    <img src="img/product/quickview-l1.jpg" alt="" />
                                </div>
                                <div class="tab-pane" id="image-4">
                                    <img src="img/product/quickview-l2.jpg" alt="" />
                                </div>
                            </div>
                            <div class="product-details-small quickview-active owl-carousel">
                                <a class="active" href="#image-1"><img src="img/product/quickview-s1.jpg" alt="" /></a>
                                <a href="#image-2"><img src="img/product/quickview-s2.jpg" alt="" /></a>
                                <a href="#image-3"><img src="img/product/quickview-s1.jpg" alt="" /></a>
                                <a href="#image-4"><img src="img/product/quickview-s2.jpg" alt="" /></a>
                            </div>
                        </div>
                    </div>
                    <div class="col-md-7 col-sm-7 col-xs-12">
                        <div class="modal-pro-content">
                            <h3>Thay đổi cuộc sống với nhân số học</h3>
                            <div class="price">
                                <span>249.000đ</span>
                            </div>
                            <p>Cuốn sách Thay đổi cuộc sống với Nhân số học là tác phẩm được chị Lê Đỗ Quỳnh Hương phát triển từ tác phẩm gốc
                                “The Complete Book of Numerology” của tiến sỹ David A. Phillips, khiến bộ môn Nhân số học khởi nguồn từ nhà toán học Pythagoras
                                trở nên gần gũi, dễ hiểu hơn với độc giả Việt Nam.</p>
                            <div class="quick-view-select">
                                <div class="select-option-part">
                                    <label>Loại</label>
                                    <select class="select">
                                        <option value="">Bìa cứng</option>
                                        <option value="">Bìa mềm</option>
                                    </select>
                                </div>
                                <!-- <div class="quickview-color-wrap">
                                        <label>Loại</label>
                                        <div class="quickview-color">
                                            <ul>
                                                <li class="blue">b</li>
                                                <li class="red">r</li>
                                                <li class="pink">p</li>
                                            </ul>
                                        </div>
                                    </div> -->
                            </div>
                            <form action="#">
                                <label>Số lượng</label>
                                <input type="number" value="1" />
                                <button>Thêm vào giỏ hàng</button>
                            </form>
                            <span><i class="fa fa-check"></i>Còn hàng</span>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </div>
</div>
<!-- Modal end -->


<!-- footer-area-start -->
<jsp:include page="footer.jsp"/>
<!-- footer-area-end -->

<%--js--%>
<jsp:include page="script.jsp"/>

</body>

</html>