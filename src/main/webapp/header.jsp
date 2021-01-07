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
                                <li><a href="my-account.jsp">Tài khoản</a></li>
                                <li><a href="checkout.jsp">Thanh toán</a></li>
                                <li><a href="logout">Đăng xuất</a></li>
                            </c:when>
                            <c:otherwise>
                                <li><a href="login_signup.jsp">Đăng nhập</a></li>
                                <li><a href="my-account.jsp">Tài khoản</a></li>
                                <li><a href="checkout.jsp">Thanh toán</a></li>
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
                    <a href="home.jsp">
                        <div class="logo-web">Zoe</div>
                        <span class="slogan">A book - A life</span>
                    </a>
                </div>
            </div>
            <%--search--%>
            <div class="col-lg-6 col-md-4 col-12">
                <div class="header-search ptb-10">
                    <form id="searchBox" action="Login" method="GET">
                        <input type="text" name="key" placeholder="Tìm sản phẩm, danh mục, thương hiệu,..."/>
                        <a id="searchButton" style="color: white"><i class="fa fa-search"></i></a>
                    </form>
                </div>
            </div>
            <%--cart--%>
            <div class="col-lg-3 col-md-3 col-12">
                <div class="my-cart ptb-10">
                    <ul>
                        <li><a href="#"><i class="fa fa-shopping-cart"></i>Giỏ hàng</a>
                            <span>${cart.getTotalQuantity() == null ? 0 : cart.getTotalQuantity()}</span>
                            <div class="mini-cart-sub">
                                <div class="cart-product">
                                    <c:choose>
                                        <c:when test="${cart.getTotalQuantity() > 0}">
                                            <c:forEach var="book" items="${cart.getBooks()}" begin="0" end="2">
                                                <div class="single-cart">
                                                    <div class="cart-img">
                                                        <a href="bookDetail?id=${book.id}"><img src="${book.getMainImg()}" alt="book"/></a>
                                                    </div>
                                                    <div class="cart-info">
                                                        <h5><a href="bookDetail?id=${book.id}">${book.getName()}</a></h5>
                                                        <p>${cart.getQuantityOfBook(book)} x ${book.getDecimalFormatPrice()}</p>
                                                    </div>
                                                    <div class="cart-icon">
                                                        <a href="#"><i class="fa fa-remove"></i></a>
                                                    </div>
                                                </div>
                                            </c:forEach>
                                        </c:when>
                                        <c:otherwise>
                                            <p style='text-align:center'>Bạn chưa có sản phẩm trong giỏ hàng!</p>
                                        </c:otherwise>
                                    </c:choose>
                                </div>
                                <c:if test="${cart.getTotalQuantity() > 0}">
                                    <div class="cart-totals">
                                        <h5>Thành tiền <span>${cart.convertToMoney(cart.getTotalPrice())}đ</span></h5>
                                    </div>
                                </c:if>
                                <div class="cart-bottom">
                                    <a class="view-cart" href="cart.jsp">Xem giỏ hàng</a>
                                    <a href="checkout.jsp">Thanh toán</a>
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
                            <li><a href="home.jsp">Trang chủ</a></li>

                            <c:forEach var="language" items="${menu.languages}">
                                <li><a href="search?lang=">${language.name}<i class="fa fa-angle-down"></i></a>
                                    <div class="mega-menu">
                                        <c:forEach var="group" items="${menu.getGroupsByLanguage(language)}">
                                    <span>
                                        <a href="shop-list.html" class="title">${group.name}</a>
                                        <c:forEach var="category" items="${menu.getCategoriesByGroup(group)}" begin="0"
                                                   end="2">
                                            <a href="shop.html">${category.name}</a>
                                        </c:forEach>
                                    </span>
                                        </c:forEach>
                                    </div>
                                </li>
                            </c:forEach>

                            <li><a href="#">Blog<i class="fa fa-angle-down"></i></a>
                                <div class="sub-menu sub-menu-2">
                                    <ul>
                                        <c:forEach var="blog" items="${menu.blogs}" begin="0" end="2">
                                            <li><a href="about.html">${blog.title}</a></li>
                                        </c:forEach>
                                    </ul>
                                </div>
                            </li>

                            <li><a href="contact.html">Liên hệ</a></li>
                        </ul>
                    </nav>
                </div>
            </div>
        </div>
    </div>
</div>
<!-- main-menu-area-end -->
