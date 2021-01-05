<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<!doctype html>
<html class="no-js" lang="en">

<head>
    <title>Quên mật khẩu</title>
    <%@ include file="head.jsp"%>
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
        <form action="forgetPassword" method="post">
            <div class="row">
                <div class="offset-lg-3 col-lg-6 col-md-12 col-12">
                    <div class="content-login">
                        <div class="login-form">
                            <%
                                String notification = (String) request.getAttribute("notification");
                                String email = (String) request.getAttribute("email");
                                if (notification == null) {
                                    notification = "";
                                } else {
                                    notification = "<p style='color:red'>* " + notification + "</p>";
                                }
                                if (email == null) {
                                    email = "";
                                }
                            %>
                            <div class="login-title text-center mb-30" style="color: black;">
                                <h2 style="color: black;">Quên mật khẩu</h2>
                                <br>
                                <p>Vui lòng cung cấp email hoặc số điện thoại đăng nhập để lấy lại mật khẩu.</p>
                                <%= notification %>
                            </div>
                            <div class="single-login" style="border: 1px solid chocolate; border-radius: 2px;">
                                <%= "<input type=\"email\" name=\"email\" value=\"" + email +"\" required placeholder=\"Nhập email đã dùng để đăng kí tài khoản Zoe\">" %>
                            </div>
                            <div class="single-login single-login-btn clear text-center">
                                <button type="submit" class="btn btn-warning" style="width:100%">
                                    Lấy lại mật khẩu
                                </button>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </form>
    </div>
</div>
<!-- user-login-area-end -->

<!-- footer-area-start -->
<%@ include file="footer.jsp"%>
<!-- footer-area-end -->

<!-- all js here -->
<%@ include file="script.jsp"%>

</body>

</html>