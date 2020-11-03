<%@ page language="java" contentType="text/html; charset=utf-8"
	pageEncoding="utf-8"%>
<!-- Tich hop jstl vao jsp -->
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>
<!DOCTYPE html>
<html lang="en">
<head>
<meta charset="utf-8">
<meta http-equiv="X-UA-Compatible" content="IE=edge">
<meta name="viewport" content="width=device-width, initial-scale=1">
<!-- The above 3 meta tags *must* come first in the head; any other head content must come *after* these tags -->

<title>WebMag HTML Template</title>

<%@ include file="/WEB-INF/views/layout/include.jsp"%>

<!-- HTML5 shim and Respond.js for IE8 support of HTML5 elements and media queries -->
<!-- WARNING: Respond.js doesn't work if you view the page via file:// -->
<!--[if lt IE 9]>
		  <script src="https://oss.maxcdn.com/html5shiv/3.7.3/html5shiv.min.js"></script>
		  <script src="https://oss.maxcdn.com/respond/1.4.2/respond.min.js"></script>
		<![endif]-->

</head>
<body>

	<!-- Header -->
	<header id="header">
		<%@ include file="/WEB-INF/views/layout/header.jsp"%>
	</header>
	<!-- /Header -->

	<!-- section -->
	<div class="section">
		<!-- container -->
		<div class="container">
			<!-- row -->
			<div class="row">
				<!-- post -->
				<c:forEach var="post" items="${post}" begin="0" end="1">
					<div class="col-md-6">
						<div class="post post-thumb">
							<a class="post-img" href="/blog-post/${post.title}"><img
								src="${post.image}" alt=""></a>
							<div class="post-body">
								<div class="post-meta">
									<a class="post-category cat-${post.category.id }"
										href="/category/${post.category.name}"><c:out
											value="${post.category.name}" /> </a> <span class="post-date">${post.createdDate }</span>
								</div>
								<h3 class="post-title">
									<a href="/blog-post/${post.title}">${post.title}</a>
								</h3>
							</div>
						</div>
					</div>
				</c:forEach>

				<!-- /post -->
			</div>
			<!-- /row -->

			<!-- row -->
			<div class="row">
				<div class="col-md-12">
					<div class="section-title">
						<h2>BÀI ĐĂNG GẦN ĐÂY</h2>
					</div>
				</div>

				<!-- post -->
				<c:forEach var="post" items="${post}" begin="0" end="5">
					<div class="col-md-4">
						<div class="post">
							<a class="post-img" href="/blog-post/${post.title}"><img
								src="${post.image}" alt=""></a>
							<div class="post-body">
								<div class="post-meta">
									<a class="post-category cat-${post.category.id}"
										href="/category/${post.category.name}">${post.category.name}</a>
									<span class="post-date">${post.createdDate}</span>
								</div>
								<h3 class="post-title">
									<a href="/blog-post/${post.title}">${post.title}</a>
								</h3>
							</div>
						</div>
					</div>
				</c:forEach>
				<!-- /post -->
			</div>
			<!-- /row -->

			<!-- section -->
			<div class="section section-grey">
				<!-- container -->
				<div class="container">
					<!-- row -->
					<div class="row">
						<div class="col-md-12">
							<div class="section-title text-center">
								<h2>CÁC BÀI ĐĂNG</h2>
							</div>
						</div>

						<c:forEach var="post" items="${post}" begin="0" end="2">
							<!-- post -->
							<div class="col-md-4">
								<div class="post">
									<a class="post-img" href="/blog-post/${post.title}"><img
										src="${post.image}" alt=""></a>
									<div class="post-body">
										<div class="post-meta">
											<a class="post-category cat-${post.category.id}"
												href="/category/${post.category.name}">${post.category.name}</a>
											<span class="post-date">${post.createdDate}</span>
										</div>
										<h3 class="post-title">
											<a href="/blog-post/${post.title}">${post.title}</a>
										</h3>
									</div>
								</div>
							</div>
							<!-- /post -->
						</c:forEach>

					</div>
					<!-- /row -->
				</div>
				<!-- /container -->
			</div>
			<!-- /section -->

			<!-- section -->
			<div class="section">
				<!-- container -->
				<div class="container">
					<!-- row -->
					<div class="row">
						<div class="col-md-8">
							<div class="row">
								<div class="col-md-12">
									<div class="section-title">
										<h2>TIN TỨC XEM NHIỀU NHẤT</h2>
									</div>
								</div>
								
								<c:forEach var="mostPost" items="${mostPost}" begin="0" end="4">
									<!-- post -->
									<div class="col-md-12">
										<div class="post post-row">
											<a class="post-img" href="/blog-post/${mostPost.title}"><img
												src="${pageContext.request.contextPath}/img/post-4.jpg"
												alt=""></a>
											<div class="post-body">
												<div class="post-meta">
													<a class="post-category cat-${mostPost.category.id}"
														href="/category/${mostPost.category.name}">${mostPost.category.name}</a>
													<span class="post-date">${mostPost.createdDate}</span>
												</div>
												<h3 class="post-title">
													<a href="/blog-post/${mostPost.title}">${mostPost.title}</a>
												</h3>
												<p>${mostPost.description}</p>
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
							<!-- ad -->
							<div class="aside-widget text-center">
								<a href="#" style="display: inline-block; margin: auto;"> <img
									class="img-responsive"
									src="${pageContext.request.contextPath}/img/ad-1.jpg" alt="">
								</a>
							</div>
							<!-- /ad -->

							<!-- catagories -->
							<%@ include file="/WEB-INF/views/layout/categories.jsp"%>
							<!-- /catagories -->

						</div>
					</div>
					<!-- /row -->
				</div>
				<!-- /container -->
			</div>
			<!-- /section -->

			<!-- Footer -->
			<%@ include file="/WEB-INF/views/layout/footer.jsp"%>
			<!-- /Footer -->

			<!-- jQuery Plugins -->
			<script src="js/jquery.min.js"></script>
			<script src="js/bootstrap.min.js"></script>
			<script src="js/main.js"></script>
</body>
</html>
