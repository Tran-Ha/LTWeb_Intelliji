<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>

<!-- navigation -->
<aside id="left-panel">
	<!-- User info -->
	<div class="login-info hidden">
		<span>
			<!-- User image size is adjusted inside CSS, it should stay as it -->
			<a href="/" target="_blank"> <i class="fa fa-fw fa-desktop"></i>
				<span> Xem website </span> <i class="fa fa-external-link "></i>
			</a>
		</span>
	</div>
	<!-- end user info -->
	<!-- NAVIGATION : This navigation is also responsive-->
	<nav>
		<ul>
			<li class="open"><a href="default?page=home" title="Tổng quan"><i class="fa fa-fw fa-dashboard"></i> <span
						class="menu-item-parent">Tổng
						quan</span></a></li>

			<c:if test="${role.id == 1 || role.id == 2}">
				<li><a href="product.jsp"><i class="fa fa-fw fa-bar-chart-o"></i> <span class="menu-item-parent">Sản
						phẩm</span><b class="collapse-sign"><em class="fa fa-plus-square-o"></em></b></a>
					<ul style="display: none;">
						<li><a href="product.jsp">Danh sách sản phẩm</a></li>
						<li><a href="createProduct.jsp">Thêm mới sản phẩm</a></li>
					</ul>
				</li>
			</c:if>

			<c:if test="${role.id == 1 || role.id == 4}">
				<li><a href="news.jsp"><i class="fa fa-fw fa-table"></i> <span class="menu-item-parent">Tin
						tức</span><b class="collapse-sign"><em class="fa fa-plus-square-o"></em></b></a>
					<ul style="display: none;">
						<li><a href="news.jsp">Danh sách tin tức</a></li>
						<li><a href="createNews.jsp">Thêm mới tin tức</a></li>
					</ul>
				</li>
			</c:if>

			<c:if test="${role.id == 1 || role.id == 5}">
				<li><a href="order.jsp"><i class="fa fa-fw fa-pencil-square-o"></i> <span class="menu-item-parent">Đơn
						hàng</span><b class="collapse-sign"><em class="fa fa-plus-square-o"></em></b></a>
					<ul style="display: none;">
						<li><a href="order.jsp">Danh sách đơn hàng</a></li>
						<li><a href="createOrder.jsp">Thêm mới đơn hàng</a></li>
					</ul>
				</li>
			</c:if>

			<c:if test="${role.id == 1 || role.id == 7}">
				<li><a href="member.jsp"><i class="fa fa-fw fa-windows"></i>
					<span class="menu-item-parent">Khách hàng</span><b class="collapse-sign"><em
							class="fa fa-plus-square-o"></em></b></a>
					<ul style="display: none;">
						<li><a href="member.jsp">Danh sách khách hàng</a></li>
						<li><a href="createMember.jsp">Thêm mới khách hàng</a></li>
					</ul>
				</li>
			</c:if>
		</ul>
	</nav>
</aside>