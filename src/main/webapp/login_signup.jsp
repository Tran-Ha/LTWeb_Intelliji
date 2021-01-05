<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib prefix ="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix = "fn" uri = "http://java.sun.com/jsp/jstl/functions" %>
<!doctype html>
<html class="no-js" lang="en">

<head>
    <title>Đăng nhập - Đăng kí</title>
    <jsp:include page="head.jsp"/>
</head>

<body class="login">
<!-- Add your site or application content here -->
<!-- header-area-start -->
<header>
    <%@ include file="header.jsp"%>
</header>
<!-- header-area-end -->

<!-- breadcrumbs-area-start -->
<div class="breadcrumbs-area mb-70">
    <div class="container">
        <div class="row">
            <div class="col-lg-12">
                <div class="breadcrumbs-menu">
                    <ul>
                        <li><a href="#">Trang chủ</a></li>
                        <li><a href="#" class="active">Đăng nhập</a></li>
                    </ul>
                </div>
            </div>
        </div>
    </div>
</div>
<!-- breadcrumbs-area-end -->

<!-- user-login-area-start -->
<div class="user-login-area mb-70">
    <div class="container">
        <div class="offset-lg-3 col-lg-6 col-md-12 col-12">
            <div class="form_list">

                <ul class="tab-group">

                    <li class="tab active"><a href="#login">
                        <h2>Đăng nhập</h2>
                    </a></li>

                    <li class="tab"><a href="#signup">
                        <h2>Đăng kí</h2>
                    </a></li>

                </ul>

                <form method="post" action="login" id="login" style="display: block;" >
                    <%
                        String notification = (String) request.getAttribute("notification");
                        if (notification == null) {
                            notification = "";
                        } else {
                            notification = "<p style='text-align: center; color:red'>* " + notification +"</p>";
                        }
                    %>
                    <div class="form-group">
                        <%= notification %>
                        <input type="mail" name="email" id="username" class=" form-control"
                               placeholder="Nhập email">
                        <p id="username-error"></p>
                    </div>
                    <div class="form-group">
                        <input type="password" name="password" id="password" class=" form-control"
                               placeholder="Mật khẩu">
                        <p id="password-error"></p>
                    </div>
                    <div class="user-foot text-center">
                        <div class="single-login">
                            <input id="ckb1" type="checkbox" name="remember-me" value="forever">
                            <label for="ckb1">
                                Ghi nhớ
                            </label>
                        </div>
                        <div class="mb-15 " style="width: 100%;clear: both;">
                            <button type="submit" id="btnsignin" style="border: 1px solid #9f9e9e;">
                                Đăng nhập </button>
                        </div>
                        <div class="mb-15 ">
                            <a href="forgetPassword.jsp" class="clearfix" rel="nofollow" style="text-decoration: underline;">
                                <i class="fas fa-question-circle"></i>
                                Quên mật khẩu
                            </a>
                        </div>

                        <div class="mb-15 ">
                            <p class="clearfix" style="color: rgb(122, 122, 122);">Hoặc đăng nhập với</p>
                        </div>

                        <div class="loginFb mb-15 " rel="nofollow">
                            <a href="#"> <i class="fab fa-facebook-f"></i> Đăng nhập bằng facebook</a>
                        </div>

                        <div class="loginGg mb-15 " rel="nofollow">
                            <a href="#"><i class="fab fa-google-plus-g"></i> Đăng nhập Google</a>
                        </div>
                    </div>

                </form>

                <form method="post" action="signup" id="signup" style="display: none;">
                    <div class="form-group">
                        <input type="text" name="fullName" id="fullName"
                               class="form-control"
                               placeholder="Họ tên (*)"></div>
                    <div class="form-group">
                        <input type="text" name="phone" id="mobile"
                               class="form-control" placeholder="Điện thoại (*)">
                    </div>
                    <div class="form-group">
                        <input type="date" id="birthday" name="birthday" value="" placeholder="Ngày sinh"
                               class="form-control">
                    </div>
                    <div class="form-group">
                        <input type="email" name="email" id="email"
                               class="form-control" placeholder="Email (*)"></div>
                    <div class="form-group">
                        <select id="cityId" name="city" class="form-control" style="color: #495057 !important;">
                            <option value="">Tỉnh/Thành phố *</option>
                            <option value="254">Hà Nội</option>
                            <option value="255">Hồ Chí Minh</option>
                            <option value="256">An Giang</option>
                            <option value="257">Bà Rịa - Vũng Tàu</option>
                            <option value="258">Bắc Ninh</option>
                            <option value="259">Bắc Giang</option>
                            <option value="260">Bình Dương</option>
                            <option value="261">Bình Định</option>
                            <option value="262">Bình Phước</option>
                            <option value="263">Bình Thuận</option>
                            <option value="264">Bến Tre</option>
                            <option value="265">Bắc Cạn</option>
                            <option value="266">Cần Thơ</option>
                            <option value="267">Khánh Hòa</option>
                            <option value="268">Thừa Thiên Huế</option>
                            <option value="269">Lào Cai</option>
                            <option value="270">Quảng Ninh</option>
                            <option value="271">Đồng Nai</option>
                            <option value="272">Nam Định</option>
                            <option value="273">Cà Mau</option>
                            <option value="274">Cao Bằng</option>
                            <option value="275">Gia Lai</option>
                            <option value="276">Hà Giang</option>
                            <option value="277">Hà Nam</option>
                            <option value="278">Hà Tĩnh</option>
                            <option value="279">Hải Dương</option>
                            <option value="280">Hải Phòng</option>
                            <option value="281">Hòa Bình</option>
                            <option value="282">Hưng Yên</option>
                            <option value="283">Kiên Giang</option>
                            <option value="284">Kon Tum</option>
                            <option value="285">Lai Châu</option>
                            <option value="286">Lâm Đồng</option>
                            <option value="287">Lạng Sơn</option>
                            <option value="288">Long An</option>
                            <option value="289">Nghệ An</option>
                            <option value="290">Ninh Bình</option>
                            <option value="291">Ninh Thuận</option>
                            <option value="292">Phú Thọ</option>
                            <option value="293">Phú Yên</option>
                            <option value="294">Quảng Bình</option>
                            <option value="295">Quảng Nam</option>
                            <option value="296">Quảng Ngãi</option>
                            <option value="297">Quảng Trị</option>
                            <option value="298">Sóc Trăng</option>
                            <option value="299">Sơn La</option>
                            <option value="300">Tây Ninh</option>
                            <option value="301">Thái Bình</option>
                            <option value="302">Thái Nguyên</option>
                            <option value="303">Thanh Hóa</option>
                            <option value="304">Tiền Giang</option>
                            <option value="305">Trà Vinh</option>
                            <option value="306">Tuyên Quang</option>
                            <option value="307">Vĩnh Long</option>
                            <option value="308">Vĩnh Phúc</option>
                            <option value="309">Yên Bái</option>
                            <option value="310">Đắc Lắc</option>
                            <option value="311">Đồng Tháp</option>
                            <option value="312">Đà Nẵng</option>
                            <option value="313">Đắc Nông</option>
                            <option value="314">Hậu Giang</option>
                            <option value="315">Bạc Liêu</option>
                            <option value="316">Điện Biên</option>
                        </select></div>
                    <div class="form-group">
                        <input type="text" id="address" name="address" value=""
                               placeholder="Địa chỉ chi tiết  " class=" form-control input-sm">
                    </div>
                    <div class="form-group">
                        <input type="password" name="password" id="pwd" class=" form-control"
                               placeholder="Mật khẩu của bạn (*)">
                    </div>
                    <div class="form-group">
                        <input type="password" name="rePassword" id="rePassword"  class=" form-control"
                               placeholder="Nhập lại mật khẩu (*)">
                    </div>
                    <div class="form-group text-center">
                        <button type="submit"  style="border: 1px solid #9f9e9e;">
                            Đăng ký </button>
                    </div>
                    <div class="form-group d-none">
                        <i>Lưu ý: các trường dấu <span class="required">*</span> là bắt buộc phải nhập</i></div>
                </form>

            </div>

        </div>
    </div>
</div>
</body>
<!-- user-login-area-end -->

<!-- footer-area-start -->
<jsp:include page="footer.jsp"/>
<!-- footer-area-end -->

<!-- all js here -->
<%@ include file="script.jsp"%>

</html>