<%@page import="com.nhom8.entities.Post"%>
<%@page import="com.nhom8.entities.Comment"%>
<%@page import="com.nhom8.entities.Categories"%>
<%@page import="com.nhom8.controller.HomeController"%>
<%@page import="com.nhom8.controller.CommentController"%>

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

<%@ include file="/WEB-INF/views/layout/include.jsp"%>

</head>
<body>

	<!-- Header -->
	<header id="header">
		<!-- Nav -->
		<%@ include file="/WEB-INF/views/layout/header.jsp"%>
		<!-- /Nav -->

		<!-- Page Header -->
		<c:forEach var="post" items="${post}">
			<div id="post-header" class="page-header">
				<div class="background-img"
					style="background-image: url('${pageContext.request.contextPath}/img/post-page.jpg');"></div>
				<div class="container">
					<div class="row">
						<div class="col-md-10">
							<div class="post-meta">
								<a class="post-category cat-${post.category.id}"
									href="/category/${post.category.name}">${post.category.name}</a>
								<span class="post-date">${post.createdDate}</span>
							</div>
							<h1>${post.title}</h1>
						</div>
					</div>
				</div>
			</div>
		</c:forEach>
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
					<c:forEach var="post" items="${post}">
						<div class="section-row sticky-container">
							<div class="main-post">
								<h3>${post.title}</h3>
								<p>${post.description}</p>
								<figure class="figure-img">
									<img class="img-responsive"
										src="${post.image}" alt="">
									<figcaption>So Lorem Ipsum is bad (not
										necessarily)</figcaption>
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
					</c:forEach>
					<!-- ad -->
					<div class="section-row text-center">
						<a href="#" style="display: inline-block; margin: auto;"> <img
							class="img-responsive"
							src="${pageContext.request.contextPath}/img/ad-2.jpg" alt="">
						</a>
					</div>
					<!-- ad -->

					<!-- author -->
					<!-- reply -->
					<div class="section-row">
						<div class="section-title">
							<h2>Leave a reply</h2>
							<p>your email address will not be published. required fields
								are marked *</p>
						</div>
						<c:forEach var="post" items="${post}">
							<form class="post-reply"
								action="/blog-post/addComment/${post.id}-${post.title}" method="post"
								modelAttribute="comment">
				
								<div class="row">
									<hidden name=""> <!-- <div class="col-md-4">
										<div class="form-group">
											<span>Name *</span>
											<input class="input" type="text" name="name">
										</div>
									</div>
									<div class="col-md-4">
										<div class="form-group">
											<span>Email *</span>
											<input class="input" type="email" name="email">
										</div>
									</div>
									<div class="col-md-4">
										<div class="form-group">
											<span>Website</span>
											<input class="input" type="text" name="website">
										</div>
									</div> -->
									<div class="col-md-12">
										<div class="form-group">
											<textarea class="input" name="content" placeholder="Message"></textarea>
										</div>
										<button class="primary-button">Submit</button>
									</div>
								</div>

							</form>
						</c:forEach>
					</div>
					<!-- comments -->
					<div class="section-row">

						<c:forEach var="post" items="${post}">

							<div class="post-comments">
								<!-- comment -->
								<div class="media">
									<div class="media-left">
										<img class="media-object"
											src="${pageContext.request.contextPath}/img/avatar.png"
											alt="">
									</div>
									<div class="media-body">
										<div class="media-heading">
											<h4>name</h4>
											<span class="time">{post.comment.dateTime}</span> <a href="#" class="reply">Reply</a>
										</div>
										<p>{post.comment.content}</p>
									</div>
								</div>

								<!-- /comment -->
							</div>
						</c:forEach>
					</div>
					<!-- /comments -->
					<!-- /reply -->
				</div>
				<!-- /author -->
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

						<%@ include file="/WEB-INF/views/layout/mostPost.jsp"%>
					</div>
					<!-- /post widget -->

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
	<%@include file="/WEB-INF/views/layout/footer.jsp"%>
	<!-- /Footer -->

	<!-- jQuery Plugins -->
	<script src="${pageContext.request.contextPath}/js/jquery.min.js"></script>
	<script src="${pageContext.request.contextPath}/js/bootstrap.min.js"></script>
	<script src="${pageContext.request.contextPath}/js/main.js"></script>

</body>
</html>
