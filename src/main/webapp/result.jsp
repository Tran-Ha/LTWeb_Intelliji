
<%@ page import="java.util.*" %>
<%@ page import="vn.edu.nlu.beans.GroupBook" %>
<%@ page import="vn.edu.nlu.entities.GroupEntity" %>
<%@ page import="vn.edu.nlu.beans.Publication" %>
<%@ page import="vn.edu.nlu.entities.PublicationEntities" %>
<%@ page import="vn.edu.nlu.utils.TypePrice" %>
<%@ page import="vn.edu.nlu.utils.TypeOrder" %>
<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions" %>

<!doctype html>
<html>
<head>
    <title>Kết quả tìm kiếm</title>
    <jsp:include page="head.jsp"/>
</head>

<body class="shop">
<jsp:include page="header.jsp"/>
<c:set var="theString" scope="request" value="${uri_query}"/>
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
                        <ul class="list-group">
                            <li class="list-group-item sidebar-separator-title text-muted d-flex align-items-center menu-collapsed">
                                <small>Danh mục sản phẩm</small>
                            </li>
                            <a href="#submenu1" data-toggle="collapse" aria-expanded="false"
                               class="list-group-item list-group-item-action flex-column align-items-start">
                                <div class="d-flex w-100 justify-content-start align-items-center">
                                    <span class="menu-collapsed">Thể loại</span>
                                    <span class="submenu-icon ml-auto"></span>
                                </div>
                            </a>
                            <%
                                Set<GroupBook> groups = GroupEntity.getAll();
                                request.setAttribute("groups", groups);
                            %>
                            <div id='submenu1' class="collapse sidebar-submenu">
                                <c:forEach items="${groups}" var="g">
                                    <a class="list-group-item list-group-item-action"
                                       href="/Zoe/Search?type=group&id_group=${g.id}">${g.name}</a>
                                </c:forEach>
                            </div>

                            <a href="#submenu2" data-toggle="collapse" aria-expanded="false"
                               class="list-group-item list-group-item-action flex-column align-items-start">
                                <div class="d-flex w-100 justify-content-start align-items-center">
                                    <span class="menu-collapsed">Nhà phát hành</span>
                                    <span class="submenu-icon ml-auto"></span>
                                </div>
                            </a>
                            <%
                                Set<Publication> pubs = PublicationEntities.getPublications();
                                request.setAttribute("pubs", pubs);
                            %>
                            <div id='submenu2' class="collapse sidebar-submenu">
                                <c:forEach items="${pubs}" var="p">
                                    <li><a class="list-group-item list-group-item-action"
                                           href="/Zoe/Search?type=pub&id_pub=${p.id}">${p.name}</a></li>
                                </c:forEach>
                            </div>

                            <a href="#submenu3" data-toggle="collapse" aria-expanded="false"
                               class="list-group-item list-group-item-action flex-column align-items-start">
                                <div class="d-flex w-100 justify-content-start align-items-center">
                                    <span class="menu-collapsed">Giá</span>
                                    <span class="submenu-icon ml-auto"></span>
                                </div>
                            </a>
                            <%
                                TypePrice.createType(10);
                                Collection<String> price = TypePrice.getAll();
                                request.setAttribute("price", price);
                                int idPrice = 0;
                            %>
                            <div id='submenu3' class="collapse sidebar-submenu">
                                <c:forEach items="${price}" var="pri">
                                    <c:choose>
                                        <c:when test="${fn:contains(theString, '?')}">
                                            <li><a class="list-group-item list-group-item-action"
                                                   href="${uri_query}&id_price=${idPrice=idPrice+1}">${pri}</a></li>
                                        </c:when>
                                        <c:otherwise>
                                            <li><a class="list-group-item list-group-item-action"
                                                   href="#">${pri}</a></li>
                                        </c:otherwise>
                                    </c:choose>
                                </c:forEach>
                            </div>
                        </ul>
                    </div>

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
                <div class="section-title-5 mb-10">
                    <h2>Sách</h2>
                </div>
                <div class="toolbar mb-15">
                    <div class="shop-tab">
                        <div class="tab-3">
                            <ul class="nav">
                                <li><a href="#th" data-toggle="tab" class="active"><i class="fa fa-th-large"></i>lưới</a></li>
                                <li><a class="" href="#list" data-toggle="tab"><i class="fa fa-bars"></i>danh sách</a>
                                </li>
                            </ul>
                        </div>
                    </div>
                    <%
                        TypeOrder.getInstance();
                        Collection<String> order = TypeOrder.getAll();
                        request.setAttribute("order", order);
                        int id_o = 0;
                        Set<Integer> list_page = TypeOrder.getList();
                        request.setAttribute("list_page", list_page);
                    %>

                    <div class="options" id="option1">
                        <div class="title">
                            Số lượng
                        </div>
                        <ul class="sub_menu">
                            <c:forEach items="${list_page}" var="l">
                                <c:choose>
                                    <c:when test="${fn:contains(theString, '?')}">
                                        <li><a href="${uri_query}&bPerPage=${l}">${l} sản phẩm</a></li>
                                    </c:when>
                                    <c:otherwise>
                                        <li><a href="#">${l} sản phẩm</a></li>
                                    </c:otherwise>
                                </c:choose> </c:forEach>
                        </ul>
                    </div>
                    <div class="options" id="option2">
                        <div class="title">
                            Sắp xếp
                        </div>
                        <ul class="sub_menu">
                            <c:forEach items="${order}" var="o">
                                <c:choose>
                                    <c:when test="${fn:contains(theString, '?')}">
                                        <li><a href="${uri_query}&id_order=${id_o=id_o+1}">${o}</a></li>
                                    </c:when>
                                    <c:otherwise>
                                        <li><a href="#">${o}</a></li>
                                    </c:otherwise>
                                </c:choose>
                            </c:forEach>
                        </ul>
                    </div>
                </div>
                <div class="tab-content">

                    <c:if test="${not empty no_found}">
                        <div class="no_found">${no_found}</div>
                    </c:if>
                    
                    <div class="tab-pane fade active show" id="th">
                        <div class="row">
                            <c:forEach items="${books}" var="b">
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
                                            <c:if test = "${b.getIntDiscount()>0}">
                                                <div class="product-flag">
                                                    <ul>
                                                        <li><span class="discount-percentage">-${b.getIntDiscount()}%</span></li>
                                                    </ul>
                                                </div>
                                            </c:if>

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
                                                    <li>${b.getDecimalFormatPriceSale()}đ</li>
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

                    <div class="tab-pane fade " id="list">
                        <!-- single-shop-start -->
                        <c:forEach items="${books}" var="b">
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
                                                            <i class="fa fa-external-link"></i></a></li>
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
                <nav aria-label="Navigation for books">
                    <ul class="pagination">
                        <c:forEach begin="1" end="${numPage}" var="i">
                            <c:choose>
                                <c:when test="${currentPage eq i}">
                                    <li class="page-item active"><a href="#" class="page-link">
                                            ${i} <span class="sr-only">(current)</span></a>
                                    </li>
                                </c:when>
                                <c:otherwise>
                                    <c:choose>
                                        <c:when test="${fn:contains(theString, '?')}">
                                            <li class="page-item"><a class="page-link"
                                                                     href="${uri_query}&cPage=${i}">${i}</a></li>
                                        </c:when>
                                        <c:otherwise>
                                            <li><a href="#">${o}</a></li>
                                        </c:otherwise>
                                    </c:choose>
                                </c:otherwise>
                            </c:choose>
                        </c:forEach>
                    </ul>
                </nav>
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

</body>

</html>