<%@ page import="vn.edu.nlu.entities.BookEntity" %>
<%@ page import="java.util.ArrayList" %>
<%@ page import="vn.edu.nlu.beans.Categories" %><%--
  Created by IntelliJ IDEA.
  User: THU HA
  Date: 25/12/2020
  Time: 9:08 AM
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType= "text/html;charset=UTF-8" language="java"%>
<%@ taglib prefix = "c" uri = "http://java.sun.com/jsp/jstl/core" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/functions" prefix="fn" %>
<html>
<head>
    <title>Title</title>
</head>
<body>
<!-- shop-main-area-start -->
<div class="shop-main-area mb-70">
    <div class="container">
        <div class="row">
            <div class="col-lg-3 col-md-12 col-12 order-lg-1 order-2 mt-sm-50 mt-xs-40">
                <div class="shop-left">
                    <div class="section-title-5 mb-30">
                        <h2>Tùy chọn</h2>
                    </div>
                    <div class="left-title mb-20">
                        <h4>Thể loại</h4>
                    </div>

                    <div class="left-menu mb-30">
                        <ul>
                            <c:forEach items="${cats}" var="cat">
                            <li><a href="#">${cat.name}<span>(sl)</span></a></li>
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


                            <div class="owl-stage-outer"><div class="owl-stage" style="transform: translate3d(-1785px, 0px, 0px); transition: all 1s ease 0s; width: 4080px;"><div class="owl-item cloned" style="width: 255px;"><div class="product-total-2">
                                <div class="single-most-product bd mb-18">
                                    <div class="most-product-img">
                                        <a href="#"><img src="../img/products/23.jpg" alt="book"></a>
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
                                        <a href="#"><img src="../img/products/24.jpg" alt="book"></a>
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
                                        <a href="#"><img src="../img/products/22.jpg" alt="book"></a>
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
                            </div></div><div class="owl-item cloned" style="width: 255px;"><div class="product-total-2">
                                <div class="single-most-product bd mb-18">
                                    <div class="most-product-img">
                                        <a href="#"><img src="../img/products/20.jpg" alt="book"></a>
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
                                        <a href="#"><img src="../img/products/21.jpg" alt="book"></a>
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
                                        <a href="#"><img src="../img/products/22.jpg" alt="book"></a>
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
                            </div></div><div class="owl-item cloned" style="width: 255px;"><div class="product-total-2">
                                <div class="single-most-product bd mb-18">
                                    <div class="most-product-img">
                                        <a href="#"><img src="../img/products/23.jpg" alt="book"></a>
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
                                        <a href="#"><img src="../img/products/24.jpg" alt="book"></a>
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
                                        <a href="#"><img src="../img/products/22.jpg" alt="book"></a>
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
                            </div></div><div class="owl-item cloned active" style="width: 255px;"><div class="product-total-2">
                                <div class="single-most-product bd mb-18">
                                    <div class="most-product-img">
                                        <a href="#"><img src="../img/products/20.jpg" alt="book"></a>
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
                                        <a href="#"><img src="../img/products/21.jpg" alt="book"></a>
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
                                        <a href="#"><img src="../img/products/22.jpg" alt="book"></a>
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
                            </div></div></div></div><div class="owl-nav"><button type="button" role="presentation" class="owl-prev"><i class="fa fa-angle-left"></i></button><button type="button" role="presentation" class="owl-next"><i class="fa fa-angle-right"></i></button></div><div class="owl-dots disabled"></div><div class="owl-nav"><button type="button" role="presentation" class="owl-prev"><i class="fa fa-angle-left"></i></button><button type="button" role="presentation" class="owl-next"><i class="fa fa-angle-right"></i></button></div><div class="owl-dots disabled"></div><div class="owl-nav"><button type="button" role="presentation" class="owl-prev"><i class="fa fa-angle-left"></i></button><button type="button" role="presentation" class="owl-next"><i class="fa fa-angle-right"></i></button></div><div class="owl-dots disabled"></div></div>
                    </div>
                    <div class="left-title mb-20">
                        <h4>Sản phẩm yêu thích</h4>
                    </div>
                    <div class="random-area mb-30">
                        <div class="product-active-2 owl-carousel owl-loaded owl-drag">


                            <div class="owl-stage-outer"><div class="owl-stage" style="transform: translate3d(-1785px, 0px, 0px); transition: all 1s ease 0s; width: 4080px;"><div class="owl-item cloned" style="width: 255px;"><div class="product-total-2">
                                <div class="single-most-product bd mb-18">
                                    <div class="most-product-img">
                                        <a href="#"><img src="../img/products/23.jpg" alt="book"></a>
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
                                        <a href="#"><img src="../img/products/24.jpg" alt="book"></a>
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
                                        <a href="#"><img src="../img/products/22.jpg" alt="book"></a>
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
                            </div></div><div class="owl-item cloned" style="width: 255px;"><div class="product-total-2">
                                <div class="single-most-product bd mb-18">
                                    <div class="most-product-img">
                                        <a href="#"><img src="../img/products/20.jpg" alt="book"></a>
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
                                        <a href="#"><img src="../img/products/21.jpg" alt="book"></a>
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
                                        <a href="#"><img src="../img/products/22.jpg" alt="book"></a>
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
                            </div></div><div class="owl-item cloned" style="width: 255px;"><div class="product-total-2">
                                <div class="single-most-product bd mb-18">
                                    <div class="most-product-img">
                                        <a href="#"><img src="../img/products/23.jpg" alt="book"></a>
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
                                        <a href="#"><img src="../img/products/24.jpg" alt="book"></a>
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
                                        <a href="#"><img src="../img/products/22.jpg" alt="book"></a>
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
                            </div></div><div class="owl-item cloned active" style="width: 255px;"><div class="product-total-2">
                                <div class="single-most-product bd mb-18">
                                    <div class="most-product-img">
                                        <a href="#"><img src="../img/products/20.jpg" alt="book"></a>
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
                                        <a href="#"><img src="../img/products/21.jpg" alt="book"></a>
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
                                        <a href="#"><img src="../img/products/22.jpg" alt="book"></a>
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
                            </div></div></div></div><div class="owl-nav"><button type="button" role="presentation" class="owl-prev"><i class="fa fa-angle-left"></i></button><button type="button" role="presentation" class="owl-next"><i class="fa fa-angle-right"></i></button></div><div class="owl-dots disabled"></div><div class="owl-nav"><button type="button" role="presentation" class="owl-prev"><i class="fa fa-angle-left"></i></button><button type="button" role="presentation" class="owl-next"><i class="fa fa-angle-right"></i></button></div><div class="owl-dots disabled"></div><div class="owl-nav"><button type="button" role="presentation" class="owl-prev"><i class="fa fa-angle-left"></i></button><button type="button" role="presentation" class="owl-next"><i class="fa fa-angle-right"></i></button></div><div class="owl-dots disabled"></div></div>
                    </div>
                </div>
            </div>
        </div>
    </div>
</div>
<!-- shop-main-area-end -->
</body>
</html>
