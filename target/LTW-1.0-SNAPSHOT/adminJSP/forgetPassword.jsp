<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html id="extr-page">
<head>
<title>forgetPassword.admin.Zoe</title>
<!-- start add link css -->
<%@ include file="head.jsp"%>
<!-- end add link css -->
</head>

<body class="animated fadeInDown desktop-detected">
	<!-- start	main panel -->
	<header id="header">
		<div id="logo-group">
			<span id="logo"> <img
				src="Areas/Admin/Images/logo-runtime.png" alt="WebOnline">
			</span>
		</div>
	</header>

	<form action="/Admin/Account/ForgetPassword" method="post">
		<div id="main" role="main">
			<!-- MAIN CONTENT -->
			<div id="content" class="container">
				<div class="row">
					<div
						class="col-xs-12 col-sm-12 col-md-5 col-lg-4 col-md-offset-3 col-lg-offset-4">
						<div class="well no-padding">
							<div id="login-form" class="smart-form client-form">
								<header> Quên mật khẩu </header>
								<fieldset>
									<section>
										<label class="label">Nhập địa chỉ email</label> <label
											class="input"> <i class="icon-append fa fa-envelope"></i>
											<input type="email" name="Email" id="txtEmail"> <b
											class="tooltip tooltip-top-right"><i
												class="fa fa-envelope txt-color-teal"></i> Nhập địa chỉ mail
												để lấy lại mật khẩu</b>
										</label>
									</section>
									<div class="section">
										<label class="note"> <a href="login.jsp">Quay
												lại đăng nhập</a>
										</label>
									</div>
								</fieldset>
								<footer>
									<button type="button" class="btn btn-primary"
										id="btnForgetPassword">
										<i class="fa fa-refresh"></i> Gửi email
									</button>
								</footer>
							</div>
						</div>
					</div>
				</div>
			</div>
		</div>
	</form>
	<!-- end main panel -->
</body>
</html>