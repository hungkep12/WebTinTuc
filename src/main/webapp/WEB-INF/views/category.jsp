<%@ page language="java" contentType="text/html; charset=utf-8"
	pageEncoding="utf-8"%>
<!-- Tich hop jstl vao jsp -->
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="utf-8">
<meta http-equiv="X-UA-Compatible" content="IE=edge">
<meta name="viewport" content="width=device-width, initial-scale=1">
<!-- The above 3 meta tags *must* come first in the head; any other head content must come *after* these tags -->

<title>WebMag HTML Template</title>

<%@ include file="/WEB-INF/views/layout/include.jsp"%>/>

<!-- HTML5 shim and Respond.js for IE8 support of HTML5 elements and media queries -->
<!-- WARNING: Respond.js doesn't work if you view the page via file:// -->
<!--[if lt IE 9]>
		  <script src="https://oss.maxcdn.com/html5shiv/3.7.3/html5shiv.min.js"></script>
		  <script src="https://oss.maxcdn.com/respond/1.4.2/respond.min.js"></script>
		<![endif]-->

</head>
<body>

	<!-- Header -->
	<header>
		<%@ include file="/WEB-INF/views/layout/header.jsp"%>
		<!-- Page Header -->
		<div class="page-header">
			<div class="container">
				<div class="row">
					<div class="col-md-10">
					<c:forEach var="categoryTitle" items="${categoryTitle}">
						<ul class="page-header-breadcrumb">
							<li><a href="/index">Home</a></li>
							<li>${categoryTitle.name}</li>
						</ul>
						<h1>${categoryTitle.name}</h1>
						</c:forEach>
					</div>
				</div>
			</div>
		</div>
		<!-- /Page Header -->
	</header>
	<!-- /Header -->

	<!-- section -->
	<div class="section">
		<!-- container -->
		<div class="container">
			<!-- row -->
			<div class="row">
				<div class="col-md-8">
					<div class="row">
						<!-- post -->
						<div class="col-md-12">
							<div class="post post-thumb">
								<a class="post-img" href="blog-post.html"><img
									src="${pageContext.request.contextPath}/img/post-1.jpg" alt=""></a>
								<div class="post-body">
									<div class="post-meta">
										<a class="post-category cat-2" href="#">JavaScript</a> <span
											class="post-date">March 27, 2018</span>
									</div>
									<h3 class="post-title">
										<a href="blog-post.html">Javascript : Prototype vs Class</a>
									</h3>
								</div>
							</div>
						</div>
						<!-- /post -->


						<div class="clearfix visible-md visible-lg"></div>

						<!-- ad -->
						<div class="col-md-12">
							<div class="section-row">
								<a href="#"> <img class="img-responsive center-block"
									src="${pageContext.request.contextPath}/img/ad-2.jpg" alt="">
								</a>
							</div>
						</div>
						<!-- ad -->
						
						<c:forEach var="post" items="${post}" begin ="0" end="4">
						<!-- post -->
					
						<div class="col-md-12">
							<div class="post post-row">
								<a class="post-img" href="/blog-post/${post.title}"><img
									src="${post.image}" alt=""></a>
								<div class="post-body">
									<div class="post-meta">
										<a class="post-category cat-${post.category.id}" href="#">${post.category.name}</a> <span
											class="post-date">${post.createdDate}</span>
									</div>
									<h3 class="post-title">
										<a href="/blog-post/${post.title}">${post.title}</a>
									</h3>
									<p>${post.details}</p>
								</div>
							</div>
						</div>
						<!-- /post -->
</c:forEach>
						<div class="col-md-12">
							<div class="section-row">
								<button class="primary-button center-block">Load More</button>
							</div>
						</div>
					</div>
				</div>

				<div class="col-md-4">
					

					<!-- post widget -->
					<div class="aside-widget">
						<div class="section-title">
							<h2>XEM NHIỀU NHẤT</h2>
						</div>
					<c:forEach var="mostPost" items="${mostPost}" begin ="0" end="3">
						<div class="post post-widget">
							<a class="post-img" href="/blog-post/${mostPost.title}"><img
								src="${mostPost.image}" alt=""></a>
							<div class="post-body">
								<h3 class="post-title">
									<a href="/blog-post/${mostPost.title}">${mostPost.title}</a>
								</h3>
							</div>
						</div>
					</c:forEach>
						
					</div>
					<!-- /post widget -->

					<!-- catagories -->
					<%@ include file="/WEB-INF/views/layout/categories.jsp" %>
					<!-- /catagories -->
					
				</div>
			</div>
			<!-- /row -->
		</div>
		<!-- /container -->
	</div>
	<!-- /section -->

	<!-- Footer -->
	<%@ include file="/WEB-INF/views/layout/footer.jsp" %>
	<!-- /Footer -->

	<!-- jQuery Plugins -->
	<script src="${pageContext.request.contextPath}/js/jquery.min.js"></script>
	<script src="${pageContext.request.contextPath}/js/bootstrap.min.js"></script>
	<script src="${pageContext.request.contextPath}/js/main.js"></script>

</body>
</html>
