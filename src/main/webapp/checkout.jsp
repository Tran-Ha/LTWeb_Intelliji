<%@ page import="vn.edu.nlu.utils.TypeCity" %>
<%@ page import="vn.edu.nlu.beans.Cart" %>
<%@ page import="vn.edu.nlu.beans.Book" %>
<%@ page import="java.util.Set" %>
<%@ page import="vn.edu.nlu.entities.PaymentEntity" %>
<%@ page import="vn.edu.nlu.beans.Payment" %>
<%@ page import="vn.edu.nlu.beans.Shipment" %>
<%@ page import="vn.edu.nlu.entities.ShipmentEntity" %>
<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions" %>
<%@ taglib prefix="s" uri="http://java.sun.com/jsp/jstl/core" %>

<!doctype html>
<html>
<head>
    <title>Thanh toán</title>
    <jsp:include page="head.jsp"/>
</head>
<body class="checkout">
<!--[if lt IE 8]>
<p class="browserupgrade">You are using an <strong>outdated</strong> browser. Please <a href="http://browsehappy.com/">upgrade
    your browser</a> to improve your experience.</p>
<![endif]-->

<!-- Add your site or application content here -->
<!-- header-area-start -->
<jsp:include page="header.jsp"/>
<!-- header-area-end -->
<!-- breadcrumbs-area-start -->
<div class="breadcrumbs-area mb-70">
    <div class="container">
        <div class="row">
            <div class="col-lg-12">
                <div class="breadcrumbs-menu">
                    <ul>
                        <li><a href="#">Trang chủ</a></li>
                        <li><a href="#" class="active">Thanh toán</a></li>
                    </ul>
                </div>
            </div>
        </div>
    </div>
</div>
<!-- breadcrumbs-area-end -->

<!-- checkout-area-start -->
<div class="checkout-area mb-70">
    <div class="container">
        <div class="row">
            <div class="col-12">
                <form action="/Zoe/CheckOut">
                    <div class="row">
                        <div class="col-lg-6 col-md-12 col-12">
                            <div class="checkbox-form">
                                <h3>Thông tin giao hàng</h3>
                                <div class="row">
                                    <div class=" col-lg-12">
                                        <div class="checkout-form-list">
                                            <label >Họ và tên <span class="required">*</span></label>
                                            <input type="text" placeholder="" value="${user.name}" readonly>
                                        </div>
                                    </div>

                                    <div class="col-lg-12 col-md-12 col-12">
                                        <div class="checkout-form-list">
                                            <label for="address">Địa chỉ <span class="required">*</span></label>
                                            <input id="address" name="address" type="text" value="${user.address}">
                                        </div>
                                    </div>
                                    <%
                                        TypeCity.getInstance();
                                        request.setAttribute("cities", TypeCity.getMap().values());
                                        int idCity = 0;
                                    %>
                                    <div class="col-lg-6 col-md-6 col-12">
                                        <div class="checkout-form-list">
                                            <label for="cityId">Tỉnh (Thành phố)<span class="required">*</span></label>
                                            <select id="cityId" name="cityId" class="form-control"
                                                    style="color: #495057 !important;">
                                                <option value="${TypeCity.getIndex(user.city)}" selected
                                                        hidden>${user.city}</option>
                                                <c:forEach items="${cities}" var="c">
                                                    <option value="${idCity=idCity+1}">${c}</option>
                                                </c:forEach>
                                            </select>
                                        </div>
                                    </div>

                                    <div class="col-lg-6 col-md-6 col-12">
                                        <div class="checkout-form-list">
                                            <label >Email <span class="required">*</span></label>
                                            <input type="email" placeholder="" value="${user.email} " readonly>
                                        </div>
                                    </div>
                                    <div class="col-lg-6 col-md-6 col-12">
                                        <div class="checkout-form-list">
                                            <label for="phone">Số điện thoại <span class="required">*</span></label>
                                            <input id="phone" name="phone" type="text" value="${user.phone}">
                                        </div>
                                    </div>
                                    <div class="col-lg-12 col-md-12 col-12">
                                        <div class="order-notes">
                                            <div class="checkout-form-list">
                                                <label>Ghi chú</label>
                                                <textarea name="comment" placeholder="Lưu ý cho shop hoặc đơn vị giao hàng, ..." rows="10" cols="30" id="checkout-mess"></textarea>
                                            </div>
                                        </div>
                                    </div>

                                </div>
                            </div>
                        </div>
                        <%
                            Cart cart= (Cart) session.getAttribute("cart");
                            Set<Book> books=cart.getBooks();
                            System.out.println(books.size());
                        %>
                        <div class="col-lg-6 col-md-12 col-12">
                            <div class="your-order">
                                <h3>Đơn hàng</h3>
                                <div class="your-order-table table-responsive">
                                    <table>
                                        <thead>
                                        <tr>
                                            <th class="product-name">Sản phẩm</th>
                                            <th class="product-total">Thành tiền</th>
                                        </tr>
                                        </thead>
                                        <tbody>
                                        <c:if test="${cart.getTotalQuantity() > 0}">
                                            <c:forEach var="book" items="${cart.getBooks()}">
                                                <tr class="cart_item">
                                                    <td class="product-name">
                                                            ${book.getName()}<strong class="product-quantity">
                                                        × ${cart.getQuantityOfBook(book)}</strong>
                                                    </td>
                                                    <td class="product-total">
                                                        <span class="amount">${cart.getTotalPriceOfBook(book)}</span>
                                                    </td>
                                                </tr>
                                            </c:forEach>
                                        </c:if>
                                        </tbody>
                                        <tfoot>
                                        <tr class="cart-subtotal">
                                            <th>Tạm tính</th>
                                            <td><span class="amount">${cart.convertToMoney(cart.getTotalPrice())} đ</span></td>
                                        </tr>
                                        <tr class="shipping">
                                            <th>Phí giao hàng</th>
                                            <%
                                                Set<Shipment> ship = ShipmentEntity.getShipments();
                                                request.setAttribute("ship", ship);

                                            %>
                                            <td>
                                                <ul>
                                                    <c:forEach items="${ship}" var="s">
                                                        <c:choose>
                                                            <c:when test="${cart.getTotalPrice()>250000}">
                                                                <c:if test = "${s.id == 1}">
                                                                    <li>
                                                                        <input type="radio" name="fee_ship" id="fs${s.id}" value="${s.id}" checked>
                                                                        <label for="fsA${s.id}">
                                                                                ${s.name}: <span class="amount">${s.getFee(s.fee)}đ</span>
                                                                        </label>
                                                                    </li>
                                                                </c:if>
                                                                <c:if test = "${s.id != 1}">
                                                                    <li>
                                                                        <input type="radio" name="fee_ship" id="fs${s.id}" value="${s.id}" checked>
                                                                        <label for="fsA${s.id}">
                                                                                ${s.name}: <span class="amount">${s.getFee(s.fee)}đ</span>
                                                                        </label>
                                                                    </li>
                                                                </c:if>
                                                            </c:when>
                                                            <c:otherwise>
                                                                <c:if test = "${s.id != 1}">
                                                                    <li>
                                                                        <input type="radio" name="fee_ship" id="fs${s.id}" value="${s.id}" checked>
                                                                        <label for="fsA${s.id}">
                                                                                ${s.name}: <span class="amount">${s.getFee(s.fee)}đ</span>
                                                                        </label>
                                                                    </li>
                                                                </c:if>
                                                            </c:otherwise>
                                                        </c:choose>
                                                    </c:forEach>
                                                </ul>
                                            </td>
                                        </tr>
                                        <tr class="order-total">
                                            <th>Tổng đơn hàng</th>
                                            <td><strong><span class="amount">${cart.convertToMoney(cart.getTotalPriceAndShipFee())}</span></strong>
                                            </td>
                                        </tr>
                                        </tfoot>
                                    </table>
                                </div>
                                <%
                                    Set<Payment> pays = PaymentEntity.getPayments();
                                    request.setAttribute("pays", pays);

                                %>
                                <div class="payment-method">
                                    <div class="payment-accordion">
                                        <div class="panel panel-default">
                                            <p class="mtb-15" style="color: black;">Phương thức thanh toán</p>

                                            <c:forEach items="${pays}" var="pay">
                                                <c:choose>
                                                    <c:when test="${user.reliability > 0}">
                                                        <c:if test="${pay.id == 1}">
                                                            <div class="pay">
                                                                <input type="radio" name="payment" id="radio${pay.id}" value="${pay.id}"
                                                                       checked>
                                                                <label for="radio${pay.id}"><p>${pay.name}</p></label>
                                                            </div>
                                                        </c:if>
                                                        <c:if test="${pay.id != 1}">
                                                            <div class="pay">
                                                                <input type="radio" name="payment" id="radio${pay.id}" value="${pay.id}"
                                                                       checked>
                                                                <label for="radio${pay.id}"><p>${pay.name}</p></label>
                                                            </div>
                                                        </c:if>
                                                    </c:when>
                                                    <c:otherwise>
                                                        <c:if test = "${pay.id != 1}">
                                                            <li>
                                                                <div class="pay">
                                                                    <input type="radio" name="payment" id="radio${pay.id}" value="${pay.id}" checked>
                                                                    <label for="radio${pay.id}"><p>${pay.name}</p></label>
                                                                </div>
                                                            </li>
                                                        </c:if>
                                                    </c:otherwise>
                                                </c:choose>
                                            </c:forEach>
                                        </div>
                                    </div>
                                    <div class="order-button-payment">
                                        <input type="submit" value="Đặt hàng">
                                    </div>
                                </div>
                            </div>
                        </div>
                    </div>
                </form>
            </div>
        </div>
    </div>
</div>
<!-- checkout-area-end -->
<!-- footer-area-start -->
<!-- footer-area-start -->
<jsp:include page="footer.jsp"/>
<!-- footer-area-end -->

<%--js--%>
<jsp:include page="script.jsp"/>
</body>
</html>
