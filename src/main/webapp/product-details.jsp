<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>

<!doctype html>
<html class="no-js" lang="en">

<head>
    <title>${book.name}</title>
    <!-- Favicon -->
    <link rel="icon" type="image/gif" sizes="16x16" href="img/icon/icon.gif">
    <%@ include file="head.jsp" %>
    <script>
        onload = setTimeout(function () {
            const quantityInput = document.getElementById('quantityInput');

            document.getElementById("plusButton").onclick = function () {
                const quantity = Number.parseInt(quantityInput.value);
                if (Number.isInteger(quantity) && 0 < quantity && quantity < 99) {
                    quantityInput.value = (quantity + 1);
                }
            }

            document.getElementById("subtractButton").onclick = function () {
                const quantity = Number.parseInt(quantityInput.value);
                if (Number.isInteger(quantity) && 1 < quantity) {
                    quantityInput.value = (quantity - 1);
                }
            }

            <c:if test="${cartNotification != null}">
            alert("${cartNotification}");
            <c:remove var="cartNotification"/>
            </c:if>
        }, 0);
    </script>
</head>

<body class="product-details">
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
                        <li><a href="default?page=home">Trang chủ</a></li>
                        <li><a href="#" class="active">${book.name}</a></li>
                    </ul>
                </div>
            </div>
        </div>
    </div>
</div>
<!-- breadcrumbs-area-end -->

<!-- product-main-area-start -->
<div class="product-main-area mb-70">
    <div class="container">
        <div class="row">
            <div class="col-lg-9 col-md-12 col-12 order-lg-1 order-1">
                <!-- product-main-area-start -->
                <div class="product-main-area">
                    <div class="row">

                        <div class="col-lg-5 col-md-6 col-12">
                            <div class="flexslider">
                                <ul class="slides">
                                    <c:forEach var="imgLink" items="${book.imgs}">
                                        <li data-thumb="${imgLink}">
                                            <img src="${imgLink}" alt="image"/>
                                        </li>
                                    </c:forEach>
                                </ul>
                            </div>
                        </div>

                        <div class="col-lg-7 col-md-6 col-12">
                            <div class="product-info-main">
                                <div class="page-title">
                                    <h1>${book.name}</h1>
                                </div>

                                <div class="product-info-stock-sku">
                                    <span>Còn hàng</span>
                                    <div class="product-attribute">
                                        <span>ID:</span>
                                        <span class="value">${book.id}</span>
                                    </div>
                                </div>

                                <div class="product-reviews-summary">
                                    <div class="rating-summary">
                                        <a href="#"><i class="fa fa-star"></i></a>
                                        <a href="#"><i class="fa fa-star"></i></a>
                                        <a href="#"><i class="fa fa-star"></i></a>
                                        <a href="#"><i class="fa fa-star"></i></a>
                                        <a href="#"><i class="fa fa-star"></i></a>
                                    </div>
                                    <div class="reviews-actions">
                                        <a href="#">3 đánh giá</a>
                                        <a href="#" class="view">Viết nhận xét</a>
                                    </div>
                                </div>

                                <div class="product-info-price">
                                    <div class="price-final">
                                        <span>${book.getDecimalFormatPriceSale()}đ</span>
                                        <span class="old-price">${book.getDecimalFormatPrice()}đ</span>
                                    </div>

                                    <div class="product-addto-links">
                                        <a href="#" title="Yêu thích"><i class="fas fa-heart"></i></a>
                                    </div>
                                </div>

                                <div class="product-add-form">
                                    <form method="get" action="addBookQuantity">
                                        <input type="hidden" name="page" value="productDetail">
                                        <input type="hidden" name="id" value="${book.id}">
                                        <p>Số lượng:</p>
                                        <div class="quality-button" style="border: none">
                                            <a id="subtractButton" class="btn-subtract-qty"
                                               style="border:1px solid lightgrey; margin: 0px">
                                                <i class="fas fa-minus"></i>
                                            </a>

                                            <input type="text" name="quantity" id="quantityInput" maxlength="2"
                                                   value="1" class="input-text qty"
                                                   style="border:1px solid lightgrey; margin: 0px">

                                            <a id="plusButton" class="btn-add-qty"
                                               style="border:1px solid lightgrey; margin: 0px">
                                                <i class="fas fa-plus"></i>
                                            </a>
                                        </div>
                                        <button type="submit" class="btn btn-success">Thêm vào giỏ hàng</button>
                                    </form>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
                <!-- product-main-area-end -->

                <!-- product-info-area-start -->
                <div class="product-info-area mt-80">
                    <!-- Nav tabs -->
                    <ul class="nav">
                        <li><a class="active" href="#Details" data-toggle="tab">Thông tin sản phẩm</a></li>
                        <li><a href="#Reviews" data-toggle="tab">Nhận xét</a></li>
                    </ul>

                    <div class="tab-content">
                        <div class="tab-pane fade show active" id="Details">
                            <div class="value">
                                <c:forEach var="paragaph" items="${book.getInformation()}">
                                    <p>${paragaph}</p>
                                </c:forEach>
                            </div>
                        </div>

                        <div class="tab-pane fade" id="Reviews">
                            <div class="valu valu-2">
                                <div class="section-title mb-60 mt-60">
                                    <h2>Khách hàng nhận xét</h2>
                                </div>
                                <ul>
                                    <li>
                                        <div class="review-title">
                                            <h3>Cực kì hài lòng</h3>
                                        </div>
                                        <div class="review-left">
                                            <div class="review-rating">
                                                <span>Giá thành</span>
                                                <div class="rating-result">
                                                    <a href="#"><i class="fa fa-star"></i></a>
                                                    <a href="#"><i class="fa fa-star"></i></a>
                                                    <a href="#"><i class="fa fa-star"></i></a>
                                                    <a href="#"><i class="fa fa-star"></i></a>
                                                    <a href="#"><i class="fa fa-star"></i></a>
                                                </div>
                                            </div>
                                            <div class="review-rating">
                                                <span>Giá trị</span>
                                                <div class="rating-result">
                                                    <a href="#"><i class="fa fa-star"></i></a>
                                                    <a href="#"><i class="fa fa-star"></i></a>
                                                    <a href="#"><i class="fa fa-star"></i></a>
                                                    <a href="#"><i class="fa fa-star"></i></a>
                                                    <a href="#"><i class="fa fa-star"></i></a>
                                                </div>
                                            </div>
                                            <div class="review-rating">
                                                <span>Chất lượng</span>
                                                <div class="rating-result">
                                                    <a href="#"><i class="fa fa-star"></i></a>
                                                    <a href="#"><i class="fa fa-star"></i></a>
                                                    <a href="#"><i class="fa fa-star"></i></a>
                                                    <a href="#"><i class="fa fa-star"></i></a>
                                                    <a href="#"><i class="fa fa-star"></i></a>
                                                </div>
                                            </div>
                                        </div>
                                        <div class="review-right">
                                            <div class="review-content">
                                                <h4>Cực kì hài lòng </h4>
                                            </div>
                                            <div class="review-details">
                                                <p class="review-author">Bởi<a href="#">Giang Thiên</a></p>
                                                <p class="review-date">Đăng ngày <span>2/11/2020</span></p>
                                            </div>
                                        </div>
                                    </li>
                                </ul>

                                <div class="review-add">
                                    <h3>Nhận xét của bạn:</h3>
                                    <h4>Cuốn Đường xưa mây trắng</h4>
                                </div>

                                <div class="review-field-ratings">
                                    <span>Đánh giá của bạn <sup>*</sup></span>

                                    <div class="control">
                                        <div class="single-control">
                                            <span>Giá trị</span>
                                            <div class="review-control-vote">
                                                <a href="#"><i class="fa fa-star"></i></a>
                                                <a href="#"><i class="fa fa-star"></i></a>
                                                <a href="#"><i class="fa fa-star"></i></a>
                                                <a href="#"><i class="fa fa-star"></i></a>
                                                <a href="#"><i class="fa fa-star"></i></a>
                                            </div>
                                        </div>

                                        <div class="single-control">
                                            <span>Chất lượng</span>
                                            <div class="review-control-vote">
                                                <a href="#"><i class="fa fa-star"></i></a>
                                                <a href="#"><i class="fa fa-star"></i></a>
                                                <a href="#"><i class="fa fa-star"></i></a>
                                                <a href="#"><i class="fa fa-star"></i></a>
                                                <a href="#"><i class="fa fa-star"></i></a>
                                            </div>
                                        </div>

                                        <div class="single-control">
                                            <span>Giá thành</span>
                                            <div class="review-control-vote">
                                                <a href="#"><i class="fa fa-star"></i></a>
                                                <a href="#"><i class="fa fa-star"></i></a>
                                                <a href="#"><i class="fa fa-star"></i></a>
                                                <a href="#"><i class="fa fa-star"></i></a>
                                                <a href="#"><i class="fa fa-star"></i></a>
                                            </div>
                                        </div>
                                    </div>
                                </div>

                                <div class="review-form">
                                    <div class="single-form">
                                        <label>Tên <sup>*</sup></label>
                                        <form action="#">
                                            <input type="text"/>
                                        </form>
                                    </div>

                                    <div class="single-form single-form-2">
                                        <label>Tóm tắt <sup>*</sup></label>
                                        <form action="#">
                                            <input type="text"/>
                                        </form>
                                    </div>

                                    <div class="single-form">
                                        <label>Cảm nhận <sup>*</sup></label>
                                        <form action="#">
                                            <textarea name="massage" cols="10" rows="4"></textarea>
                                        </form>
                                    </div>
                                </div>

                                <div class="review-form-button">
                                    <a href="#">Gửi nhận xét</a>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
                <!-- product-info-area-end -->

                <!-- mới-book-area-start -->
                <div class="mới-book-area mt-60">
                    <div class="section-title text-center mb-30">
                        <h3>Sản phẩm tương tự</h3>
                    </div>
                    <div class="tab-active-2 owl-carousel">
                        <!-- single-product-start -->
                        <div class="product-wrapper">
                            <div class="product-img">
                                <a href="#">
                                    <img src="img/product/1.jpg" alt="book" class="primary"/>
                                </a>
                                <div class="quick-view">
                                    <a class="action-view" href="#" data-target="#productModal" data-toggle="modal"
                                       title="Quick View">
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
                                <h4><a href="#">Joust Duffle Bag</a></h4>
                                <div class="product-price">
                                    <ul>
                                        <li>60.000đ</li>
                                    </ul>
                                </div>
                            </div>
                            <div class="product-link">
                                <div class="product-button">
                                    <a href="#" title="thêm vào giỏ hàng"><i class="fa fa-shopping-cart"></i>Add to
                                        cart</a>
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
                        <!-- single-product-start -->
                        <div class="product-wrapper">
                            <div class="product-img">
                                <a href="#">
                                    <img src="img/product/3.jpg" alt="book" class="primary"/>
                                </a>
                                <div class="quick-view">
                                    <a class="action-view" href="#" data-target="#productModal" data-toggle="modal"
                                       title="Quick View">
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
                                <h4><a href="#">Chaz Kangeroo Hoodie</a></h4>
                                <div class="product-price">
                                    <ul>
                                        <li>52.000đ</li>
                                    </ul>
                                </div>
                            </div>
                            <div class="product-link">
                                <div class="product-button">
                                    <a href="#" title="thêm vào giỏ hàng"><i class="fa fa-shopping-cart"></i>Add to
                                        cart</a>
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
                        <!-- single-product-start -->
                        <div class="product-wrapper">
                            <div class="product-img">
                                <a href="#">
                                    <img src="img/product/5.jpg" alt="book" class="primary"/>
                                </a>
                                <div class="quick-view">
                                    <a class="action-view" href="#" data-target="#productModal" data-toggle="modal"
                                       title="Quick View">
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
                                <h4><a href="#">Set of Sprite Yoga Straps</a></h4>
                                <div class="product-price">
                                    <ul>
                                        <li><span>Starting at</span>34.000đ</li>
                                    </ul>
                                </div>
                            </div>
                            <div class="product-link">
                                <div class="product-button">
                                    <a href="#" title="thêm vào giỏ hàng"><i class="fa fa-shopping-cart"></i>Add to
                                        cart</a>
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
                        <!-- single-product-start -->
                        <div class="product-wrapper">
                            <div class="product-img">
                                <a href="#">
                                    <img src="img/product/7.jpg" alt="book" class="primary"/>
                                </a>
                                <div class="quick-view">
                                    <a class="action-view" href="#" data-target="#productModal" data-toggle="modal"
                                       title="Quick View">
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
                                <h4><a href="#">Strive Shoulder Pack</a></h4>
                                <div class="product-price">
                                    <ul>
                                        <li>30.000đ</li>
                                        <li class="old-price">32.000đ</li>
                                    </ul>
                                </div>
                            </div>
                            <div class="product-link">
                                <div class="product-button">
                                    <a href="#" title="thêm vào giỏ hàng"><i class="fa fa-shopping-cart"></i>Add to
                                        cart</a>
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
                </div>
                <!-- mới-book-area-start -->
            </div>
            <div class="col-lg-3 col-md-12 col-12 order-lg-2 order-2">
                <div class="shop-left">
                    <div class="left-title mb-20">
                        <h4>Sản phẩm <br> được mua cùng</h4>
                    </div>
                    <div class="random-area mb-30">
                        <div class="product-active-2 owl-carousel">
                            <div class="product-total-2">
                                <div class="single-most-product bd mb-18">
                                    <div class="most-product-img">
                                        <a href="#"><img src="img/product/20.jpg" alt="book"/></a>
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
                                        <h4><a href="#">Endeavor Daytrip</a></h4>
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
                                        <a href="#"><img src="img/product/21.jpg" alt="book"/></a>
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
                                        <h4><a href="#">Savvy Shoulder Tote</a></h4>
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
                                        <a href="#"><img src="img/product/22.jpg" alt="book"/></a>
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
                                        <h4><a href="#">Compete Track Tote</a></h4>
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
                                        <a href="#"><img src="img/product/23.jpg" alt="book"/></a>
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
                                        <h4><a href="#">Voyage Yoga Bag</a></h4>
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
                                        <a href="#"><img src="img/product/24.jpg" alt="book"/></a>
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
                                        <h4><a href="#">Impulse Duffle</a></h4>
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
                                        <a href="#"><img src="img/product/22.jpg" alt="book"/></a>
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
                                        <h4><a href="#">Fusion Backpack</a></h4>
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
                    <div class="banner-area mb-30">
                        <div class="banner-img-2">
                            <a href="#"><img src="img/banner/33.jpg" alt="banner"/></a>
                        </div>
                    </div>
                    <div class="left-title-2">
                        <h2>Danh mục yêu thích</h2>
                        <p>Chưa có sản phẩm <br>trong danh mục yêu thích</p>
                    </div>
                </div>
            </div>
        </div>
    </div>
</div>
<!-- product-main-area-end -->

<!-- footer-area-start -->
<%@ include file="footer.jsp" %>
<!-- footer-area-end -->

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
