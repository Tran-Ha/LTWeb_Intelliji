<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html class="smart-style-1">

<head>
	<title>homeJSP.admin.Zoe</title>
	<!-- start add link css -->
	<%@ include file="head.jsp"%>
	<!-- end add link css -->
</head>

<body class="fixed-header fixed-navigation smart-style-1 desktop-detected ng-scope">
	<!-- 	start header -->
	<%@ include file="header.jsp"%>
	<!-- 	end header -->
	<!-- 	start left navigation -->
	<%@ include file="navigation.jsp"%>
	<!-- 	end left navigation -->
	<!-- start	main panel -->
	<div data-ng-view="" class="ng-scope">
		<div id="main" role="main" class="ng-scope">
			<!-- RIBBON -->
			<div id="ribbon">
				<!-- breadcrumb -->
				<ol class="breadcrumb">
					<li>Home</li>
					<li>Tổng quan</li>
				</ol>
				<!-- end breadcrumb -->
			</div>
			<!-- END RIBBON -->
			<!-- MAIN CONTENT -->
			<div id="content">
				<div class="row">
					<div class="col-md-12">
						<div class="well">
							<div class="text-center">
								<h1>
									Chào mừng bạn đến với Zoe, <span>zoe</span>
								</h1>
								<img src="images/macbook.webp">
							</div>
						</div>
					</div>
				</div>
			</div>
			<!-- END MAIN CONTENT -->
		</div>
	</div>
	<!-- end main panel -->
	<!-- start footer -->
	<%@ include file="footer.jsp"%>
	<!-- end footer -->
	<!-- start add script -->
	<%@ include file="scripts.jsp"%>
	<!-- end add script -->
</body>
</html>