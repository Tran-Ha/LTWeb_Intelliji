<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions" %>

<!doctype html>
<html class="no-js" lang="en">

<head>

    <title>Zoe Book Shop</title>
    <jsp:include page="head.jsp"/>
</head>

<body>
<jsp:include page="header.jsp"/>

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
                        <a href="#"><img src="img/banner/1.png" alt="banner"/></a>
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
                        <a href="#"><img src="img/banner/2.png" alt="banner"/></a>
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
                        <a href="#"><img src="img/banner/3.png" alt="banner"/></a>
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
                        <a href="#"><img src="img/banner/4.png" alt="banner"/></a>
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
                    <c:forEach items="${newBooks}" var="book">
                        <div class="product-wrapper">
                            <div class="product-img">
                                <a href="product-details.html">
                                    <img src="${book.getMainImg()}" alt="book" class="primary"/>
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
                                <h4><a href="#">${book.name}</a></h4>
                                <div class="product-price">
                                    <ul>
                                        <li>${book.getDecimalFormatPriceSale()} đ</li>
                                        <li class="old-price">${book.getDecimalFormatPrice()} đ</li>
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
                    <c:forEach items="${hotBooks}" var="hotBook">
                        <div class="product-wrapper">
                            <div class="product-img">
                                <a href="product-details.html">
                                    <img src="${hotBook.getMainImg()}" alt="book" class="primary"/>
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
                                <h4><a href="#">${hotBook.name}</a></h4>
                                <div class="product-price">
                                    <ul>
                                        <li>${hotBook.getDecimalFormatPriceSale()} đ</li>
                                        <li class="old-price">${hotBook.getDecimalFormatPrice()} đ</li>
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
            <div class="tab-pane fade show" id="bestsellers">
                <div class="tab-active owl-carousel">
                    <!-- single-product-start -->
                    <c:forEach items="${bestSellerBooks}" var="bestSellerBook">
                        <div class="product-wrapper">
                            <div class="product-img">
                                <a href="product-details.html">
                                    <img src="${bestSellerBook.getMainImg()}" alt="book" class="primary"/>
                                </a>
                                <div class="quick-view">
                                    <a class="action-view" href="#" data-target="#productModal" data-toggle="modal"
                                       title="Xem nhanh">
                                        <i class="fa fa-search-plus"></i>
                                    </a>
                                </div>
                                <div class="product-flag">
                                    <ul>

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
                                <h4><a href="#">${bestSellerBook.name}</a></h4>
                                <div class="product-price">
                                    <ul>
                                        <li>${bestSellerBook.getDecimalFormatPriceSale()} đ</li>
                                        <li class="old-price">${bestSellerBook.getDecimalFormatPrice()} đ</li>
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
            <div class="tab-pane fade" id="discountbooks">
                <div class="tab-active owl-carousel">
                    <!-- single-product-start -->
                    <c:forEach items="${promotionBooks}" var="promotionBook">
                        <div class="product-wrapper">
                            <div class="product-img">
                                <a href="#">
                                    <img src="${promotionBook.getMainImg()}" alt="book" class="primary"/>
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
                                <h4><a href="#">${promotionBook.name}</a></h4>
                                <div class="product-price">
                                    <ul>
                                        <li>${promotionBook.getDecimalFormatPriceSale()} đ</li>
                                        <li class="old-price">${promotionBook.getDecimalFormatPrice()} đ</li>
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
        </div>
        <!-- tab-area-end -->
    </div>
</div>
<!-- product-area-end -->
<!-- bestseller-area-start -->
<div class="bestseller-area mtb-20">
    <div class="container">
        <div class="row">
            <div class="col-lg-8 col-md-12 col-12">
                <div class="bestseller-content">
                    <h1>Tác giả nổi bật</h1>
                    <h2>Stephen R.<br>Covey</h2>
                    <p class="categories">Thể loại:<a href="#">Sách tâm lí</a> , <a href="#">Lãnh đạo</a></p>
                    <p>Stephen R. Covey(1932 - 2012) là một trong 25 người có ảnh hưởng nhất nước Mỹ do tạp chí Time
                        bình chọn sau thành công của cuốn sách
                        “7 thói quen của người thành đạt”. Đây là cuốn sách bán chạy nhất trong suốt 20 năm qua với
                        gần 20 triệu bản được bán ra trên toàn thế giới và được phiên dịch ra hơn 38 thứ tiếng.</p>
                    <div class="social-author">
                        <ul>
                            <li><a href="#"><i class="fab fa-facebook-f"></i></a></li>
                            <li><a href="#"><i class="fab fa-twitter"></i></a></li>
                        </ul>
                    </div>
                </div>
                <div class="banner-img-2">
                    <a href="#"><img src="img/banner/6.jpg" alt="banner"></a>
                </div>
            </div>
            <div class="col-lg-4 col-md-12 col-12">
                <div class="bestseller-active owl-carousel owl-loaded owl-drag">


                    <div class="owl-stage-outer">
                        <div class="owl-stage"
                             style="transform: translate3d(-373px, 0px, 0px); transition: all 0s ease 0s; width: 1306px;">
                            <div class="owl-item cloned" style="width: 166.5px; margin-right: 20px;">
                                <div class="bestseller-total">
                                    <div class="single-bestseller mb-25">
                                        <div class="bestseller-img">
                                            <a href="#"><img src="img/product/53.jpg" alt="book"></a>
                                            <div class="product-flag">
                                                <ul>
                                                    <li><span class="sale">mới</span></li>
                                                </ul>
                                            </div>
                                        </div>
                                        <div class="bestseller-text text-center">
                                            <h3><a href="#">The 8th habit</a></h3>
                                            <div class="price">
                                                <ul>
                                                    <li><span class="mới-price">80.000đ</span></li>
                                                    <li><span class="old-price">92.000đ</span></li>
                                                </ul>
                                            </div>
                                        </div>
                                    </div>
                                    <div class="single-bestseller">
                                        <div class="bestseller-img">
                                            <a href="#"><img src="img/product/20.jpg" alt="book"></a>
                                            <div class="product-flag">
                                                <ul>
                                                    <li><span class="sale">mới</span></li>
                                                    <li><span class="discount-percentage">-5%</span></li>
                                                </ul>
                                            </div>
                                        </div>
                                        <div class="bestseller-text text-center">
                                            <h3><a href="#">Deep Learning</a></h3>
                                            <div class="price">
                                                <ul>
                                                    <li><span class="mới-price">32.000đ</span></li>
                                                </ul>
                                            </div>
                                        </div>
                                    </div>
                                </div>
                            </div>
                            <div class="owl-item cloned" style="width: 166.5px; margin-right: 20px;">
                                <div class="bestseller-total">
                                    <div class="single-bestseller mb-25">
                                        <div class="bestseller-img">
                                            <a href="#"><img src="img/product/1.jpg" alt="book"></a>
                                            <div class="product-flag">
                                                <ul>
                                                    <li><span class="sale">mới</span></li>
                                                </ul>
                                            </div>
                                        </div>
                                        <div class="bestseller-text text-center">
                                            <h3><a href="#">Nhân Số Học</a></h3>
                                            <div class="price">
                                                <ul>
                                                    <li><span class="mới-price">59.000đ</span></li>
                                                </ul>
                                            </div>
                                        </div>
                                    </div>
                                    <div class="single-bestseller">
                                        <div class="bestseller-img">
                                            <a href="#"><img src="img/product/14.jpg" alt="book"></a>
                                            <div class="product-flag">
                                                <ul>
                                                    <li><span class="sale">mới</span></li>
                                                </ul>
                                            </div>
                                        </div>
                                        <div class="bestseller-text text-center">
                                            <h3><a href="#">Trấn Hưng Trấn</a></h3>
                                            <div class="price">
                                                <ul>
                                                    <li><span class="mới-price">70.000đ</span></li>
                                                    <li><span class="old-price">74.000đ</span></li>
                                                </ul>
                                            </div>
                                        </div>
                                    </div>
                                </div>
                            </div>
                            <div class="owl-item active" style="width: 166.5px; margin-right: 20px;">
                                <div class="bestseller-total">
                                    <div class="single-bestseller mb-25">
                                        <div class="bestseller-img">
                                            <a href="#"><img src="img/product/51.jpg" alt="book"></a>
                                            <div class="product-flag">
                                                <ul>
                                                    <li><span class="sale">mới</span></li>
                                                    <li><span class="discount-percentage">-5%</span></li>
                                                </ul>
                                            </div>
                                        </div>
                                        <div class="bestseller-text text-center">
                                            <h3><a href="#">7 thói quen bạn trẻ thành đạt</a></h3>
                                            <div class="price">
                                                <ul>
                                                    <li><span class="mới-price">40.000đ</span></li>
                                                    <li><span class="old-price">45.000đ</span></li>
                                                </ul>
                                            </div>
                                        </div>
                                    </div>
                                    <div class="single-bestseller">
                                        <div class="bestseller-img">
                                            <a href="#"><img src="img/product/52.jpg" alt="book"></a>
                                            <div class="product-flag">
                                                <ul>
                                                    <li><span class="sale">mới</span></li>
                                                </ul>
                                            </div>
                                        </div>
                                        <div class="bestseller-text text-center">
                                            <h3><a href="#">Nghệ thuật lãnh đạo theo nguyên tắc</a></h3>
                                            <div class="price">
                                                <ul>
                                                    <li><span class="mới-price">70.000đ</span></li>
                                                    <li><span class="old-price">74.000đ</span></li>
                                                </ul>
                                            </div>
                                        </div>
                                    </div>
                                </div>
                            </div>
                            <div class="owl-item active" style="width: 166.5px; margin-right: 20px;">
                                <div class="bestseller-total">
                                    <div class="single-bestseller mb-25">
                                        <div class="bestseller-img">
                                            <a href="#"><img src="img/product/53.jpg" alt="book"></a>
                                            <div class="product-flag">
                                                <ul>
                                                    <li><span class="sale">mới</span></li>
                                                </ul>
                                            </div>
                                        </div>
                                        <div class="bestseller-text text-center">
                                            <h3><a href="#">The 8th habit</a></h3>
                                            <div class="price">
                                                <ul>
                                                    <li><span class="mới-price">80.000đ</span></li>
                                                    <li><span class="old-price">92.000đ</span></li>
                                                </ul>
                                            </div>
                                        </div>
                                    </div>
                                    <div class="single-bestseller">
                                        <div class="bestseller-img">
                                            <a href="#"><img src="img/product/20.jpg" alt="book"></a>
                                            <div class="product-flag">
                                                <ul>
                                                    <li><span class="sale">mới</span></li>
                                                    <li><span class="discount-percentage">-5%</span></li>
                                                </ul>
                                            </div>
                                        </div>
                                        <div class="bestseller-text text-center">
                                            <h3><a href="#">Deep Learning</a></h3>
                                            <div class="price">
                                                <ul>
                                                    <li><span class="mới-price">32.000đ</span></li>
                                                </ul>
                                            </div>
                                        </div>
                                    </div>
                                </div>
                            </div>
                            <div class="owl-item" style="width: 166.5px; margin-right: 20px;">
                                <div class="bestseller-total">
                                    <div class="single-bestseller mb-25">
                                        <div class="bestseller-img">
                                            <a href="#"><img src="img/product/1.jpg" alt="book"></a>
                                            <div class="product-flag">
                                                <ul>
                                                    <li><span class="sale">mới</span></li>
                                                </ul>
                                            </div>
                                        </div>
                                        <div class="bestseller-text text-center">
                                            <h3><a href="#">Nhân Số Học</a></h3>
                                            <div class="price">
                                                <ul>
                                                    <li><span class="mới-price">59.000đ</span></li>
                                                </ul>
                                            </div>
                                        </div>
                                    </div>
                                    <div class="single-bestseller">
                                        <div class="bestseller-img">
                                            <a href="#"><img src="img/product/14.jpg" alt="book"></a>
                                            <div class="product-flag">
                                                <ul>
                                                    <li><span class="sale">mới</span></li>
                                                </ul>
                                            </div>
                                        </div>
                                        <div class="bestseller-text text-center">
                                            <h3><a href="#">Trấn Hưng Trấn</a></h3>
                                            <div class="price">
                                                <ul>
                                                    <li><span class="mới-price">70.000đ</span></li>
                                                    <li><span class="old-price">74.000đ</span></li>
                                                </ul>
                                            </div>
                                        </div>
                                    </div>
                                </div>
                            </div>
                            <div class="owl-item cloned" style="width: 166.5px; margin-right: 20px;">
                                <div class="bestseller-total">
                                    <div class="single-bestseller mb-25">
                                        <div class="bestseller-img">
                                            <a href="#"><img src="img/product/51.jpg" alt="book"></a>
                                            <div class="product-flag">
                                                <ul>
                                                    <li><span class="sale">mới</span></li>
                                                    <li><span class="discount-percentage">-5%</span></li>
                                                </ul>
                                            </div>
                                        </div>
                                        <div class="bestseller-text text-center">
                                            <h3><a href="#">7 thói quen bạn trẻ thành đạt</a></h3>
                                            <div class="price">
                                                <ul>
                                                    <li><span class="mới-price">40.000đ</span></li>
                                                    <li><span class="old-price">45.000đ</span></li>
                                                </ul>
                                            </div>
                                        </div>
                                    </div>
                                    <div class="single-bestseller">
                                        <div class="bestseller-img">
                                            <a href="#"><img src="img/product/52.jpg" alt="book"></a>
                                            <div class="product-flag">
                                                <ul>
                                                    <li><span class="sale">mới</span></li>
                                                </ul>
                                            </div>
                                        </div>
                                        <div class="bestseller-text text-center">
                                            <h3><a href="#">Nghệ thuật lãnh đạo theo nguyên tắc</a></h3>
                                            <div class="price">
                                                <ul>
                                                    <li><span class="mới-price">70.000đ</span></li>
                                                    <li><span class="old-price">74.000đ</span></li>
                                                </ul>
                                            </div>
                                        </div>
                                    </div>
                                </div>
                            </div>
                            <div class="owl-item cloned" style="width: 166.5px; margin-right: 20px;">
                                <div class="bestseller-total">
                                    <div class="single-bestseller mb-25">
                                        <div class="bestseller-img">
                                            <a href="#"><img src="img/product/53.jpg" alt="book"></a>
                                            <div class="product-flag">
                                                <ul>
                                                    <li><span class="sale">mới</span></li>
                                                </ul>
                                            </div>
                                        </div>
                                        <div class="bestseller-text text-center">
                                            <h3><a href="#">The 8th habit</a></h3>
                                            <div class="price">
                                                <ul>
                                                    <li><span class="mới-price">80.000đ</span></li>
                                                    <li><span class="old-price">92.000đ</span></li>
                                                </ul>
                                            </div>
                                        </div>
                                    </div>
                                    <div class="single-bestseller">
                                        <div class="bestseller-img">
                                            <a href="#"><img src="img/product/20.jpg" alt="book"></a>
                                            <div class="product-flag">
                                                <ul>
                                                    <li><span class="sale">mới</span></li>
                                                    <li><span class="discount-percentage">-5%</span></li>
                                                </ul>
                                            </div>
                                        </div>
                                        <div class="bestseller-text text-center">
                                            <h3><a href="#">Deep Learning</a></h3>
                                            <div class="price">
                                                <ul>
                                                    <li><span class="mới-price">32.000đ</span></li>
                                                </ul>
                                            </div>
                                        </div>
                                    </div>
                                </div>
                            </div>
                        </div>
                    </div>
                    <div class="owl-nav">
                        <button type="button" role="presentation" class="owl-prev"><i class="fa fa-angle-left"></i>
                        </button>
                        <button type="button" role="presentation" class="owl-next"><i class="fa fa-angle-right"></i>
                        </button>
                    </div>
                    <div class="owl-dots disabled"></div>
                </div>
            </div>
        </div>
    </div>
</div>
<!-- bestseller-area-end -->
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
                            <img src="img/product/50.jpg" alt="book" class="primary"/>
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
                            <img src="img/product/49.jpg" alt="book" class="primary"/>
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
                            <img src="img/product/49.jpg" alt="book" class="primary"/>
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
                            <img src="img/product/47.jpg" alt="book" class="primary"/>
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
                            <img src="img/product/41.jpg" alt="book" class="primary"/>
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
                            <img src="img/product/33.jpg" alt="book" class="primary"/>
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
                            <img src="img/product/32.jpg" alt="book" class="primary"/>
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
                            <img src="img/product/20.jpg" alt="book" class="primary"/>
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
                            <img src="img/product/22.jpg" alt="book" class="primary"/>
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
                            <img src="img/product/23.jpg" alt="book" class="primary"/>
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
                            <img src="img/product/24.jpg" alt="book" class="primary"/>
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
                            <img src="img/product/3.jpg" alt="book" class="primary"/>
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
<div class="container">
    <div class="banner-static-area bg ptb-10 mt-16">
        <div class="row">
            <div class="col-lg-6 col-md-6 col-12">
                <div class="banner-shadow-hover xs-mb">
                    <a href="#"><img src="img/banner/8.jpg" alt="banner"/></a>
                </div>
            </div>
            <div class="col-lg-6 col-md-6 col-12">
                <div class="banner-shadow-hover">
                    <a href="#"><img src="img/banner/9.jpg" alt="banner"/></a>
                </div>
            </div>
        </div>
    </div>
</div>
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
                            <img src="img/product/50.jpg" alt="book" class="primary"/>
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
                            <img src="img/product/49.jpg" alt="book" class="primary"/>
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
                            <img src="img/product/49.jpg" alt="book" class="primary"/>
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
                            <img src="img/product/47.jpg" alt="book" class="primary"/>
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
                            <img src="img/product/41.jpg" alt="book" class="primary"/>
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
                            <img src="img/product/33.jpg" alt="book" class="primary"/>
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
                            <img src="img/product/32.jpg" alt="book" class="primary"/>
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
                            <img src="img/product/20.jpg" alt="book" class="primary"/>
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
                            <img src="img/product/22.jpg" alt="book" class="primary"/>
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
                            <img src="img/product/23.jpg" alt="book" class="primary"/>
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
                            <img src="img/product/24.jpg" alt="book" class="primary"/>
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
                            <img src="img/product/3.jpg" alt="book" class="primary"/>
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
<!-- most-product-area-start -->
<!-- <div class="most-product-area pt-90 pb-100">
        <div class="container">
            <div class="row">
                <div class="col-lg-3 col-md-4 col-12">
                    <div class="section-title-2 mb-30">
                        <h3>Tuyển chọn</h3>
                    </div>
                    <div class="product-active-2 owl-carousel">
                        <div class="product-total-2">
                            <div class="single-most-product bd mb-18">
                                <div class="most-product-img">
                                    <a href="product-details.html"><img src="img/product/20.jpg" alt="book" /></a>
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
                                    <h4><a href="product-details.html">Endeavor Daytrip</a></h4>
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
                                    <a href="product-details.html"><img src="img/product/21.jpg" alt="book" /></a>
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
                                    <h4><a href="product-details.html">Bị theo dõi</a></h4>
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
                                    <a href="product-details.html"><img src="img/product/22.jpg" alt="book" /></a>
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
                                    <h4><a href="product-details.html">Hơi thở hóa tinh không</a></h4>
                                    <div class="product-price">
                                        <ul>
                                            <li>35.000đ</li>
                                        </ul>
                                    </div>
                                </div>
                            </div>
                        </div>
                        <div class="product-total-2">
                            <div class="single-most-product bd mb-18">
                                <div class="most-product-img">
                                    <a href="product-details.html"><img src="img/product/23.jpg" alt="book" /></a>
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
                                    <h4><a href="product-details.html">Bag blood</a></h4>
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
                                    <a href="product-details.html"><img src="img/product/24.jpg" alt="book" /></a>
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
                                    <h4><a href="#">Tàn nhẫn yêu thương</a></h4>
                                    <div class="product-price">
                                        <ul>
                                            <li>70.000đ</li>
                                            <li class="old-price">74.000đ</li>
                                        </ul>
                                    </div>
                                </div>
                            </div>
                            <div class="single-most-product">
                                <div class="most-product-img">
                                    <a href="product-details.html"><img src="img/product/22.jpg" alt="book" /></a>
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
                                    <h4><a href="product-details.html">Science</a></h4>
                                    <div class="product-price">
                                        <ul>
                                            <li>59.000đ</li>
                                        </ul>
                                    </div>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
                <div class="col-lg-3 col-md-4 col-12">
                    <div class="section-title-2 mb-30">
                        <h3>Bán chạy</h3>
                    </div>
                    <div class="product-active-2 owl-carousel">
                        <div class="product-total-2">
                            <div class="single-most-product bd mb-18">
                                <div class="most-product-img">
                                    <a href="product-details.html"><img src="img/product/23.jpg" alt="book" /></a>
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
                                    <h4><a href="#">Bag blood</a></h4>
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
                                    <a href="product-details.html"><img src="img/product/18.jpg" alt="book" /></a>
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
                                    <h4><a href="product-details.html">Đắc Nhân Tâm</a></h4>
                                    <div class="product-price">
                                        <ul>
                                            <li>70.000đ</li>
                                            <li class="old-price">74.000đ</li>
                                        </ul>
                                    </div>
                                </div>
                            </div>
                            <div class="single-most-product">
                                <div class="most-product-img">
                                    <a href="product-details.html"><img src="img/product/1.jpg" alt="book" /></a>
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
                                    <h4><a href="product-details.html">Nhân số học</a></h4>
                                    <div class="product-price">
                                        <ul>
                                            <li>40.000đ</li>
                                        </ul>
                                    </div>
                                </div>
                            </div>
                        </div>
                        <div class="product-total-2">
                            <div class="single-most-product bd mb-18">
                                <div class="most-product-img">
                                    <a href="product-details.html"><img src="img/product/8.jpg" alt="book" /></a>
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
                                    <h4><a href="#">Sapiens</a></h4>
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
                                    <a href="product-details.html"><img src="img/product/10.jpg" alt="book" /></a>
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
                                    <h4><a href="#">Rich Habits</a></h4>
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
                                    <a href="product-details.html"><img src="img/product/33.jpg" alt="book" /></a>
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
                                    <h4><a href="#">Bác Hồ</a></h4>
                                    <div class="product-price">
                                        <ul>
                                            <li>35.000đ</li>
                                        </ul>
                                    </div>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
                <div class="col-lg-3 col-md-4 col-12">
                    <div class="section-title-2 mb-30">
                        <h3>Kinh điển</h3>
                    </div>
                    <div class="product-active-2 owl-carousel">
                        <div class="product-total-2">
                            <div class="single-most-product bd mb-18">
                                <div class="most-product-img">
                                    <a href="product-details.html"><img src="img/product/26.jpg" alt="book" /></a>
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
                                    <h4><a href="#">Human body</a></h4>
                                    <div class="product-price">
                                        <ul>
                                            <li>36.000đ</li>
                                            <li class="old-price">38.000đ</li>
                                        </ul>
                                    </div>
                                </div>
                            </div>
                            <div class="single-most-product bd mb-18">
                                <div class="most-product-img">
                                    <a href="product-details.html"><img src="img/product/9.jpg" alt="book" /></a>
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
                                    <h4><a href="#">Từ tốt đến vĩ đại</a></h4>
                                    <div class="product-price">
                                        <ul>
                                            <li>34.000đ</li>
                                            <li class="old-price">36.000đ</li>
                                        </ul>
                                    </div>
                                </div>
                            </div>
                            <div class="single-most-product">
                                <div class="most-product-img">
                                    <a href="product-details.html"><img src="img/product/11.jpg" alt="book" /></a>
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
                                    <h4><a href="#">Con chim màu xanh bay về</a></h4>
                                    <div class="product-price">
                                        <ul>
                                            <li>30.000đ</li>
                                            <li class="old-price">33.000đ</li>
                                        </ul>
                                    </div>
                                </div>
                            </div>
                        </div>
                        <div class="product-total-2">
                            <div class="single-most-product bd mb-18">
                                <div class="most-product-img">
                                    <a href="#"><img src="img/product/23.jpg" alt="book" /></a>
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
                                    <h4><a href="#">Bag Blood</a></h4>
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
                                    <a href="product-details.html"><img src="img/product/24.jpg" alt="book" /></a>
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
                                    <h4><a href="#">Tàn Nhẫn Yêu Thương</a></h4>
                                    <div class="product-price">
                                        <ul>
                                            <li>70.000đ</li>
                                            <li class="old-price">74.000đ</li>
                                        </ul>
                                    </div>
                                </div>
                            </div>
                            <div class="single-most-product">
                                <div class="most-product-img">
                                    <a href="product-details.html"><img src="img/product/22.jpg" alt="book" /></a>
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
                                    <h4><a href="#">Hơi thở hóa tinh không</a></h4>
                                    <div class="product-price">
                                        <ul>
                                            <li>59.000đ</li>
                                        </ul>
                                    </div>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
                <div class="col-lg-3 col-md-4 col-12">
                    <div class="section-title-2 mb-30">
                        <h3>Dành cho bạn</h3>
                    </div>
                    <div class="product-active-2 owl-carousel">
                        <div class="product-total-2">
                            <div class="single-most-product bd mb-18">
                                <div class="most-product-img">
                                    <a href="product-details.html"><img src="img/product/2.jpg" alt="book" /></a>
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
                                    <h4><a href="#">Spy Family</a></h4>
                                    <div class="product-price">
                                        <ul>
                                            <li>36.000đ</li>
                                            <li class="old-price">38.000đ</li>
                                        </ul>
                                    </div>
                                </div>
                            </div>
                            <div class="single-most-product bd mb-18">
                                <div class="most-product-img">
                                    <a href="product-details.html"><img src="img/product/3.jpg" alt="book" /></a>
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
                                    <h4><a href="#">Tô Bình yên</a></h4>
                                    <div class="product-price">
                                        <ul>
                                            <li>34.000đ</li>
                                            <li class="old-price">36.000đ</li>
                                        </ul>
                                    </div>
                                </div>
                            </div>
                            <div class="single-most-product">
                                <div class="most-product-img">
                                    <a href="#"><img src="img/product/8.jpg" alt="book" /></a>
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
                                    <h4><a href="#">Sapiens</a></h4>
                                    <div class="product-price">
                                        <ul>
                                            <li>30.000đ</li>
                                            <li class="old-price">33.000đ</li>
                                        </ul>
                                    </div>
                                </div>
                            </div>
                        </div>
                        <div class="product-total-2">
                            <div class="single-most-product bd mb-18">
                                <div class="most-product-img">
                                    <a href="#"><img src="img/product/23.jpg" alt="book" /></a>
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
                                    <h4><a href="#">Bag Blood</a></h4>
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
                                    <a href="product-details.html"><img src="img/product/20.jpg" alt="book" /></a>
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
                                            <li>70.000đ</li>
                                            <li class="old-price">74.000đ</li>
                                        </ul>
                                    </div>
                                </div>
                            </div>
                            <div class="single-most-product">
                                <div class="most-product-img">
                                    <a href="product-details.html"><img src="img/product/22.jpg" alt="book" /></a>
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
                                    <h4><a href="#">Hơi Thở hóa tinh không</a></h4>
                                    <div class="product-price">
                                        <ul>
                                            <li>59.000đ</li>
                                        </ul>
                                    </div>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
                <div class="col-lg-3 col-md-12 col-12">
                    <div class="block-mớisletter">
                        <h2>Sign up for send mớisletter</h2>
                        <p>You can be always up to date with our company mới!</p>
                        <form action="#">
                            <input type="text" placeholder="Enter your email address" />
                        </form>
                        <a href="#">Send Email</a>
                    </div>
                </div> -->

<!-- most-product-area-end -->
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
                            <a href="#"><img src="img/post/1.jpg" alt="post"/></a>
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
                            <a href="blog-details.html"><img src="img/post/2.jpg" alt="post"/></a>
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
                            <a href="blog-details.html"><img src="img/post/3.jpg" alt="post"/></a>
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
                            <a href="blog-details.html"><img src="img/post/4.jpg" alt="post"/></a>
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
<!-- social-group-area-start -->
<!-- <div class="social-group-area ptb-60">
        <div class="container" style="text-align: center;">
            <div class="section-title-3">
                <h3>Mạng xã hội</h3>
            </div>
            <div class="link-follow">
                <ul>
                    <li><a href="#"><i class="fab fa-twitter"></i></a></li>
                    <li><a href="#"><i class="fab fa-google-plus-g"></i></a></li>
                    <li><a href="#"><i class="fab fa-facebook-f"></i></a></li>
                    <li><a href="#"><i class="fab fa-youtube"></i></a></li>
                    <li><a href="#"><i class="fab fa-instagram"></i></a></li>
                </ul>
            </div>
        </div>
    </div> -->
<!-- social-group-area-end -->
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
                                    <img src="img/product/quickview-l1.jpg" alt=""/>
                                </div>
                                <div class="tab-pane" id="image-2">
                                    <img src="img/product/quickview-l2.jpg" alt=""/>
                                </div>
                                <div class="tab-pane" id="image-3">
                                    <img src="img/product/quickview-l1.jpg" alt=""/>
                                </div>
                                <div class="tab-pane" id="image-4">
                                    <img src="img/product/quickview-l2.jpg" alt=""/>
                                </div>
                            </div>
                            <div class="product-details-small quickview-active owl-carousel">
                                <a class="active" href="#image-1"><img src="img/product/quickview-s1.jpg" alt=""/></a>
                                <a href="#image-2"><img src="img/product/quickview-s2.jpg" alt=""/></a>
                                <a href="#image-3"><img src="img/product/quickview-s1.jpg" alt=""/></a>
                                <a href="#image-4"><img src="img/product/quickview-s2.jpg" alt=""/></a>
                            </div>
                        </div>
                    </div>
                    <div class="col-md-7 col-sm-7 col-xs-12">
                        <div class="modal-pro-content">
                            <h3>Thay đổi cuộc sống với nhân số học</h3>
                            <div class="price">
                                <span>249.000đ</span>
                            </div>
                            <p>Cuốn sách Thay đổi cuộc sống với Nhân số học là tác phẩm được chị Lê Đỗ Quỳnh Hương phát
                                triển từ tác phẩm gốc
                                “The Complete Book of Numerology” của tiến sỹ David A. Phillips, khiến bộ môn Nhân số
                                học khởi nguồn từ nhà toán học Pythagoras
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
                                <input type="number" value="1"/>
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