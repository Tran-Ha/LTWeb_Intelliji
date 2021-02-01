<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ page import="vn.edu.nlu.beans.Menu" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>

<!-- header-top-area-start -->
<script>
    onload = function () {
        document.getElementById("searchButton").onclick = function () {
            document.getElementById("searchBox").submit()
        };
    }
</script>
<div class="header-top-area">
    <div class="container">
        <div class="row">
            <div class="col-lg-6 col-md-6 col-12">
            </div>
            <div class="col-lg-6 col-md-6 col-12">
                <div class="account-area text-right">
                    <ul>
                        <c:choose>
                            <c:when test="${user != null}">
                                <li><a>Xin chào, ${user.name}</a></li>
                                <li><a href="default?page=MyAccount">Tài khoản</a></li>
                                <li><a href="default?page=CheckOut">Thanh toán</a></li>
                                <li><a href="logout">Đăng xuất</a></li>
                            </c:when>
                            <c:otherwise>
                                <li><a href="default?page=login">Đăng nhập</a></li>
                            </c:otherwise>
                        </c:choose>
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
            <%--home-logo--%>
            <div class="col-lg-3 col-md-5 col-12 ">
                <div class="logo-area text-center logo-xs-mrg">
                    <a href="default?page=home">
                        <div class="logo-web">Zoe</div>
                        <span class="slogan">A book - A life</span>
                    </a>
                </div>
            </div>
            <%--search--%>
                <div class="col-lg-6 col-md-4 col-12">
                    <div class="header-search ptb-10">
                        <form id="searchBox" action="/Zoe/Search" method="GET">
                            <input id="enterSearch" type="text" name="keyword" placeholder="Tìm sản phẩm, danh mục, thương hiệu,..."/>
                            <input hidden value="key" name="type">
                            <%--                        <input type="submit" value="key" name="type">--%>

                            <a id="searchButton" href="javascript:{}"
                               onclick="document.getElementById('searchBox').submit();" style="color: white"><i class="fa fa-search"></i></a>
                        </form>
                    </div>
                </div>
                <script>
                    var input = document.getElementById("enterSearch");
                    input.addEventListener("keyup", function(event) {
                        if (event.keyCode === 13) {
                            event.preventDefault();
                            document.getElementById("searchButton").click();
                        }
                    });
                </script>            <%--cart--%>
            <div class="col-lg-3 col-md-3 col-12">
                <div class="my-cart ptb-10">
                    <ul>
                        <li><a href="#"><i class="fa fa-shopping-cart"></i>Giỏ hàng</a>
                            <span>${cart.getTotalQuantity() == null ? 0 : cart.getTotalQuantity()}</span>
                            <div class="mini-cart-sub">
                                <div class="cart-product">
                                    <c:choose>
                                        <c:when test="${user != null}">
                                            <c:choose>
                                                <c:when test="${cart.getTotalQuantity() > 0}">
                                                    <c:forEach var="book" items="${cart.getBooks()}" begin="0" end="2">
                                                        <div class="single-cart">
                                                            <div class="cart-img">
                                                                <a href="detailProduct?id=${book.id}"><img src="${book.getMainImg()}" alt="book"/></a>
                                                            </div>
                                                            <div class="cart-info">
                                                                <h5><a href="detailProduct?id=${book.id}">${book.getName()}</a></h5>
                                                                <p>${cart.getQuantityOfBook(book)} x ${book.getDecimalFormatPrice()}đ</p>
                                                            </div>
                                                        </div>
                                                    </c:forEach>
                                                </c:when>
                                                <c:otherwise>
                                                    <p style='text-align:center'>Bạn chưa có sản phẩm trong giỏ hàng!</p>
                                                </c:otherwise>
                                            </c:choose>
                                        </c:when>
                                        <c:otherwise>
                                            <c:out value="Hãy đăng nhập để thêm vào giỏ hàng!"/>
                                        </c:otherwise>
                                    </c:choose>

                                </div>
                                <div class="cart-totals">
                                    <h5>Thành tiền <span><c:out value="0d"/></span></h5>
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
<%
    Menu menu = Menu.getMenu();
    menu.loadMenuFromDB();
    request.setAttribute("menu", menu);
%>
<div class="main-menu-area d-md-none d-none d-lg-block sticky-header-1" id="header-sticky">
    <div class="container">
        <div class="row">
            <div class="col-lg-12">
                <div class="menu-area">
                    <nav>
                        <ul>
                            <li><a href="default?page=home">Trang chủ</a></li>

                            <c:forEach var="language" items="${menu.languages}">
                                <li><a href="search?lang=${language.name}">${language.name}<i class="fa fa-angle-down"></i></a>
                                    <div class="mega-menu" style="width: 800px">
                                        <c:forEach var="group" items="${menu.getGroupsByLanguage(language)}">
                                    <span>
                                        <a href="search?group=${group.name}" class="title">${group.name}</a>
                                        <c:forEach var="category" items="${menu.getCategoriesByGroup(group)}" begin="0" end="2">
                                            <a href="search?cate=${category.name}">${category.name}</a>
                                        </c:forEach>
                                    </span>
                                        </c:forEach>
                                    </div>
                                </li>
                            </c:forEach>

                            <li><a href="#">Blog<i class="fa fa-angle-down"></i></a>
                                <c:forEach var="blog" items="${menu.blogs}" begin="0" end="2">
                                <div class="sub-menu sub-menu-2">
                                    <ul>
                                        <li><a href="default?page=blog">${blog.title}</a></li>
                                    </ul>
                                </div>
                                </c:forEach>
                            </li>

                            <li><a href="default?page=contact">Liên hệ</a></li>
                        </ul>
                    </nav>
                </div>
            </div>
        </div>
    </div>
</div>
<!-- main-menu-area-end -->
