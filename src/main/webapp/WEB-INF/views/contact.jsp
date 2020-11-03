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
		<div class="page-header">
			<div class="container">
				<div class="row">
					<div class="col-md-10">
						<ul class="page-header-breadcrumb">
							<li><a href="/index">Home</a></li>
							<li>Contact</li>
						</ul>
						<h1>Contact</h1>
					</div>
				</div>
			</div>
		</div>
		<!-- /Page Header -->
	</header>
	<!-- /Header -->
	<!-- Thông báo tới người dùng -->
	<c:choose>
		<c:when test="${status == 'success' }">
			<div class="alert alert-success">
			<script LANGUAGE='JavaScript'>alert('Thành Công! Cảm ơn bạn đã góp ý.')</script>
				
			</div>
		</c:when>
		<c:when test="${status == 'faile' }">
			<div class="alert alert-danger">
			<script LANGUAGE='JavaScript'>alert('Thất Bại! Có một số lỗi xảy ra.')</script>
				
			</div>
		</c:when>
	</c:choose>
	<!-- section -->
	<div class="section">
		<!-- container -->
		<div class="container">
			<!-- row -->
			<div class="row">
				<div class="col-md-6">
					<div class="section-row">
						<h3>Contact Information</h3>
						<p>Lorem ipsum dolor sit amet, consectetur adipisicing elit,
							sed do eiusmod tempor incididunt ut labore et dolore magna
							aliqua. Ut enim ad minim veniam, quis nostrud exercitation
							ullamco laboris nisi ut aliquip ex ea commodo consequat.</p>
						<ul class="list-style">
							<li><p>
									<strong>Email:</strong> <a href="#">Webmag@email.com</a>
								</p></li>
							<li><p>
									<strong>Phone:</strong> 213-520-7376
								</p></li>
							<li><p>
									<strong>Address:</strong> 3770 Oliver Street
								</p></li>
						</ul>
					</div>
				</div>
				<div class="col-md-5 col-md-offset-1">
					<div class="section-row">
						<h3>Send A Message</h3>
						<form method="post" action="/contact-bind-data" modelAttribute="contact2">
							<div class="row">
								<div class="col-md-7">
									<div class="form-group">
										<span>Email</span> <input class="input" type="email"
											name="email">
									</div>
								</div>
								<div class="col-md-7">
									<div class="form-group">
										<span>fullName</span> <input class="input" type="text"
											name="fullName">
									</div>
								</div>
								<div class="col-md-12">
									<div class="form-group">
										<textarea class="input" name="content" placeholder="Message"></textarea>
									</div>
									<button class="primary-button">Submit</button>
								</div>
							</div>
						</form>
					</div>
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
	<script src="${pageContext.request.contextPath}/js/jquery.min.js"></script>
	<script src="${pageContext.request.contextPath}/js/bootstrap.min.js"></script>
	<script src="${pageContext.request.contextPath}/js/main.js"></script>

</body>
</html>
