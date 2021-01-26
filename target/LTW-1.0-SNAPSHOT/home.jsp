<%@ page import="vn.edu.nlu.entities.BookEntity" %>
<%@ page import="vn.edu.nlu.beans.Book" %>
<%@ page import="java.util.List" %>
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

<%
    BookEntity bookEntity = new BookEntity();
    List<Book> newBooks = bookEntity.getNewBook();
    List<Book> hotBooks = bookEntity.getHotBook();
    List<Book> promotionBooks = bookEntity.getPromotionBook();
    List<Book> bestSellerBooks = bookEntity.getBestSellerBook();

    List<List<Book>> literaryBooks = bookEntity.getCoupleLiteraryBooks();
    List<List<Book>> skillBooks = bookEntity.getCoupleSkillBooks();

    request.setAttribute("newBooks", newBooks);
    request.setAttribute("hotBooks", hotBooks);
    request.setAttribute("promotionBooks", promotionBooks);
    request.setAttribute("bestSellerBooks", bestSellerBooks);

    request.setAttribute("literaryBooks", literaryBooks);
    request.setAttribute("skillBooks", skillBooks);
%>
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
                                        <c:if test="${book.isNew() == false}">
                                            <li><span class="sale">mới</span> <br></li>
                                        </c:if>
                                        <c:if test="${book.getPercent() != 0}">
                                            <li><span class="discount-percentage">-${book.getPercent()}%</span></li>
                                        </c:if>
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
                                        <c:if test="${hotBook.isHot() == false}">
                                            <li><span class="sale">hot</span> <br></li>
                                        </c:if>
                                        <c:if test="${hotBook.getPercent() != 0}">
                                            <li><span class="discount-percentage">-${hotBook.getPercent()}%</span></li>
                                        </c:if>
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
                                        <c:if test="${book.isBestSeller() == false}">
                                            <li><span class="sale">bán chạy</span> <br></li>
                                        </c:if>
                                        <c:if test="${book.getPercent() != 0}">
                                            <li><span class="discount-percentage">-${book.getPercent()}%</span></li>
                                        </c:if>
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
                                        <c:if test="${promotionBook.isNew() == false}">
                                            <li><span class="sale">mới</span> <br></li>
                                        </c:if>
                                        <c:if test="${promotionBook.getPercent() != 0}">
                                            <li><span class="discount-percentage">-${promotionBook.getPercent()}%</span></li>
                                        </c:if>
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

<!--skill-book-area-start -->
<div class="new-book-area">
    <div class="container">
        <div class="row">
            <div class="col-lg-12">
                <div class="section-title text-center mt-16  section-title-res">
                    <span class="line"> </span>
                    <h2>Sách kĩ năng</h2>
                </div>
            </div>
        </div>
        <div class="tab-active owl-carousel owl-loaded owl-drag">
            <div class="owl-stage-outer">
                <div class="owl-stage"
                     style="transform: translate3d(-847px, 0px, 0px); transition: all 1s ease 0s; width: 3955px;">
                    <c:forEach items="${skillBooks}" var="skillBookSubList">
                        <div class="owl-item cloned" style="width: 262.5px; margin-right: 20px;">
                            <div class="tab-total">
                                <!-- single-product-start -->
                                <div class="product-wrapper mb-15">
                                    <div class="product-img">
                                        <a href="#">
                                            <img src="${skillBookSubList.get(0).getMainImg()}" alt="book"
                                                 class="primary">
                                        </a>
                                        <div class="quick-view">
                                            <a class="action-view" href="#" data-target="#productModal"
                                               data-toggle="modal" title="Xem nhanh">
                                                <i class="fa fa-search-plus"></i>
                                            </a>
                                        </div>
                                        <div class="product-flag">
                                            <ul>
                                                <c:if test="${skillBookSubList.get(0).isNew() == false}">
                                                    <li><span class="sale">mới</span> <br></li>
                                                </c:if>
                                                <c:if test="${skillBookSubList.get(0).getPercent() != 0}">
                                                    <li><span class="discount-percentage">-${skillBookSubList.get(0).getPercent()}%</span></li>
                                                </c:if>
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
                                        <h4><a href="#">${skillBookSubList.get(0).getName()}</a></h4>
                                        <div class="product-price">
                                            <ul>
                                                <li>${skillBookSubList.get(0).getDecimalFormatPriceSale()} đ</li>
                                                <li class="old-price">${skillBookSubList.get(0).getDecimalFormatPrice()}
                                                    đ
                                                </li>
                                            </ul>
                                        </div>
                                    </div>
                                    <div class="product-link">
                                        <div class="product-button">
                                            <a href="#" title="Thêm vào giỏ hàng"><i class="fa fa-shopping-cart"></i>Thêm
                                                vào giỏ
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
                                            <img src="${skillBookSubList.get(1).getMainImg()}" alt="book"
                                                 class="primary">
                                        </a>
                                        <div class="quick-view">
                                            <a class="action-view" href="#" data-target="#productModal"
                                               data-toggle="modal" title="Xem nhanh">
                                                <i class="fa fa-search-plus"></i>
                                            </a>
                                        </div>
                                        <div class="product-flag">
                                            <ul>
                                                <c:if test="${skillBookSubList.get(1).isNew() == false}">
                                                    <li><span class="sale">mới</span> <br></li>
                                                </c:if>
                                                <c:if test="${skillBookSubList.get(1).getPercent() != 0}">
                                                    <li><span class="discount-percentage">-${skillBookSubList.get(1).getPercent()}%</span></li>
                                                </c:if>
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
                                        <h4><a href="#">${skillBookSubList.get(1).getName()}</a></h4>
                                        <div class="product-price">
                                            <ul>
                                                <li>${skillBookSubList.get(1).getDecimalFormatPriceSale()} đ</li>
                                                <li class="old-price">${skillBookSubList.get(1).getDecimalFormatPrice()}
                                                    đ
                                                </li>
                                            </ul>
                                        </div>
                                    </div>
                                    <div class="product-link">
                                        <div class="product-button">
                                            <a href="#" title="Thêm vào giỏ hàng"><i class="fa fa-shopping-cart"></i>Thêm
                                                vào giỏ
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
                    </c:forEach>
                </div>
            </div>
            <div class="owl-nav">
                <button type="button" role="presentation" class="owl-prev"><i class="fa fa-angle-left"></i></button>
                <button type="button" role="presentation" class="owl-next"><i class="fa fa-angle-right"></i></button>
            </div>
            <div class="owl-dots disabled"></div>
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
<!--literary-->
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
        <div class="tab-active owl-carousel owl-loaded owl-drag">


            <div class="owl-stage-outer">
                <div class="owl-stage"
                     style="transform: translate3d(-1130px, 0px, 0px); transition: all 0s ease 0s; width: 3955px;">
                    <c:forEach items="${literaryBooks}" var="lituraryBookSubList">
                        <div class="owl-item cloned" style="width: 262.5px; margin-right: 20px;">
                            <div class="tab-total">
                                <!-- single-product-start -->
                                <div class="product-wrapper mb-15">
                                    <div class="product-img">
                                        <a href="#">
                                            <img src="${lituraryBookSubList.get(0).getMainImg()} " alt="book"
                                                 class="primary">
                                        </a>
                                        <div class="quick-view">
                                            <a class="action-view" href="#" data-target="#productModal"
                                               data-toggle="modal"
                                               title="Xem nhanh">
                                                <i class="fa fa-search-plus"></i>
                                            </a>
                                        </div>
                                        <div class="product-flag">
                                            <ul>
                                                <c:if test="${lituraryBookSubList.get(0).isNew() == false}">
                                                    <li><span class="sale">mới</span> <br></li>
                                                </c:if>
                                                <c:if test="${book.getPercent() != 0}">
                                                    <li><span class="discount-percentage">-${book.getPercent()}%</span></li>
                                                </c:if>
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
                                        <h4><a href="#">${lituraryBookSubList.get(0).getName()}</a></h4>
                                        <div class="product-price">
                                            <ul>
                                                <li>${lituraryBookSubList.get(0).getDecimalFormatPriceSale()} đ</li>
                                                <li class="old-price">${lituraryBookSubList.get(0).getDecimalFormatPrice()}
                                                    đ
                                                </li>
                                            </ul>
                                        </div>
                                    </div>
                                    <div class="product-link">
                                        <div class="product-button">
                                            <a href="#" title="Thêm vào giỏ hàng"><i class="fa fa-shopping-cart"></i>Thêm
                                                vào giỏ
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
                                            <img src="${lituraryBookSubList.get(1).getMainImg()}" alt="book"
                                                 class="primary">
                                        </a>
                                        <div class="quick-view">
                                            <a class="action-view" href="#" data-target="#productModal"
                                               data-toggle="modal"
                                               title="Xem nhanh">
                                                <i class="fa fa-search-plus"></i>
                                            </a>
                                        </div>
                                        <div class="product-flag">
                                            <ul>
                                                <c:if test="${book.isBestSeller() == false}">
                                                    <li><span class="sale">bán chạy</span> <br></li>
                                                </c:if>
                                                <c:if test="${book.getPercent() != 0}">
                                                    <li><span class="discount-percentage">-${book.getPercent()}%</span></li>
                                                </c:if>
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
                                        <h4><a href="#">${lituraryBookSubList.get(1).getName()}</a></h4>
                                        <div class="product-price">
                                            <ul>
                                                <li>${lituraryBookSubList.get(1).getDecimalFormatPriceSale()} đ</li>
                                            </ul>
                                        </div>
                                    </div>
                                    <div class="product-link">
                                        <div class="product-button">
                                            <a href="#" title="Thêm vào giỏ hàng"><i class="fa fa-shopping-cart"></i>Thêm
                                                vào giỏ
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
                    </c:forEach>
                </div>
            </div>
            <div class="owl-nav">
                <button type="button" role="presentation" class="owl-prev"><i class="fa fa-angle-left"></i></button>
                <button type="button" role="presentation" class="owl-next"><i class="fa fa-angle-right"></i></button>
            </div>
            <div class="owl-dots disabled"></div>
        </div>
    </div>
</div>
<!-- banner-static-area-end -->
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
<jsp:include page = "footer.jsp" flush = "true" />

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