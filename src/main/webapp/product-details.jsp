<%@ page import="vn.edu.nlu.beans.Book" %>
<%@ page import="vn.edu.nlu.entities.BookEntity" %>
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

            <c:if test="${favoriteNotification != null}">
            alert("${favoriteNotification}");
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
                        <li><a href="default?page=productDetail&id=${book.id}" class="active">${book.name}</a></li>
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
                                        <a href="favoriteBook?page=productDetail&id=${book.id}" title="Yêu thích"><i
                                                class="fas fa-heart"></i></a>
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
                                <div class="review-add">
                                    <h3>Nhận xét của bạn:</h3>
                                </div>

                                <div class="review-field-ratings">
                                    <div class="control">
                                        <div class="single-control">
                                            <span>Đánh giá <sup>*</sup></span>
                                            <div class="review-control-vote">
                                                <a><i class="fa fa-star"></i></a>
                                                <a><i class="fa fa-star"></i></a>
                                                <a><i class="fa fa-star"></i></a>
                                                <a><i class="fa fa-star"></i></a>
                                                <a><i class="fa fa-star"></i></a>
                                            </div>
                                        </div>
                                    </div>
                                </div>

                                <div class="review-form" style="padding-left: 0; margin-bottom: 0">
                                    <div class="single-form">

                                        <div class="single-form single-form-2">
                                            <label for="title">Tiêu đề <sup>*</sup> </label>
                                            <input id="title" name="CommentTitle" type="text"
                                                   style="width: 90%; float: right"/>
                                        </div>

                                        <div class="single-form">
                                            <label for="content">Nội dung <sup>*</sup> </label>
                                            <textarea id="content" name="commentContent"
                                                      style="width: 90%; float: right" rows="4"></textarea>
                                        </div>
                                    </div>

                                    <div class="review-form-button" style="text-align: center">
                                        <a href="#">Gửi nhận xét</a>
                                    </div>
                                </div>
                                <hr>
                                <div class="section-title mb-15 mt-15">
                                    <h3>Khách hàng nhận xét:</h3>
                                </div>

                                <ul>
                                    <!--start single review-->
                                    <li>
                                        <div class="review-field-ratings" style="margin-bottom: 0">
                                            <span>Cực kì hài lòng</span>

                                            <div class="control">
                                                <div class="single-control review-rating" style="padding-bottom: 0">
                                                    <div class="rating-result" style="margin-top: 12px">
                                                        <a href="#"><i class="fa fa-star"></i></a>
                                                        <a href="#"><i class="fa fa-star"></i></a>
                                                        <a href="#"><i class="fa fa-star"></i></a>
                                                        <a href="#"><i class="fa fa-star"></i></a>
                                                        <a href="#"><i class="fa fa-star"></i></a>
                                                    </div>
                                                </div>
                                            </div>
                                        </div>

                                        <div class="review-left">
                                            <div class="review-details" style="margin-top: 0">
                                                <!--user and create time-->
                                                <p class="review-author">Bởi: <strong>Giang Thiên</strong> đăng ngày
                                                    <strong>2/11/2020</strong></p>
                                                <!--content-->
                                                <p class="review-content">Chan qua di!!!!!!!!!!!!!!</p>
                                            </div>
                                        </div>
                                    </li>
                                    <!--end single review-->
                                    <!-- start page number-->
                                    <div class="pagination-area" style="border: none">
                                        <div class="page-number">
                                            <ul>
                                                <li style="border: none; padding: 0px"><a href="#" class="active">1</a>
                                                </li>
                                                <li style="border: none; padding: 0px"><a href="#">2</a></li>
                                                <li style="border: none; padding: 0px"><a href="#">3</a></li>
                                                <li style="border: none; padding: 0px"><a href="#">4</a></li>
                                                <li style="border: none; padding: 0px"><a href="#" class="angle"><i
                                                        class="fa fa-angle-right"
                                                        style="font-size: 14px; top: auto"></i></a></li>
                                            </ul>
                                        </div>
                                    </div>
                                    <!-- end page number-->
                                </ul>
                            </div>
                        </div>
                    </div>
                </div>
                <!-- product-info-area-end -->

                <!-- similar-book-area-start -->
                <div class="new-book-area mt-60 new">
                    <div class="section-title text-center mb-30">
                        <h3>Sản phẩm tương tự</h3>
                    </div>
                    <div class="tab-active-2 owl-carousel">
                        <c:forEach var="similarBook" items="${BookEntity.getSimilarBooksByBook(book, 4)}">
                            <!-- single-product-start -->
                            <div class="product-wrapper">
                                <div class="product-img">
                                    <a href="#">
                                        <img src="${similarBook.getMainImg()}" alt="book" class="primary"/>
                                    </a>
                                    <div class="quick-view">
                                        <a class="action-view" data-target="#productModal${similarBook.id}"
                                           data-toggle="modal"
                                           title="Quick View">
                                            <i class="fa fa-search-plus"></i>
                                        </a>
                                    </div>
                                    <div class="product-flag">
                                        <ul>
                                            <li><span class="sale">mới</span></li>
                                            <li><span class="discount-percentage">${similarBook.getDiscount()}%</span>
                                            </li>
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
                                    <h4><a href="default?page=productDetail&id=${book.id}">${similarBook.name}</a></h4>
                                    <div class="product-price">
                                        <ul>
                                            <li>${similarBook.getDecimalFormatPriceSale()}đ</li>
                                            <li class="old-price">${similarBook.getDecimalFormatPrice()}đ</li>
                                        </ul>
                                    </div>
                                </div>
                                <div class="product-link">
                                    <div class="product-button">
                                        <a href="addBookQuantity?page=productDetail&id=${similarBook.id}&quantity=1"
                                           title="thêm vào giỏ hàng"><i class="fa fa-shopping-cart"></i>Add to
                                            cart</a>
                                    </div>
                                    <div class="add-to-link">
                                        <ul>
                                            <li>
                                                <a href="addBookQuantity?page=productDetail&id=${similarBook.id}&quantity=1"
                                                   title="Details"><i
                                                        class="fa fa-external-link"></i></a></li>
                                        </ul>
                                    </div>
                                </div>
                            </div>
                            <!-- single-product-end -->
                        </c:forEach>
                    </div>
                </div>
                <!-- mới-book-area-start -->
            </div>

            <%-- sản phẩm được mua cùng--%>
            <div class="col-lg-3 col-md-12 col-12 order-lg-2 order-2">
                <div class="shop-left">
                    <div class="left-title mb-20">
                        <h4>Sản phẩm <br> được mua cùng</h4>
                    </div>

                    <div class="random-area mb-30">
                        <div class="product-active-2 owl-carousel">
                            <c:set var="iter1" value="${BookEntity.getPurchasedBooksByBook(book, 9).iterator()}"/>
                            <c:forEach var="i" begin="0" end="2">
                                <div class="product-total-2">
                                    <c:forEach var="j" begin="0" end="2">
                                        <c:set var="purchasedBook" value="${iter1.next()}"/>
                                        <div class="single-most-product bd mb-18">
                                            <div class="most-product-img">
                                                <a href="default?page=productDetail&id=${purchasedBook.id}"><img
                                                        src="${purchasedBook.getMainImg()}" alt="book"/></a>
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
                                                <h4>
                                                    <a href="default?page=productDetail&id=${purchasedBook.id}">${purchasedBook.name}</a>
                                                </h4>
                                                <div class="product-price">
                                                    <ul>
                                                        <li>${purchasedBook.getDecimalFormatPrice()}đ</li>
                                                        <li class="old-price">${purchasedBook.getDecimalFormatPriceSale()}đ</li>
                                                    </ul>
                                                </div>
                                            </div>
                                        </div>
                                    </c:forEach>
                                </div>
                            </c:forEach>
                        </div>
                    </div>

                    <div class="banner-area mb-30">
                        <div class="banner-img-2">
                            <a href="#"><img src="img/banner/33.jpg" alt="banner"/></a>
                        </div>
                    </div>

                    <div class="left-title-2">
                        <h2>Danh mục yêu thích</h2>
                    </div>

                    <c:set var="favoriteBooks" value="${BookEntity.getFavoriteBooksByUser(user, 9)}"/>
                    <c:choose>
                        <c:when test="${favoriteBooks == null || favoriteBooks.size() == 0}">
                            <p>Chưa có sản phẩm <br>trong danh mục yêu thích</p>
                        </c:when>
                        <c:otherwise>
                            <c:set var="iter2" value="${favoriteBooks.iterator()}"/>
                            <div class="random-area mb-30">
                                <div class="product-active-2 owl-carousel">
                                    <c:forEach var="i" begin="0" end="2">
                                        <c:if test="${iter2.hasNext()}">
                                            <div class="product-total-2">
                                                <c:forEach var="j" begin="0" end="2">
                                                    <c:if test="${iter2.hasNext()}">
                                                        <c:set var="favoriteBook" value="${iter2.next()}"/>
                                                        <div class="single-most-product bd mb-18">
                                                            <div class="most-product-img">
                                                                <a href="default?page=productDetail&id=${favoriteBook.id}"><img
                                                                        src="${favoriteBook.getMainImg()}" alt="book"/></a>
                                                            </div>

                                                            <div class="most-product-content">
                                                                <div class="product-rating">
                                                                    <ul>
                                                                        <li><a href="#"><i class="fa fa-star"></i></a>
                                                                        </li>
                                                                        <li><a href="#"><i class="fa fa-star"></i></a>
                                                                        </li>
                                                                        <li><a href="#"><i class="fa fa-star"></i></a>
                                                                        </li>
                                                                        <li><a href="#"><i class="fa fa-star"></i></a>
                                                                        </li>
                                                                        <li><a href="#"><i class="fa fa-star"></i></a>
                                                                        </li>
                                                                    </ul>
                                                                </div>
                                                                <h4>
                                                                    <a href="default?page=productDetail&id=${favoriteBook.id}">${favoriteBook.name}</a>
                                                                </h4>
                                                                <div class="product-price">
                                                                    <ul>
                                                                        <li>${favoriteBook.getDecimalFormatPrice()}đ</li>
                                                                        <li class="old-price">${favoriteBook.getDecimalFormatPriceSale()}đ</li>
                                                                    </ul>
                                                                </div>
                                                            </div>
                                                        </div>
                                                    </c:if>
                                                </c:forEach>
                                            </div>
                                        </c:if>
                                    </c:forEach>
                                </div>
                            </div>
                        </c:otherwise>
                    </c:choose>
                </div>
            </div>
        </div>
    </div>
</div>
<!-- product-main-area-end -->

<%-- modal start--%>
<c:forEach var="similarBook" items="${BookEntity.getSimilarBooksByBook(book, 4)}">
    <div class="modal fade" id="productModal${similarBook.id}" tabindex="-1" role="dialog">
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
                                    <div class="tab-pane active" id="image-${similarBook.getMainImg()}">
                                        <img src="${similarBook.getMainImg()}" alt="">
                                    </div>
                                </div>
                            </div>
                        </div>

                        <div class="col-md-7 col-sm-7 col-xs-12">
                            <div class="modal-pro-content">
                                <h5>${similarBook.name}</h5>
                                <div class="price">
                                    <span style="font-size: 22px;"><del>${similarBook.getDecimalFormatPrice()}đ</del></span>
                                    <span style="font-size: 22px;">${similarBook.getDecimalFormatPriceSale()}đ</span>
                                </div>

                                <p>${similarBook.getDescription()}...</p>

                                <form method="get" action="addBookQuantity" style="margin-top: 16px">
                                    <label>Số lượng: </label>
                                    <input type="hidden" name="page" value="productDetail">
                                    <input type="hidden" name="id" value="${similarBook.id}">
                                    <input name="quantity" type="text" value="1">
                                    <button type="submit" style="margin-left: 0px">Thêm vào giỏ hàng</button>
                                </form>
                                <span><i class="fa fa-check"></i>Còn hàng</span>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </div>
</c:forEach>
<%-- modal end--%>

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
