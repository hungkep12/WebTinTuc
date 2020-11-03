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
		<c:forEach var="post" items="${post}" begin="0" end="0">
		<div id="post-header" class="page-header">
			<div class="background-img"
				style="background-image: url('${pageContext.request.contextPath}/img/post-page.jpg');"></div>
			<div class="container">
				<div class="row">
					<div class="col-md-10">
						<div class="post-meta">
							<a class="post-category cat-${post.category.id}" href="/category/${post.category.name}">${post.category.name}</a> <span
								class="post-date">${post.createdDate}</span>
						</div>
						<h1>${post.title}</h1>
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
				<!-- Post content -->
				<div class="col-md-8">
					<div class="section-row sticky-container">
						<div class="main-post">
							<h3>${post.title}</h3>
							<p>${post.description}</p>
							<figure class="figure-img">
								<img class="img-responsive"
									src="${post.image}" alt="">
								<figcaption>So Lorem Ipsum is bad (not necessarily)</figcaption>
							</figure>
							<p>${post.details}</p>
						</div>
						<div class="post-shares sticky-shares">
							<a href="#" class="share-facebook"><i class="fa fa-facebook"></i></a>
							<a href="#" class="share-twitter"><i class="fa fa-twitter"></i></a>
							<a href="#" class="share-google-plus"><i
								class="fa fa-google-plus"></i></a> <a href="#"
								class="share-pinterest"><i class="fa fa-pinterest"></i></a> <a
								href="#" class="share-linkedin"><i class="fa fa-linkedin"></i></a>
							<a href="#"><i class="fa fa-envelope"></i></a>
						</div>
					</div>

					<!-- ad -->
					<div class="section-row text-center">
						<a href="#" style="display: inline-block; margin: auto;"> <img
							class="img-responsive"
							src="${pageContext.request.contextPath}/img/ad-2.jpg" alt="">
						</a>
					</div>
					<!-- ad -->

					<!-- author -->
					<div class="section-row">
						<div class="post-author">
							<div class="media">
								<div class="media-left">
									<img class="media-object"
										src="${pageContext.request.contextPath}/img/author.png" alt="">
								</div>
								<div class="media-body">
									<div class="media-heading">
										<h3>John Doe</h3>
									</div>
									<p>Lorem ipsum dolor sit amet, consectetur adipisicing
										elit, sed do eiusmod tempor incididunt ut labore et dolore
										magna aliqua. Ut enim ad minim veniam, quis nostrud
										exercitation ullamco laboris nisi ut aliquip ex ea commodo
										consequat.</p>
									<ul class="author-social">
										<li><a href="#"><i class="fa fa-facebook"></i></a></li>
										<li><a href="#"><i class="fa fa-twitter"></i></a></li>
										<li><a href="#"><i class="fa fa-google-plus"></i></a></li>
										<li><a href="#"><i class="fa fa-instagram"></i></a></li>
									</ul>
								</div>
							</div>
						</div>
					</div>
					<!-- /author -->
</c:forEach>
					<!-- comments -->
					<div class="section-row">
						<div class="section-title">
							<h2>3 Comments</h2>
						</div>

						<div class="post-comments">
							<!-- comment -->
							<div class="media">
								<div class="media-left">
									<img class="media-object"
										src="${pageContext.request.contextPath}/img/avatar.png" alt="">
								</div>
								<div class="media-body">
									<div class="media-heading">
										<h4>John Doe</h4>
										<span class="time">March 27, 2018 at 8:00 am</span> <a
											href="#" class="reply">Reply</a>
									</div>
									<p>Lorem ipsum dolor sit amet, consectetur adipisicing
										elit, sed do eiusmod tempor incididunt ut labore et dolore
										magna aliqua. Ut enim ad minim veniam, quis nostrud
										exercitation ullamco laboris nisi ut aliquip ex ea commodo
										consequat.</p>

									<!-- comment -->
									<div class="media">
										<div class="media-left">
											<img class="media-object"
												src="${pageContext.request.contextPath}/img/avatar.png"
												alt="">
										</div>
										<div class="media-body">
											<div class="media-heading">
												<h4>John Doe</h4>
												<span class="time">March 27, 2018 at 8:00 am</span> <a
													href="#" class="reply">Reply</a>
											</div>
											<p>Lorem ipsum dolor sit amet, consectetur adipisicing
												elit, sed do eiusmod tempor incididunt ut labore et dolore
												magna aliqua. Ut enim ad minim veniam, quis nostrud
												exercitation ullamco laboris nisi ut aliquip ex ea commodo
												consequat.</p>
										</div>
									</div>
									<!-- /comment -->
								</div>
							</div>
							<!-- /comment -->

							<!-- comment -->
							<div class="media">
								<div class="media-left">
									<img class="media-object"
										src="${pageContext.request.contextPath}/img/avatar.png" alt="">
								</div>
								<div class="media-body">
									<div class="media-heading">
										<h4>John Doe</h4>
										<span class="time">March 27, 2018 at 8:00 am</span> <a
											href="#" class="reply">Reply</a>
									</div>
									<p>Lorem ipsum dolor sit amet, consectetur adipisicing
										elit, sed do eiusmod tempor incididunt ut labore et dolore
										magna aliqua. Ut enim ad minim veniam, quis nostrud
										exercitation ullamco laboris nisi ut aliquip ex ea commodo
										consequat.</p>
								</div>
							</div>
							<!-- /comment -->
						</div>
					</div>
					<!-- /comments -->

					<!-- reply -->
					<div class="section-row">
						<div class="section-title">
							<h2>Leave a reply</h2>
							<p>your email address will not be published. required fields
								are marked *</p>
						</div>
						<form class="post-reply">
							<div class="row">
								<div class="col-md-4">
									<div class="form-group">
										<span>Name *</span> <input class="input" type="text"
											name="name">
									</div>
								</div>
								<div class="col-md-4">
									<div class="form-group">
										<span>Email *</span> <input class="input" type="email"
											name="email">
									</div>
								</div>
								<div class="col-md-4">
									<div class="form-group">
										<span>Website</span> <input class="input" type="text"
											name="website">
									</div>
								</div>
								<div class="col-md-12">
									<div class="form-group">
										<textarea class="input" name="message" placeholder="Message"></textarea>
									</div>
									<button class="primary-button">Submit</button>
								</div>
							</div>
						</form>
					</div>
					<!-- /reply -->
				</div>
				<!-- /Post content -->

				<!-- aside -->
				<div class="col-md-4">
					<!-- ad -->
					<div class="aside-widget text-center">
						<a href="#" style="display: inline-block; margin: auto;"> <img
							class="img-responsive"
							src="${pageContext.request.contextPath}/img/ad-1.jpg" alt="">
						</a>
					</div>
					<!-- /ad -->
					<!-- post widget -->
						<div class="aside-widget">
							<div class="section-title">
								<h2>XEM NHIỀU NHẤT</h2>
							</div>

							<!-- most post -->
							<%@ include file="/WEB-INF/views/layout/mostPost.jsp" %>
							<!-- end most post -->
							
						<!-- /post widget -->
					</div>
					<!-- catagories -->
					<%@ include file="/WEB-INF/views/layout/categories.jsp"%>
					<!-- /catagories -->
				</div>
				<!-- /aside -->
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
	<script src="${pageContext.request.contextPath}/js/jquery.min.js"></script>
	<script src="${pageContext.request.contextPath}/js/bootstrap.min.js"></script>
	<script src="${pageContext.request.contextPath}/js/main.js"></script>

</body>
</html>
