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
				<a href="/index" class="logo"><img src="${pageContext.request.contextPath}/img/logo.png"
					alt=""></a>
			</div>
			<!-- /logo -->

			<!-- nav -->
			<ul class="nav-menu nav navbar-nav">
				<li><a href="/category">TIN TỨC</a></li>
				<li><a href="/category">PHỔ BIẾN</a></li>
				<c:forEach var="categories" items="${categories}">
					<li class="cat-${categories.id}"><a href="/category/${categories.name}">${categories.name}</a></li>
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
					<input class="search-input" type="text" name="search"
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
				<li><a href="/">Trang chủ</a></li>
				<li><a href="/about">Về chúng tôi</a></li>
				<li><a href="/contact">Liên hệ</a></li>
			</ul>
		</div>
		<!-- /nav -->

		<!-- widget posts -->
		<div class="section-row">
			<h3>BÀI VIẾT GẦN ĐÂY</h3>
			<div class="post post-widget">
				<a class="post-img" href="/blog-post"><img
					src="./img/widget-2.jpg" alt=""></a>
				<div class="post-body">
					<h3 class="post-title">
						<a href="/blog-post">Pagedraw UI Builder Turns Your
							Website Design Mockup Into Code Automatically</a>
					</h3>
				</div>
			</div>

			<div class="post post-widget">
				<a class="post-img" href="/blog-post"><img
					src="./img/widget-3.jpg" alt=""></a>
				<div class="post-body">
					<h3 class="post-title">
						<a href="/blog-post">Why Node.js Is The Coolest Kid On The
							Backend Development Block!</a>
					</h3>
				</div>
			</div>

			<div class="post post-widget">
				<a class="post-img" href="/blog-post"><img
					src="./img/widget-4.jpg" alt=""></a>
				<div class="post-body">
					<h3 class="post-title">
						<a href="/blog-post">Tell-A-Tool: Guide To Web Design And
							Development Tools</a>
					</h3>
				</div>
			</div>
		</div>
		<!-- /widget posts -->

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