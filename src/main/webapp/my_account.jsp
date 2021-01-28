
<%@ page import="java.util.Set" %>
<%@ page import="vn.edu.nlu.utils.TypeCity" %>
<%@ page import="vn.edu.nlu.entities.BillEntity" %>
<%@ page import="vn.edu.nlu.beans.Bill" %>
<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions" %>
<%@ taglib prefix="s" uri="http://java.sun.com/jsp/jstl/core" %>
<!doctype html>
<html>
<head>
    <title>Tài khoản</title>
    <jsp:include page="head.jsp"/>
</head>

<body class="shop">
<jsp:include page="header.jsp"/>
<!-- breadcrumbs-area-start -->
<div class="breadcrumbs-area mb-70">
    <div class="container">
        <div class="row">
            <div class="col-lg-12">
                <div class="breadcrumbs-menu">
                    <ul>
                        <li><a href="#">Trang chủ</a></li>
                        <li><a href="#" class="active">Tài khoản</a></li>
                    </ul>
                </div>
            </div>
        </div>
    </div>
</div>
<!-- breadcrumbs-area-end -->
<!-- entry-header-area-start -->
<div class="entry-header-area">
    <div class="container">
        <div class="row">
            <div class="col-lg-12">
                <div class="entry-header-title">
                    <h2>Tài khoản của bạn</h2>
                    <c:choose>

                    <c:when test="${msgAdd!=null}">
                        <p class="msg_my_Account">${msgAdd}</p>
                    </c:when>
                    <c:when test="${msgPwd!=null}">
                        <p class="msg_my_Account">${msgPwd}</p>
                    </c:when>
                    <c:otherwise>

                    </c:otherwise>
                    </c:choose>
                </div>
            </div>
        </div>
    </div>
</div>
<!-- entry-header-area-end -->
<!-- my account wrapper start -->
<div class="my-account-wrapper mb-70">
    <div class="container">
        <div class="section-bg-color">
            <div class="row">
                <div class="col-lg-12">
                    <!-- My Account Page Start -->
                    <div class="myaccount-page-wrapper">
                        <!-- My Account Tab Menu Start -->
                        <div class="row">
                            <div class="col-lg-3 col-md-4">
                                <div class="myaccount-tab-menu nav" role="tablist">
                                    <a href="#orders " data-toggle="tab" class="active"><i
                                            class="fas fa-cart-arrow-down"></i>
                                        Quản lí đơn hàng</a>

                                    <a href="#address-edit" data-toggle="tab" class=""><i class="fas fa-map-marker"></i>
                                        Địa chỉ</a>
                                    <a href="#account-info" data-toggle="tab" class=""><i class="far fa-user"></i>
                                        Thông tin tài khoản</a>
                                    <a href="login.html"><i class="fas fa-sign-out-alt"></i> Đăng xuất</a>
                                </div>
                            </div>
                            <!-- My Account Tab Menu End -->

                            <!-- My Account Tab Content Start -->
                            <div class="col-lg-9 col-md-8">
                                <div class="tab-content" id="myaccountContent">
                                    <%
                                        Set<Bill> bills = BillEntity.getAll();
                                        request.setAttribute("bills", bills);
                                    %>
                                    <!-- Single Tab Content Start -->
                                    <div class="tab-pane fade active show" id="orders" role="tabpanel">
                                        <div class="myaccount-content">
                                            <h5>Đơn hàng của bạn</h5>
                                            <div class="myaccount-table table-responsive text-center">
                                                <table class="table table-bordered">
                                                    <thead class="thead-light">
                                                    <tr>
                                                        <th>Đơn hàng</th>
                                                        <th>Ngày đặt</th>
                                                        <th>Trạng thái</th>
                                                        <th>Thành tiền</th>
                                                        <th></th>
                                                    </tr>
                                                    </thead>
                                                    <tbody>
                                                    <c:choose>
                                                        <c:when test="${bills.size()>0}">
                                                            <c:forEach items="${bills}" var="bill">
                                                                <tr>
                                                                    <td>${bill.id}</td>
                                                                    <td>${bill.createdDate}</td>
                                                                    <td>${TypeStatus.getMap().get(bill.status)}</td>
                                                                    <td>${BillEntity.getTotalPriceBill(bill.id)}</td>
                                                                    <td><a href="/DetailBill" class="btn btn-sqr">Xem
                                                                        chi tiết</a>
                                                                    </td>
                                                                </tr>
                                                            </c:forEach>
                                                        </c:when>
                                                        <c:otherwise>
                                                            <div>Bạn chưa có đơn hàng nào</div>
                                                        </c:otherwise>
                                                    </c:choose>
                                                    </tbody>
                                                </table>
                                            </div>
                                        </div>
                                    </div>
                                    <!-- Single Tab Content End -->


                                    <!-- Single Tab Content Start -->
                                    <div class="tab-pane fade" id="address-edit" role="tabpanel">
                                        <div class="myaccount-content">
                                            <h5>Địa chỉ thanh toán</h5>
                                            <div class="account-details-form">
                                                <form action="/Zoe/MyAccount" id="repair_address">
                                                    <div class="row">
                                                        <div class="col-lg-8">
                                                            <div class="single-input-item">
                                                                <label for="new_address" class="required">Địa
                                                                    chỉ</label>
                                                                <input type="text" id="new_address"
                                                                       placeholder="Địa chỉ" name="new_address">
                                                            </div>
                                                        </div>
                                                        <%
                                                            TypeCity.getInstance();
                                                            request.setAttribute("cities", TypeCity.getMap().values());
                                                            int idCity = 0;
                                                        %>
                                                        <div class="col-lg-4">
                                                            <div class="single-input-item">
                                                                <label for="new_cityID" class="required">Tỉnh / Thành
                                                                    phố</label>
                                                                <select id="new_cityID" name="new_cityId"
                                                                        class="form-control"
                                                                        style="color: #495057 !important;">
                                                                    <option value="${TypeCity.getIndex(user.city)}"
                                                                            selected
                                                                            hidden>${user.city}</option>
                                                                    <c:forEach items="${cities}" var="c">
                                                                        <option value="${idCity=idCity+1}">${c}</option>
                                                                    </c:forEach>
                                                                </select>
                                                            </div>
                                                        </div>
                                                    </div>

                                                    <br>
                                                    <a href="javascript:{}"
                                                       onclick="document.getElementById('repair_address').submit();"
                                                       class="btn btn-sqr"><i class="fa fa-edit"></i>
                                                        Thay đổi địa chỉ</a>
                                                </form>
                                            </div>
                                        </div>
                                    </div>
                                    <!-- Single Tab Content End -->

                                    <!-- Single Tab Content Start -->
                                    <div class="tab-pane fade" id="account-info" role="tabpanel">
                                        <div class="myaccount-content">
                                            <h5>Thông tin chi tiết</h5>
                                            <div class="account-details-form">
                                                <form action="/Zoe/MyAccount"  >
                                                    <div class="row">
                                                        <div class="col-lg-8">
                                                            <div class="single-input-item">
                                                                <label class="required">Họ tên</label>
                                                                <input type="text" value="${user.name}" readonly>
                                                            </div>
                                                        </div>
                                                        <div class="col-lg-4">
                                                            <div class="single-input-item">
                                                                <label>Ngày sinh</label>
                                                                <input type="date" readonly value="${user.birthday}">
                                                            </div>
                                                        </div>
                                                    </div>
                                                    <div class="row">
                                                        <div class="col-lg-8">
                                                            <div class="single-input-item">
                                                                <label>Địa chỉ</label>
                                                                <input type="text" readonly value="${user.address}">
                                                            </div>
                                                        </div>
                                                        <div class="col-lg-4">
                                                            <div class="single-input-item">
                                                                <label>Tỉnh / Thành phố</label>
                                                                <input type="text" readonly value="${user.city}">
                                                            </div>
                                                        </div>
                                                    </div>
                                                    <div class="row">
                                                        <div class="col-lg-12">
                                                            <div class="single-input-item">
                                                                <label>Email</label>
                                                                <input type="email" readonly value="${user.email}">
                                                            </div>
                                                        </div>
                                                    </div>

                                                    <fieldset>
                                                        <legend>Đổi mật khẩu</legend>
                                                        <div class="single-input-item">
                                                            <label for="current-pwd" class="required">Mật khẩu hiện
                                                                tại</label>
                                                            <input type="password" id="current-pwd" name="current_pwd"
                                                                   placeholder="Mật khẩu hiện tại">
                                                        </div>
                                                        <div class="row">
                                                            <div class="col-lg-6">
                                                                <div class="single-input-item">
                                                                    <label for="new-pwd" class="required">Mật khẩu
                                                                        mới</label>
                                                                    <input type="password" id="new-pwd" name="new_pwd"
                                                                           placeholder="Mật khẩu mới">
                                                                </div>
                                                            </div>
                                                            <div class="col-lg-6">
                                                                <div class="single-input-item">
                                                                    <label for="confirm-pwd" class="required">Xác nhận
                                                                        mật khẩu</label>
                                                                    <input type="password" id="confirm-pwd" name="confirm_pwd"
                                                                           placeholder="Xác nhận mật khẩu">
                                                                </div>
                                                            </div>
                                                        </div>
                                                    </fieldset>
                                                    <div class="single-input-item">
                                                        <button class="btn btn-sqr" type="submit" >Lưu thay đổi</button>
                                                    </div>
                                                </form>
                                            </div>
                                        </div>
                                    </div> <!-- Single Tab Content End -->
                                </div>
                            </div> <!-- My Account Tab Content End -->
                        </div>
                    </div> <!-- My Account Page End -->
                </div>
            </div>
        </div>
    </div>
</div>
<!-- my account wrapper end -->

<!-- footer-area-start -->
<jsp:include page="footer.jsp"/>
<!-- footer-area-end -->

<%--js--%>
<jsp:include page="script.jsp"/>
</body>
</html>