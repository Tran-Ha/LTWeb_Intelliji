<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions" %>

<!doctype html>
<html >
<head>
    <title>Kết quả tìm kiếm</title>
    <jsp:include page="head.jsp"/>

</head>

<body class="shop">
<!--[if lt IE 8]>
<![endif]-->

<!-- Add your site or application content here -->
<!-- header-area-start -->
<jsp:include page="header.jsp"/>

<!-- breadcrumbs-area-start -->
<div class="breadcrumbs-area mb-30">
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
                <div class="shop-left" id="body-row">

                    <!-- Sidebar -->
                    <div id="sidebar-container" class="sidebar-expanded d-none d-md-block">
                        <!-- d-* hiddens the Sidebar in smaller devices. Its itens can be kept on the Navbar 'Menu' -->
                        <!-- Bootstrap List Group -->
                        <ul class="list-group">
                            <!-- Separator with title -->
                            <li class="list-group-item sidebar-separator-title text-muted d-flex align-items-center menu-collapsed">
                                <small>Danh mục sản phẩm</small>
                            </li>
                            <!-- /END Separator -->
                            <!-- Menu with submenu -->
                            <a href="#submenu1" data-toggle="collapse" aria-expanded="false" class="list-group-item list-group-item-action flex-column align-items-start">
                                <div class="d-flex w-100 justify-content-start align-items-center">
                                    <span class="menu-collapsed">Thể loại</span>
                                    <span class="submenu-icon ml-auto"></span>
                                </div>
                            </a>
                            <!-- Submenu content -->
                            <div id='submenu1' class="collapse sidebar-submenu">
                                <c:forEach items="${groups}" var="g">
                                    <a class="list-group-item list-group-item-action" href="/Zoe/loadingCategories?group=${g.id}">${g.name}</a>
                                </c:forEach>
                            </div>
                            <a href="#submenu2" data-toggle="collapse" aria-expanded="false" class="list-group-item list-group-item-action flex-column align-items-start">
                                <div class="d-flex w-100 justify-content-start align-items-center">
                                    <span class="menu-collapsed">Nhà phát hành</span>
                                    <span class="submenu-icon ml-auto"></span>
                                </div>
                            </a>
                            <!-- Submenu content -->
                            <div id='submenu2' class="collapse sidebar-submenu">
                                <c:forEach items="${pubs}" var="p">
                                    <li><a class="list-group-item list-group-item-action" href="/Zoe/loadingCategories?pub=${p.id}">${p.name}</a></li>
                                </c:forEach>
                            </div>

                            <a href="#submenu3" data-toggle="collapse" aria-expanded="false" class="list-group-item list-group-item-action flex-column align-items-start">
                                <div class="d-flex w-100 justify-content-start align-items-center">
                                    <span class="menu-collapsed">Giá</span>
                                    <span class="submenu-icon ml-auto"></span>
                                </div>
                            </a>
                            <!-- Submenu content -->
                            <div id='submenu3' class="collapse sidebar-submenu">
                                <a class="list-group-item list-group-item-action" href="/Zoe/loadingCategories?up=100000">Dưới 100.000đ</a>
                                <a class="list-group-item list-group-item-action" href="/Zoe/loadingCategories?down=100000&up=200000">Từ 100.000đ - 200.000đ</a>
                                <a class="list-group-item list-group-item-action" href="/Zoe/loadingCategories?down=100000&up=200000">Từ 200.000đ - 300.000đ</a>
                                <a class="list-group-item list-group-item-action" href="/Zoe/loadingCategories?down=100000&up=200000">Từ 300.000đ - 500.000đ</a>
                                <a class="list-group-item list-group-item-action" href="/Zoe/loadingCategories?down=500000">Trên 500.000đ</a>
                            </div>

                        </ul><!-- List Group END-->
                    </div><!-- sidebar-container END -->

                    <div class="left-title mb-20 mt-16">
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

                            <c:forEach items="${books}"  var="b">
                                <div class="col-xl-3 col-lg-4 col-md-6 col-sm-6  mb-40">
                                    <!-- single-product-start -->
                                    <div class="product-wrapper">
                                        <div class="product-img">
                                            <a href="#">
                                                <img src="${b.getMainImg()}" alt="book" class="primary">
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
                                            <h4><a href="#">${b.name}</a></h4>
                                            <div class="product-price">
                                                <ul>
                                                    <li>${b.getDecimalFormatPrice()}đ</li>
                                                    <li class="old-price">${b.getDecimalFormatPrice()}đ</li>
                                                </ul>
                                            </div>
                                        </div>
                                        <div class="product-link">
                                            <div class="product-button">
                                                <a href="#" title="Add to cart">
                                                    <i class="fa fa-shopping-cart"></i>Thêm vào giỏ hàng</a>
                                            </div>
                                            <div class="add-to-link">
                                                <ul>
                                                    <li><a href="product-details.html" title="Details">
                                                        <i class="fa fa-external-link"></i></a></li>
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
                        <c:forEach items="${books}"  var="b">
                            <div class="single-shop mb-30">
                                <div class="row list-box">
                                    <div class="col-lg-4 col-md-4 col-12">
                                        <div class="product-wrapper-2">
                                            <div class="product-img">
                                                <a href="#">
                                                    <img src="${b.getMainImg()}" alt="${b.name}" class="primary">
                                                </a>
                                            </div>
                                        </div>
                                    </div>
                                    <div class="col-lg-8 col-md-8 col-12">
                                        <div class="product-wrapper-content">
                                            <div class="product-details">
                                                <h4><a href="#">${b.name}</a></h4>
                                                <div class="product-rating">
                                                    <ul>
                                                        <li><a href="#"><i class="fa fa-star"></i></a></li>
                                                        <li><a href="#"><i class="fa fa-star"></i></a></li>
                                                        <li><a href="#"><i class="fa fa-star"></i></a></li>
                                                        <li><a href="#"><i class="fa fa-star"></i></a></li>
                                                        <li><a href="#"><i class="fa fa-star"></i></a></li>
                                                    </ul>
                                                </div>
                                                <div class="product-price">
                                                    <ul>
                                                        <li>${b.getDecimalFormatPriceSale()}đ</li>
                                                        <li class="old-price">${b.getDecimalFormatPrice()}đ</li>
                                                    </ul>
                                                </div>
                                                <p class="description">${b.description}</p>
                                            </div>
                                            <div class="product-link">
                                                <div class="product-button">
                                                    <a href="#" title="Add to cart"><i class="fa fa-shopping-cart">
                                                    </i>Thêm vào giỏ hàng</a>
                                                </div>
                                                <div class="add-to-link">
                                                    <ul>
                                                        <li><a href="product-details.html" title="Details">
                                                            <i  class="fa fa-external-link"></i></a></li>
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
                -------------------------------------------------



                <ul class="pagination" id="pagination"></ul>




                <!-- pagination-area-end -->
            </div>
        </div>
    </div>
</div>
<!-- shop-main-area-end -->

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

<!-- footer-area-start -->
<jsp:include page="footer.jsp"/>
<!-- footer-area-end -->

<%--js--%>
<jsp:include page="script.jsp"/>

<%--sidebar--%>
<script>
    // Hide submenus
    $('#body-row .collapse').collapse('hide');

    // Collapse/Expand icon
    $('#collapse-icon').addClass('fa-angle-double-left');

    // Collapse click
    $('[data-toggle=sidebar-colapse]').click(function() {
        SidebarCollapse();
    });

    function SidebarCollapse () {
        $('.menu-collapsed').toggleClass('d-none');
        $('.sidebar-submenu').toggleClass('d-none');
        $('.submenu-icon').toggleClass('d-none');
        $('#sidebar-container').toggleClass('sidebar-expanded sidebar-collapsed');

        // Treating d-flex/d-none on separators with title
        var SeparatorTitle = $('.sidebar-separator-title');
        if ( SeparatorTitle.hasClass('d-flex') ) {
            SeparatorTitle.removeClass('d-flex');
        } else {
            SeparatorTitle.addClass('d-flex');
        }

        // Collapse/Expand icon
        $('#collapse-icon').toggleClass('fa-angle-double-left fa-angle-double-right');
    }
</script>
<%--pagination--%>
<script>
    $(function (){
        window.pagObj = $('#pagination').twbsPagination({
            totalPages: 10,
            visiblePages: 5,
            startPage: 4,
            onPageClick: function (event, page) {
                console.info(page + ' (from options)');
            }
        }).on('page',function (event, page){
            console.info(page+' (from event listening) ');
        });
    });
</script>

</body>

</html>