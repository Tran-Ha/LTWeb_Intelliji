<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html id="extr-page">
<head>
<title>login.admin.Zoe</title>
<!-- start add link css -->
<%@ include file="head.jsp"%>
<!-- end add link css -->
</head>
<body class="animated fadeInDown desktop-detected">
	<header id="header">
		<div id="logo-group">
			<span id="logo"> <img
				src="Areas/Admin/Images/logo-runtime.png" alt="WebOnline">
			</span>
		</div>
	</header>
	<form id="login" action="login" method="post">
		<div id="main" role="main">
			<!-- MAIN CONTENT -->
			<div id="content" class="container">
				<div class="row">
					<div
						class="col-xs-12 col-sm-12 col-md-5 col-lg-4 col-md-offset-3 col-lg-offset-4">
						<div class="well no-padding">
							<div id="login-form" class="smart-form client-form">
								<header>
									<i class="fa fa-user"></i> Đăng nhập vào hệ thống
								</header>

								<fieldset>
									<section>
										<label class="label">E-mail</label> <label class="input">
											<i class="icon-append fa fa-user"></i> <input type="text"
											name="Email" id="txtEmail"> <b
											class="tooltip tooltip-top-right"><i
												class="fa fa-user txt-color-teal"></i> Nhập địa chỉ email</b>
										</label>
									</section>

									<section>
										<label class="label">Mật khẩu</label> <label class="input">
											<i class="icon-append fa fa-lock"></i> <input type="password"
											name="Password" id="txtPassword"> <b
											class="tooltip tooltip-top-right"><i
												class="fa fa-lock txt-color-teal"></i> Nhập mật khẩu</b>
										</label>
										<div class="note">
											<a href="forgetPassword.jsp">Quên mật khẩu?</a>
										</div>
									</section>

									<section>
										<label class="checkbox"> <input data-val="true"
											data-val-required="The Ghi nhớ mật khẩu? field is required."
											id="Remember" name="Remember" type="checkbox" value="true"><input
											name="Remember" type="hidden" value="false"> <i></i>Duy
											trì đăng nhập
										</label>
									</section>
								</fieldset>

								<footer>
									<button type="submit" class="btn btn-primary" id="btnLogin">
										<i class="fa fa-sign-in"></i> Đăng nhập
									</button>
								</footer>
							</div>
						</div>
					</div>
				</div>
			</div>
		</div>
	</form>
</body>
</html>