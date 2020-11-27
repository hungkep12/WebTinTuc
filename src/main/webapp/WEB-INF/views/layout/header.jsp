<%@ page language="java" contentType="text/html; charset=utf-8"
	pageEncoding="utf-8"%>
<!-- Tich hop jstl vao jsp -->
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>

<!-- Nav -->
<div id="nav">
	<!-- Main Nav -->
	<div id="nav-fixed">
		<div class="container">
			<!-- logo -->
			<div class="nav-logo">
				<a href="/index" class="logo"><img
					src="${pageContext.request.contextPath}/img/logo.png" alt=""></a>
			</div>
			<!-- /logo -->

			<!-- nav -->
			<ul class="nav-menu nav navbar-nav">
				<li><a href="/category">TIN TỨC</a></li>
				<li><a href="/category">PHỔ BIẾN</a></li>
				<c:forEach var="categories" items="${categories}">
					<li class="cat-${categories.id}"><a
						href="/category/${categories.name}">${categories.name}</a></li>
				</c:forEach>
			</ul>
			<!-- /nav -->

			<!-- search & aside toggle -->
			<div class="nav-btns">
				<button class="aside-btn">
					<i class="fa fa-bars"></i>
				</button>
				<button class="search-btn">
					<i class="fa fa-search"></i>
				</button>
				<div class="search-form">
					<form action="/search" class="search-form">
						<input class="search-input" type="text" name="title"
							placeholder="Enter Your Search ...">
						<button class="search-close">
							<i class="fa fa-times"></i>
						</button>
					</form>
				</div>
			</div>
			<!-- /search & aside toggle -->
		</div>
	</div>
	<!-- /Main Nav -->

	<!-- Aside Nav -->
	<div id="nav-aside">
		<!-- nav -->
		<div class="section-row">
			<ul class="nav-aside-menu">

				<style type="text/css" media="screen">
.none_edit {
	display: none;
}

.block_edit {
	display: block;
}
</style>
				<%
					if (session.getAttribute("emailUser") != null) {
				%>
				<div class="section-row" style="display: block;">
					<h3>Thông tin người dùng</h3>
					<div class="post post-widget">
						<a class="post-img"
							href="/information-user/<%=session.getAttribute("idUser")%>"><img
							src="${pageContext.request.contextPath}/img/<%=session.getAttribute("imgUser")%>"
							alt="Người dùng không có ảnh"></a>
						<div class="post-body">
							<h4 class="">
								<a href="/information-user/<%=session.getAttribute("idUser")%>"><p>
									<%=session.getAttribute("nameUser")%><br> <span>
										Email: <%=session.getAttribute("emailUser")%></span></a>
									<!-- <button href="/edit-user" class="btn btn-sm btn-outline-primary ">Sửa</button>
							<button id="cancel" class="btn btn-sm btn-outline-primary none_edit">Huỷ</button> -->
									<a href="/edit-user/<%=session.getAttribute("idUser")%>">Sửa</a>
								</p>
							</h4>
						</div>
					</div>
				</div>
				<%
					}
				%>

				<%
					if (session.getAttribute("emailUser") == null) {
				%>
					<li><a href="/">Trang chủ</a></li>
					<li><a href="/about">Giới thiệu</a></li>
					<li><a href="/contact">Liên hệ</a></li>
					<li><a href="/login">Đăng nhập</a></li>
					<li><a href="/sign_up">Đăng kí</a></li>
				<%
					} else {
				%>
					<li><a href="/">Trang chủ</a></li>
					<li><a href="/about">Giới thiệu</a></li>
					<li><a href="/contact">Liên hệ</a></li>
					<li><a href="/logout">Đăng Xuất</a></li>
				<%
					}
				%>
			</ul>
		</div>
		<!-- /nav -->

		<!-- social links -->
		<div class="section-row">
			<h3>Follow us</h3>
			<ul class="nav-aside-social">
				<li><a href="#"><i class="fa fa-facebook"></i></a></li>
				<li><a href="#"><i class="fa fa-twitter"></i></a></li>
				<li><a href="#"><i class="fa fa-google-plus"></i></a></li>
				<li><a href="#"><i class="fa fa-pinterest"></i></a></li>
			</ul>
		</div>
		<!-- /social links -->

		<!-- aside nav close -->
		<button class="nav-aside-close">
			<i class="fa fa-times"></i>
		</button>
		<!-- /aside nav close -->
	</div>
	<!-- Aside Nav -->
</div>
<!-- /Nav -->