<%--
  Created by IntelliJ IDEA.
  User: THU HA
  Date: 09/12/2020
  Time: 2:18 PM
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType= "text/html;charset=UTF-8" language="java"%>
<%@ taglib prefix = "c" uri = "http://java.sun.com/jsp/jstl/core" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/functions" prefix="fn" %>
<html
        class=" js flexbox canvas canvastext webgl no-touch geolocation postmessage websqldatabase indexeddb hashchange history draganddrop websockets rgba hsla multiplebgs backgroundsize borderimage borderradius boxshadow textshadow opacity cssanimations csscolumns cssgradients cssreflections csstransforms csstransforms3d csstransitions fontface generatedcontent video audio localstorage sessionstorage webworkers no-applicationcache svg inlinesvg smil svgclippaths"
        lang="en" style="">

<head>
    <title>Giới thiệu</title>
    <jsp:include page="header1.jsp"/>
</head>

<body class="about">
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
                        <a href="index.html">
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
                                <li><a href="index.html">Trang chủ</a>
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
                                <li class="active"><a href="blog.html">Blog<i class="fa fa-angle-down"></i></a>
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
                                <li><a href="index.html">Trang chủ</a>
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
                        <li><a href="blog.html">Blog</a></li>
                        <li><a href="about.html" class="active">Giới thiệu</a></li>
                    </ul>
                </div>
            </div>
        </div>
    </div>
</div>
<!-- breadcrumbs-area-end -->
<!-- about-main-area-start -->
<div class="about-main-area mb-70">
    <div class="container">
        <div class="row">
            <div class="col-lg-7 col-md-6 col-12">
                <div class="about-img">
                    <a href="#"><img src="img/banner/banner-books.jpg" alt="books"></a>
                </div>
            </div>
            <div class="col-lg-5 col-md-6 col-12">
                <div class="about-content">
                    <h3>Kết nối những quyển sách</h3>
                    <p>Mỗi quyển sách là một cuộc đời, một câu chuyện và mỗi người chúng ta đều sẽ gặp được một cuốn
                        sách hay cho riêng mình.</p>
                    <ul>
                        <li><a href="#"><i class="fa fa-check"></i>Kỹ năng</a></li>
                        <li><a href="#"><i class="fa fa-check"></i>Chuyên ngành &amp; nghiệp vụ</a></li>
                        <li><a href="#"><i class="fa fa-check"></i>Tác phẩm kinh điển</a></li>
                        <li><a href="#"><i class="fa fa-check"></i>Chữa lành &amp; tâm hồn</a></li>
                        <li><a href="#"><i class="fa fa-check"></i>Thường thức &amp; tổng hợp</a></li>
                    </ul>
                </div>
            </div>
        </div>
    </div>
</div>
<!-- about-main-area-end -->
<!-- our-mission-area-start -->
<div class="our-mission-area mb-70">
    <div class="container">
        <div class="row">
            <div class="col-lg-4 col-md-4 col-12">
                <div class="single-misson">
                    <h3>Hành trình</h3>
                    <p> Trao giá trị và yêu thương qua những trang sách. <br>Mang giá trị trong từ trang sách thổi
                        vào cuộc sống.</p>
                </div>
            </div>
            <div class="col-lg-4 col-md-4 col-12">
                <div class="single-misson">
                    <h3>Sứ mệnh</h3>
                    <p>Một quyển sách - Một cuộc đời. <br> Mỗi quyển sách trao đi là một hạnh phúc trọn vẹn. </p>
                </div>
            </div>
            <div class="col-lg-4 col-md-4 col-12">
                <div class="single-misson mrg-none-xs">
                    <h3>Tầm nhìn</h3>
                    <p>Mang đến sự thay đổi <br> và phát triển trong cộng đồng.</p>
                </div>
            </div>
        </div>
    </div>
</div>
<!-- our-mission-area-end -->
<!-- counter-area-start -->
<div class="counter-area pt-70 pb-40">
    <div class="container">
        <div class="row">
            <div class="col-lg-3 col-md-6 col-sm-6 col-12">
                <div class="single-counter mb-30 text-center">
                    <i class="fas fa-book-open"></i>
                    <h2 class="counter">59</h2>
                    <span>Nhà xuất bản</span>
                </div>
            </div>
            <div class="col-lg-3 col-md-6 col-sm-6 col-12">
                <div class="single-counter mb-30 text-center">
                    <i class="fas fa-book-reader"></i>
                    <h2 class="counter">100</h2>
                    <span>Tác giả</span>
                </div>
            </div>
            <div class="col-lg-3 col-md-6 col-sm-6 col-12">
                <div class="single-counter mb-30 text-center">
                    <i class="fas fa-book"></i>
                    <h2 class="counter">1000</h2>
                    <span>Đầu sách</span>
                </div>
            </div>
            <div class="col-lg-3 col-md-6 col-sm-6 col-12">
                <div class="single-counter mb-30 text-center">
                    <i class="fas fa-user-friends"></i>
                    <h2 class="counter">32</h2>
                    <span>Đơn vị cộng tác</span>
                </div>
            </div>
        </div>
    </div>
</div>
<!-- counter-area-end -->
<!-- team-area-start -->
<div class="team-area pt-70 pb-40">
    <div class="container">
        <div class="row">
            <div class="col-lg-12">
                <div class="team-title text-center mb-50">
                    <h2>Nhiều xuất bản hàng đầu</h2>
                </div>
            </div>
            <div class="col-lg-3 col-md-6 col-sm-6 col-12">
                <div class="single-team mb-30">
                    <div class="team-img-area">
                        <div class="team-img">
                            <a href="#"><img src="img/team/1.jpg" alt="NXB Trẻ"></a>
                        </div>
                    </div>
                    <div class="team-content text-center">
                        <h3>NXB Trẻ</h3>
                    </div>
                </div>
            </div>
            <div class="col-lg-3 col-md-6 col-sm-6 col-12">
                <div class="single-team mb-30">
                    <div class="team-img-area">
                        <div class="team-img">
                            <a href="#"><img src="img/team/2.jpg" alt="First News"></a>
                        </div>
                    </div>
                    <div class="team-content text-center">
                        <h3>First News</h3>
                    </div>
                </div>
            </div>
            <div class="col-lg-3 col-md-6 col-sm-6 col-12">
                <div class="single-team mb-30">
                    <div class="team-img-area">
                        <div class="team-img">
                            <a href="#"><img src="img/team/NhaNam.jpg" alt="Nhã Nam"></a>
                        </div>
                    </div>
                    <div class="team-content text-center">
                        <h3>Nhã Nam</h3>
                    </div>
                </div>
            </div>
            <div class="col-lg-3 col-md-6 col-sm-6 col-12">
                <div class="single-team mb-30">
                    <div class="team-img-area">
                        <div class="team-img">
                            <a href="#"><img src="img/team/4.jpg" alt="AlphaBook"></a>
                        </div>
                    </div>
                    <div class="team-content text-center">
                        <h3>AlphaBook</h3>
                    </div>
                </div>
            </div>
        </div>
    </div>
</div>
<!-- team-area-end -->
<!-- skill-area-start -->
<div class="skill-area mb-70">
    <div class="container">
        <div class="row">
            <div class="col-lg-6 col-md-6 col-12">
                <div class="skill-content">
                    <h3>Zoe Website</h3>
                    <p>Đóng vai trò kết nối những quyển sách hay đến cộng đồng và lan tỏa những giá trị phát triển
                        tốt đẹp. Phân phối sách trên khắp cả nước.</p>
                    <a href="blog.html">Xem thêm<i class="fa fa-long-arrow-right"></i></a>
                </div>
            </div>
            <div class="col-lg-6 col-md-6 col-12">
                <div class="skill-progress">
                    <div class="progress">
                        <div class="skill-title">Hà Nội 79%</div>
                        <div class="progress-bar wow fadeInLeft" data-wow-delay="0.2s" role="progressbar"
                             style="width: 79%; visibility: visible; animation-delay: 0.2s; animation-name: fadeInLeft;">
                        </div>
                    </div>
                    <div class="progress">
                        <div class="skill-title">TP Hồ Chí Minh 96%</div>
                        <div class="progress-bar wow fadeInLeft" data-wow-delay="0.3s" role="progressbar"
                             style="width: 96%; visibility: visible; animation-delay: 0.3s; animation-name: fadeInLeft;">
                        </div>
                    </div>
                    <div class="progress">
                        <div class="skill-title">Đà Nẵng 65%</div>
                        <div class="progress-bar wow fadeInLeft" data-wow-delay="0.4s" role="progressbar"
                             style="width: 65%; visibility: visible; animation-delay: 0.4s; animation-name: fadeInLeft;">
                        </div>
                    </div>
                    <div class="progress mrg-none-xs">
                        <div class="skill-title">Các tỉnh khác 92%</div>
                        <div class="progress-bar wow fadeInLeft" data-wow-delay="0.3s" role="progressbar"
                             style="width: 89%; visibility: visible; animation-delay: 0.3s; animation-name: fadeInLeft;">
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </div>
</div>
<!-- skill-area-end -->

<!-- footer-area-start -->
<jsp:include page="footer1.jsp"/>
<!-- footer-area-end -->

<%--js--%>
<jsp:include page="footer2.jsp"/>

</body>

</html>