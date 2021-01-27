<%@ page import="vn.edu.nlu.entities.BookEntity" %>
<%@ page import="vn.edu.nlu.utils.HomePageHelper" %>
<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions" %>

<!doctype html>
<html class="no-js" lang="en">

<head>
    <title>Zoe Book Shop</title>
    <jsp:include page="head.jsp"/>

    <script>
        const cartEventHandler = function (id, quantity) {
            $.ajax({
                type: 'get',
                dataType: 'text',
                contentType: 'tex/html;charset=UTF-8',
                async: true,
                url: 'ajaxAddBookQuantity',
                data: {
                    id: id,
                    quantity: quantity
                },
                success: function (result) {
                    const cart = JSON.parse(result);
                    console.log(cart);

                    const books = cart.books;
                    const notification = cart.notification;
                    // check books is null (have not login)
                    if (books != null) {
                        // get total book quantity
                        let totalBookQuantity = 0;
                        for (let i = 0; i < books.length; i++) {
                            totalBookQuantity += books[i].quantity;
                        }
                        // reset book quantity
                        $('#headerCartQuantity').html(totalBookQuantity);
                        // reset notification "chua co sach trong gio hang"
                        if (books.length == 0) {
                            $('#notification').text("Bạn chưa có sản phẩm trong giỏ hàng!");
                        } else {
                            $('#notification').remove();
                        }
                        // delete all single cart
                        $('.single-cart').remove();
                        // insert new single cart
                        for (let i = 0; i < 2; i++) {
                            let book = books[i];
                            if (book != null) {
                                $('.cart-product').append(
                                    "<div class=\"single-cart\">" +
                                    "<div class=\"cart-img\">" +
                                    "<a href=\"default?page=productDetail&id=" + book.id + "\"><img src=\"" + book.imgs[0] + "\" alt=\"book\"/></a>" +
                                    "</div>" +
                                    "<div class=\"cart-info\">" +
                                    "<h5><a href=\"default?page=productDetail&id=" + book.id + "\">" + book.name + "</a></h5>" +
                                    "<p>" + book.quantity + " x " + (book.price).toFixed(1).replace(/\d(?=(\d{3})+\.)/g, '$&,') + "đ</p>" +
                                    "</div>" +
                                    "</div>")
                            }
                        }
                        // price and priceSale
                        let totalPrice = 0;
                        let discountPrice = 0;
                        for (let i = 0; i < books.length; i++) {
                            let book = books[i];
                            totalPrice += book.price * book.quantity;
                            discountPrice += book.priceSale * book.quantity;
                        }
                        $('#headerCartPrice').html((totalPrice).toFixed(1).replace(/\d(?=(\d{3})+\.)/g, '$&,') + "đ");
                        $('#headerCartPriceSale').html((discountPrice).toFixed(1).replace(/\d(?=(\d{3})+\.)/g, '$&,') + "đ");

                    }
                    // notify
                    alert(notification);
                }
            })
        }
    </script>
</head>

<body>
<jsp:include page="ajaxHeader.jsp"/>

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
        <c:set var="newBooks" value="${BookEntity.getNewBooks(8)}"/>
        <div class="tab-content">
            <div class="tab-pane fade show active" id="newbooks">
                <div class="tab-active owl-carousel">
                    <!-- single-product-start -->
                    <c:forEach var="newBook" items="${newBooks}">
                        <div class="product-wrapper">
                            <div class="product-img">
                                <a href="default?page=productDetail&id=${newBook.id}">
                                    <img src="${newBook.getMainImg()}" alt="book" class="primary"/>
                                </a>
                                <div class="quick-view">
                                    <a class="action-view" href="#" data-target="#productModal${newBook.id}"
                                       data-toggle="modal"
                                       title="Xem nhanh">
                                        <i class="fa fa-search-plus"></i>
                                    </a>
                                </div>
                                <div class="product-flag">
                                    <ul>
                                        <c:if test="${newBook.isNew() == false}">
                                            <li><span class="sale">mới</span> <br></li>
                                        </c:if>
                                        <c:if test="${newBook.getPercent() != 0}">
                                            <li><span class="discount-percentage">-${newBook.getPercent()}%</span></li>
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
                                <h4><a href="default?page=productDetail&id=${newBook.id}">${newBook.name}</a></h4>
                                <div class="product-price">
                                    <ul>
                                        <li>${newBook.getDecimalFormatPriceSale()} đ</li>
                                        <li class="old-price">${newBook.getDecimalFormatPrice()} đ</li>
                                    </ul>
                                </div>
                            </div>
                            <div class="product-link">
                                <div class="product-button">
                                    <a onclick="cartEventHandler(${newBook.id}, 1)"
                                       title="Thêm vào giỏ hàng"><i
                                            class="fa fa-shopping-cart"></i>Thêm vào
                                        giỏ hàng</a>
                                </div>
                                <div class="add-to-link">
                                    <ul>
                                        <li><a href="default?page=productDetail&id=${newBook.id}" title="Chi tiết"><i
                                                class="fas fa-external-link-alt"></i></a></li>
                                    </ul>
                                </div>
                            </div>
                        </div>
                    </c:forEach>
                    <!-- single-product-end -->
                </div>
            </div>

            <c:set var="hotBooks" value="${BookEntity.getHotBooks(8)}"/>
            <div class="tab-pane fade show" id="hotbooks">
                <div class="tab-active owl-carousel">
                    <!-- single-product-start -->
                    <c:forEach var="hotBook" items="${hotBooks}">
                        <div class="product-wrapper">
                            <div class="product-img">
                                <a href="default?page=productDetail&id=${hotBook.id}">
                                    <img src="${hotBook.getMainImg()}" alt="book" class="primary"/>
                                </a>
                                <div class="quick-view">
                                    <a class="action-view" href="#" data-target="#productModal${hotBook.id}"
                                       data-toggle="modal"
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
                                <h4><a href="default?page=productDetail&id=${hotBook.id}">${hotBook.name}</a></h4>
                                <div class="product-price">
                                    <ul>
                                        <li>${hotBook.getDecimalFormatPriceSale()} đ</li>
                                        <li class="old-price">${hotBook.getDecimalFormatPrice()} đ</li>
                                    </ul>
                                </div>
                            </div>
                            <div class="product-link">
                                <div class="product-button">
                                    <a onclick="cartEventHandler(${hotBook.id}, 1)"
                                       title="Thêm vào giỏ hàng"><i
                                            class="fa fa-shopping-cart"></i>Thêm vào
                                        giỏ hàng</a>
                                </div>
                                <div class="add-to-link">
                                    <ul>
                                        <li><a href="default?page=productDetail&id=${hotBook.id}" title="Chi tiết"><i
                                                class="fas fa-external-link-alt"></i></a></li>
                                    </ul>
                                </div>
                            </div>
                        </div>
                    </c:forEach>
                    <!-- single-product-end -->
                </div>
            </div>

            <c:set var="bestSellerBooks" value="${BookEntity.getBestSellerBooks(8)}"/>
            <div class="tab-pane fade show" id="bestsellers">
                <div class="tab-active owl-carousel">
                    <!-- single-product-start -->
                    <c:forEach var="bestSellerBook" items="${bestSellerBooks}">
                        <div class="product-wrapper">
                            <div class="product-img">
                                <a href="default?page=productDetail&id=${bestSellerBook.id}">
                                    <img src="${bestSellerBook.getMainImg()}" alt="book" class="primary"/>
                                </a>
                                <div class="quick-view">
                                    <a class="action-view" href="#" data-target="#productModal${bestSellerBook.id}"
                                       data-toggle="modal"
                                       title="Xem nhanh">
                                        <i class="fa fa-search-plus"></i>
                                    </a>
                                </div>
                                <div class="product-flag">
                                    <ul>
                                        <c:if test="${bestSellerBook.isBestseller() == false}">
                                            <li><span class="sale">bán chạy</span> <br></li>
                                        </c:if>
                                        <c:if test="${bestSellerBook.getPercent() != 0}">
                                            <li><span
                                                    class="discount-percentage">-${bestSellerBook.getPercent()}%</span>
                                            </li>
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
                                <h4>
                                    <a href="default?page=productDetail&id=${bestSellerBook.id}">${bestSellerBook.name}</a>
                                </h4>
                                <div class="product-price">
                                    <ul>
                                        <li>${bestSellerBook.getDecimalFormatPriceSale()} đ</li>
                                        <li class="old-price">${bestSellerBook.getDecimalFormatPrice()} đ</li>
                                    </ul>
                                </div>
                            </div>
                            <div class="product-link">
                                <div class="product-button">
                                    <a onclick="cartEventHandler(${bestSellerBook.id}, 1)"
                                       title="Thêm vào giỏ hàng"><i
                                            class="fa fa-shopping-cart"></i>Thêm vào
                                        giỏ hàng</a>
                                </div>
                                <div class="add-to-link">
                                    <ul>
                                        <li><a href="default?page=productDetail&id=${bestSellerBook.id}"
                                               title="Chi tiết"><i
                                                class="fas fa-external-link-alt"></i></a></li>
                                    </ul>
                                </div>
                            </div>
                        </div>
                    </c:forEach>
                    <!-- single-product-end -->
                </div>
            </div>

            <c:set var="promotionBooks" value="${BookEntity.getPromotionBooks(8)}"/>
            <div class="tab-pane fade" id="discountbooks">
                <div class="tab-active owl-carousel">
                    <!-- single-product-start -->
                    <c:forEach items="${promotionBooks}" var="promotionBook">
                        <div class="product-wrapper">
                            <div class="product-img">
                                <a href="default?page=productDetail&id=${promotionBook.id}">
                                    <img src="${promotionBook.getMainImg()}" alt="book" class="primary"/>
                                </a>
                                <div class="quick-view">
                                    <a class="action-view" href="#" data-target="#productModal${promotionBook.id}"
                                       data-toggle="modal"
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
                                            <li><span class="discount-percentage">-${promotionBook.getPercent()}%</span>
                                            </li>
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
                                <h4>
                                    <a href="default?page=productDetail&id=${promotionBook.id}">${promotionBook.name}</a>
                                </h4>
                                <div class="product-price">
                                    <ul>
                                        <li>${promotionBook.getDecimalFormatPriceSale()} đ</li>
                                        <li class="old-price">${promotionBook.getDecimalFormatPrice()} đ</li>
                                    </ul>
                                </div>
                            </div>
                            <div class="product-link">
                                <div class="product-button">
                                    <a onclick="cartEventHandler(${promotionBook.id}, 1)"
                                       title="Thêm vào giỏ hàng"><i
                                            class="fa fa-shopping-cart"></i>Thêm vào
                                        giỏ hàng</a>
                                </div>
                                <div class="add-to-link">
                                    <ul>
                                        <li><a href="default?page=productDetail&id=${promotionBook.id}"
                                               title="Chi tiết"><i
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
<c:set var="skillBooks" value="${BookEntity.getSkillBooks(16)}"/>
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
                    <c:set var="skillBooksIter" value="${skillBooks.iterator()}"/>
                    <c:forEach begin="1" end="8">
                        <div class="owl-item" style="width: 262.5px; margin-right: 20px;">
                            <div class="tab-total">
                                <!-- single-product-start -->
                                <c:set var="book" value="${skillBooksIter.next()}"/>
                                <div class="product-wrapper mb-15">
                                    <div class="product-img">
                                        <a href="default?page=productDetail&id=${book.id}">
                                            <img src="${book.getMainImg()}" alt="book"
                                                 class="primary">
                                        </a>
                                        <div class="quick-view">
                                            <a class="action-view" href="#" data-target="#productModal${book.id}"
                                               data-toggle="modal" title="Xem nhanh">
                                                <i class="fa fa-search-plus"></i>
                                            </a>
                                        </div>
                                        <div class="product-flag">
                                            <ul>
                                                <c:if test="${book.isNew() == false}">
                                                    <li><span class="sale">mới</span> <br></li>
                                                </c:if>
                                                <c:if test="${book.getPercent() != 0}">
                                                    <li><span
                                                            class="discount-percentage">-${book.getPercent()}%</span>
                                                    </li>
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
                                        <h4><a href="default?page=productDetail&id=${book.id}">${book.getName()}</a>
                                        </h4>
                                        <div class="product-price">
                                            <ul>
                                                <li>${book.getDecimalFormatPriceSale()} đ</li>
                                                <li class="old-price">${book.getDecimalFormatPrice()}
                                                    đ
                                                </li>
                                            </ul>
                                        </div>
                                    </div>
                                    <div class="product-link">
                                        <div class="product-button">
                                            <a onclick="cartEventHandler(${book.id}, 1)" title="Thêm vào giỏ hàng"><i
                                                    class="fa fa-shopping-cart"></i>Thêm
                                                vào giỏ
                                                hàng</a>
                                        </div>
                                        <div class="add-to-link">
                                            <ul>
                                                <li><a href="default?page=productDetail&id=${book.id}" title="Chi tiết"><i
                                                        class="fas fa-external-link-alt"></i></a></li>
                                            </ul>
                                        </div>
                                    </div>
                                </div>
                                <!-- single-product-end -->

                                <!-- single-product-start -->
                                <c:set var="book" value="${skillBooksIter.next()}"/>
                                <div class="product-wrapper">
                                    <div class="product-img">
                                        <a href="default?page=productDetail&id=${book.id}">
                                            <img src="${book.getMainImg()}" alt="book"
                                                 class="primary">
                                        </a>
                                        <div class="quick-view">
                                            <a class="action-view" href="#" data-target="#productModal${book.id}"
                                               data-toggle="modal" title="Xem nhanh">
                                                <i class="fa fa-search-plus"></i>
                                            </a>
                                        </div>
                                        <div class="product-flag">
                                            <ul>
                                                <c:if test="${book.isNew() == false}">
                                                    <li><span class="sale">mới</span> <br></li>
                                                </c:if>
                                                <c:if test="${book.getPercent() != 0}">
                                                    <li><span
                                                            class="discount-percentage">-${book.getPercent()}%</span>
                                                    </li>
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
                                        <h4><a href="default?page=productDetail&id=${book.id}">${book.getName()}</a>
                                        </h4>
                                        <div class="product-price">
                                            <ul>
                                                <li>${book.getDecimalFormatPriceSale()} đ</li>
                                                <li class="old-price">${book.getDecimalFormatPrice()}
                                                    đ
                                                </li>
                                            </ul>
                                        </div>
                                    </div>
                                    <div class="product-link">
                                        <div class="product-button">
                                            <a onclick="cartEventHandler(${book.id}, 1)" title="Thêm vào giỏ hàng"><i
                                                    class="fa fa-shopping-cart"></i>Thêm
                                                vào giỏ
                                                hàng</a>
                                        </div>
                                        <div class="add-to-link">
                                            <ul>
                                                <li><a href="default?page=productDetail&id=${book.id}" title="Chi tiết"><i
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
<c:set var="literaryBooks" value="${BookEntity.getLiteraryBooks(16)}"/>
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
                    <c:set var="literaryBookIter" value="${literaryBooks.iterator()}"/>
                    <c:forEach begin="1" end="8">
                        <div class="owl-item" style="width: 262.5px; margin-right: 20px;">
                            <div class="tab-total">
                                <!-- single-product-start -->
                                <c:set var="book" value="${literaryBookIter.next()}"/>
                                <div class="product-wrapper mb-15">
                                    <div class="product-img">
                                        <a href="default?page=productDetail&id=${book.id}">
                                            <img src="${book.getMainImg()}" alt="book"
                                                 class="primary">
                                        </a>
                                        <div class="quick-view">
                                            <a class="action-view" href="#" data-target="#productModal${book.id}"
                                               data-toggle="modal" title="Xem nhanh">
                                                <i class="fa fa-search-plus"></i>
                                            </a>
                                        </div>
                                        <div class="product-flag">
                                            <ul>
                                                <c:if test="${book.isNew() == false}">
                                                    <li><span class="sale">mới</span> <br></li>
                                                </c:if>
                                                <c:if test="${book.getPercent() != 0}">
                                                    <li><span
                                                            class="discount-percentage">-${book.getPercent()}%</span>
                                                    </li>
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
                                        <h4><a href="default?page=productDetail&id=${book.id}">${book.getName()}</a>
                                        </h4>
                                        <div class="product-price">
                                            <ul>
                                                <li>${book.getDecimalFormatPriceSale()} đ</li>
                                                <li class="old-price">${book.getDecimalFormatPrice()}
                                                    đ
                                                </li>
                                            </ul>
                                        </div>
                                    </div>
                                    <div class="product-link">
                                        <div class="product-button">
                                            <a onclick="cartEventHandler(${book.id}, 1)" title="Thêm vào giỏ hàng"><i
                                                    class="fa fa-shopping-cart"></i>Thêm
                                                vào giỏ
                                                hàng</a>
                                        </div>
                                        <div class="add-to-link">
                                            <ul>
                                                <li><a href="default?page=productDetail&id=${book.id}" title="Chi tiết"><i
                                                        class="fas fa-external-link-alt"></i></a></li>
                                            </ul>
                                        </div>
                                    </div>
                                </div>
                                <!-- single-product-end -->

                                <!-- single-product-start -->
                                <c:set var="book" value="${literaryBookIter.next()}"/>
                                <div class="product-wrapper">
                                    <div class="product-img">
                                        <a href="default?page=productDetail&id=${book.id}">
                                            <img src="${book.getMainImg()}" alt="book"
                                                 class="primary">
                                        </a>
                                        <div class="quick-view">
                                            <a class="action-view" href="#" data-target="#productModal${book.id}"
                                               data-toggle="modal" title="Xem nhanh">
                                                <i class="fa fa-search-plus"></i>
                                            </a>
                                        </div>
                                        <div class="product-flag">
                                            <ul>
                                                <c:if test="${book.isNew() == false}">
                                                    <li><span class="sale">mới</span> <br></li>
                                                </c:if>
                                                <c:if test="${book.getPercent() != 0}">
                                                    <li><span
                                                            class="discount-percentage">-${book.getPercent()}%</span>
                                                    </li>
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
                                        <h4><a href="#">${book.getName()}</a></h4>
                                        <div class="product-price">
                                            <ul>
                                                <li>${book.getDecimalFormatPriceSale()} đ</li>
                                                <li class="old-price">${book.getDecimalFormatPrice()}
                                                    đ
                                                </li>
                                            </ul>
                                        </div>
                                    </div>
                                    <div class="product-link">
                                        <div class="product-button">
                                            <a onclick="cartEventHandler(${book.id}, 1)" title="Thêm vào giỏ hàng"><i
                                                    class="fa fa-shopping-cart"></i>Thêm
                                                vào giỏ
                                                hàng</a>
                                        </div>
                                        <div class="add-to-link">
                                            <ul>
                                                <li><a href="default?page=productDetail&id=${book.id}" title="Chi tiết"><i
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

<!-- footer-area-start -->
<jsp:include page="footer.jsp" flush="true"/>

<!-- footer-area-end -->
<!-- Modal -->
<c:set var="books1" value="${HomePageHelper.getDistinctBooks(newBooks, hotBooks)}"/>
<c:set var="books2" value="${HomePageHelper.getDistinctBooks(promotionBooks, bestSellerBooks)}"/>
<c:set var="books3" value="${HomePageHelper.getDistinctBooks(literaryBooks, skillBooks)}"/>
<c:set var="books4" value="${HomePageHelper.getDistinctBooks(books1, books2)}"/>
<c:set var="books5" value="${HomePageHelper.getDistinctBooks(books3, books4)}"/>

<c:forEach var="book" items="${books5}">
    <div class="modal fade" id="productModal${book.id}" tabindex="-1" role="dialog">
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
                                    <div class="tab-pane active" id="image-${book.id}">
                                        <img src="${book.getMainImg()}" alt=""/>
                                    </div>
                                </div>
                            </div>
                        </div>
                        <div class="col-md-7 col-sm-7 col-xs-12">
                            <div class="modal-pro-content">
                                <h5>${book.name}</h5>
                                <div class="price">
                                    <span style="font-size: 22px;"><del>${book.getDecimalFormatPrice()}đ</del></span>
                                    <span style="font-size: 22px;">${book.getDecimalFormatPriceSale()}đ</span>
                                </div>

                                <p>${book.getDescription()}...</p>

                                <form method="get" action="addBookQuantity" style="margin-top: 16px">
                                    <label>Số lượng: </label>
                                    <input type="hidden" name="page" value="productDetail">
                                    <input type="hidden" name="id" value="${book.id}">
                                    <input name="quantity" type="text" value="1">
                                    <button type="button" onclick="cartEventHandler(${book.id}, 1)"
                                            style="margin-left: 0px">Thêm vào giỏ hàng
                                    </button>
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