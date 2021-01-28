<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>

<header id="header">
	<div id="logo-group">
		<!-- PLACE YOUR LOGO HERE -->
		<span id="logo">
			<div class="text-center">
				<a href="index.html">
					<div class="logo-web" style="font-size: 30px;">Zoe</div>
				</a>
			</div>
		</span>
		<!-- END LOGO PLACEHOLDER -->
	</div>
	<!-- pulled right: nav area -->
	<div class="pull-right">
		<!-- #MOBILE -->
		<!-- Top menu profile link : this shows only when top menu is active -->
		<ul id="profile-img" class="header-dropdown-list hidden-xs padding-5">
			<li id="userButtonOnHeader" class=""><a href="#" target="_self"
				class="dropdown-toggle  no-margin avatar" data-toggle="dropdown"> <img
					src="images/user.png" alt="Zoe"
					class="img-circle"> <span>zoe</span> <i
					class="fa fa-caret-down"></i>
			</a>
				<ul class="dropdown-menu pull-right">
					<li><a href="changePassword.jsp"
						class="padding-10 padding-top-0 padding-bottom-0"><i
							class="fa fa-cog"></i> <strong>Đổi mật khẩu</strong></a></li>

					<li class="divider"></li>

					<li><a href="login.jsp"
						class="padding-10 padding-top-0 padding-bottom-0"
						data-action="userLogout"
						data-logout-msg="Bạn có muốn đăng xuất khỏi hệ thống không?"><i
							class="fa fa-sign-out fa-lg"></i> <strong>Đăng xuất</strong></a></li>
				</ul></li>
		</ul>
		<!-- multiple lang dropdown : find all flags in the flags page -->
		<ul class="header-dropdown-list hidden-xs">
			<li id="languageButtonOnHeader" class=""><a href="#" target="_self" class="dropdown-toggle"
				data-toggle="dropdown"> <img src="images/blank.gif"
					class="flag flag-vn" alt="Tiếng Việt"> <span> Tiếng Việt </span> <i class="fa fa-caret-down"></i>
			</a>
				<ul class="dropdown-menu pull-right">
					<li class="active"><a href="javascript:void(0);"><img
							src="images/blank.gif" class="flag flag-vn"
							alt="France"> Tiếng Việt</a></li>
					<li><a href="javascript:void(0);"><img
							src="images/blank.gif" class="flag flag-us"
							alt="United States"> English</a></li>
				</ul></li>
		</ul>
		<!-- end multiple lang -->
	</div>
	<!-- end pulled right: nav area -->
</header>
