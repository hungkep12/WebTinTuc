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
	</header>
	<!-- Header -->
	
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
									<h2>KẾT QUẢ TÌM KIẾM</h2>
								</div>
							</div>
							<c:forEach var="postSearched" items="${postSearched}">
							<!-- post -->
							<div class="col-md-12">
								<div class="post post-row">
									<a class="post-img" href="/blog-post/${postSearched.title}"><img src="${postSearched.image}" alt=""></a>
									<div class="post-body">
										<div class="post-meta">
											<a class="post-category cat-${postSearched.category.id}" href="/category/${postSearched.category.name}">${postSearched.category.name}</a>
											<span class="post-date">${postSearched.createdDate}</span>
										</div>
										<h3 class="post-title"><a href="/blog-post/${postSearched.title}">${postSearched.title}</a></h3>
										<p>${postSearched.description}</p>
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
							<a href="#" style="display: inline-block;margin: auto;">
								<img class="img-responsive" src="${pageContext.request.contextPath}/img/ad-1.jpg" alt="">
							</a>
						</div>
						<!-- /ad -->
						
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
	<%@ include file="/WEB-INF/views/layout/footer.jsp"%>
	<!-- /Footer -->
	<!-- jQuery Plugins -->
	<script src="${pageContext.request.contextPath}/js/jquery.min.js"></script>
	<script src="${pageContext.request.contextPath}/js/bootstrap.min.js"></script>
	<script src="${pageContext.request.contextPath}/js/main.js"></script>

</body>
</html>