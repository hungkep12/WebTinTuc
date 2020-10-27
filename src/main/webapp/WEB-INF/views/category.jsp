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
							<li>JavaScript</li>
						</ul>
						<h1>JavaScript</h1>
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

						<!-- post -->
						<div class="col-md-6">
							<div class="post">
								<a class="post-img" href="blog-post.html"><img
									src="${pageContext.request.contextPath}/img/post-4.jpg" alt=""></a>
								<div class="post-body">
									<div class="post-meta">
										<a class="post-category cat-2" href="#">JavaScript</a> <span
											class="post-date">March 27, 2018</span>
									</div>
									<h3 class="post-title">
										<a href="blog-post.html">Chrome Extension Protects Against
											JavaScript-Based CPU Side-Channel Attacks</a>
									</h3>
								</div>
							</div>
						</div>
						<!-- /post -->

						<!-- post -->
						<div class="col-md-6">
							<div class="post">
								<a class="post-img" href="blog-post.html"><img
									src="${pageContext.request.contextPath}/img/post-6.jpg" alt=""></a>
								<div class="post-body">
									<div class="post-meta">
										<a class="post-category cat-2" href="#">JavaScript</a> <span
											class="post-date">March 27, 2018</span>
									</div>
									<h3 class="post-title">
										<a href="blog-post.html">Why Node.js Is The Coolest Kid On
											The Backend Development Block!</a>
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

						<!-- post -->
						<div class="col-md-12">
							<div class="post post-row">
								<a class="post-img" href="blog-post.html"><img
									src="${pageContext.request.contextPath}/img/post-2.jpg" alt=""></a>
								<div class="post-body">
									<div class="post-meta">
										<a class="post-category cat-2" href="#">JavaScript</a> <span
											class="post-date">March 27, 2018</span>
									</div>
									<h3 class="post-title">
										<a href="blog-post.html">Ask HN: Does Anybody Still Use
											JQuery?</a>
									</h3>
									<p>Lorem ipsum dolor sit amet, consectetur adipisicing
										elit, sed do eiusmod tempor incididunt ut labore et dolore
										magna aliqua. Ut enim ad minim veniam...</p>
								</div>
							</div>
						</div>
						<!-- /post -->

						<!-- post -->
						<div class="col-md-12">
							<div class="post post-row">
								<a class="post-img" href="blog-post.html"><img
									src="${pageContext.request.contextPath}/img/post-5.jpg" alt=""></a>
								<div class="post-body">
									<div class="post-meta">
										<a class="post-category cat-2" href="#">JavaScript</a> <span
											class="post-date">March 27, 2018</span>
									</div>
									<h3 class="post-title">
										<a href="blog-post.html">Microsoft’s TypeScript Fills A
											Long-standing Void In JavaScript</a>
									</h3>
									<p>Lorem ipsum dolor sit amet, consectetur adipisicing
										elit, sed do eiusmod tempor incididunt ut labore et dolore
										magna aliqua. Ut enim ad minim veniam...</p>
								</div>
							</div>
						</div>
						<!-- /post -->

						<!-- post -->
						<div class="col-md-12">
							<div class="post post-row">
								<a class="post-img" href="blog-post.html"><img
									src="${pageContext.request.contextPath}/img/post-3.jpg" alt=""></a>
								<div class="post-body">
									<div class="post-meta">
										<a class="post-category cat-2" href="#">JavaScript</a> <span
											class="post-date">March 27, 2018</span>
									</div>
									<h3 class="post-title">
										<a href="blog-post.html">Javascript : Prototype vs Class</a>
									</h3>
									<p>Lorem ipsum dolor sit amet, consectetur adipisicing
										elit, sed do eiusmod tempor incididunt ut labore et dolore
										magna aliqua. Ut enim ad minim veniam...</p>
								</div>
							</div>
						</div>
						<!-- /post -->

						<!-- post -->
						<div class="col-md-12">
							<div class="post post-row">
								<a class="post-img" href="blog-post.html"><img
									src="${pageContext.request.contextPath}/img/post-1.jpg" alt=""></a>
								<div class="post-body">
									<div class="post-meta">
										<a class="post-category cat-2" href="#">JavaScript</a> <span
											class="post-date">March 27, 2018</span>
									</div>
									<h3 class="post-title">
										<a href="blog-post.html">Why Node.js Is The Coolest Kid On
											The Backend Development Block!</a>
									</h3>
									<p>Lorem ipsum dolor sit amet, consectetur adipisicing
										elit, sed do eiusmod tempor incididunt ut labore et dolore
										magna aliqua. Ut enim ad minim veniam...</p>
								</div>
							</div>
						</div>
						<!-- /post -->

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
							class="img-responsive" src="${pageContext.request.contextPath}/img/ad-1.jpg" alt="">
						</a>
					</div>
					<!-- /ad -->

					<!-- post widget -->
					<div class="aside-widget">
						<div class="section-title">
							<h2>Most Read</h2>
						</div>

						<div class="post post-widget">
							<a class="post-img" href="blog-post.html"><img
								src="${pageContext.request.contextPath}/img/widget-1.jpg" alt=""></a>
							<div class="post-body">
								<h3 class="post-title">
									<a href="blog-post.html">Tell-A-Tool: Guide To Web Design
										And Development Tools</a>
								</h3>
							</div>
						</div>

						<div class="post post-widget">
							<a class="post-img" href="blog-post.html"><img
								src="${pageContext.request.contextPath}/img/widget-2.jpg" alt=""></a>
							<div class="post-body">
								<h3 class="post-title">
									<a href="blog-post.html">Pagedraw UI Builder Turns Your
										Website Design Mockup Into Code Automatically</a>
								</h3>
							</div>
						</div>

						<div class="post post-widget">
							<a class="post-img" href="blog-post.html"><img
								src="${pageContext.request.contextPath}/img/widget-3.jpg" alt=""></a>
							<div class="post-body">
								<h3 class="post-title">
									<a href="blog-post.html">Why Node.js Is The Coolest Kid On
										The Backend Development Block!</a>
								</h3>
							</div>
						</div>

						<div class="post post-widget">
							<a class="post-img" href="blog-post.html"><img
								src="${pageContext.request.contextPath}/img/widget-4.jpg" alt=""></a>
							<div class="post-body">
								<h3 class="post-title">
									<a href="blog-post.html">Tell-A-Tool: Guide To Web Design
										And Development Tools</a>
								</h3>
							</div>
						</div>
					</div>
					<!-- /post widget -->

					<!-- catagories -->
					<%@ include file="/WEB-INF/views/layout/categories.jsp" %>
					<!-- /catagories -->
					<!-- archive -->
					<div class="aside-widget">
						<div class="section-title">
							<h2>Archive</h2>
						</div>
						<div class="archive-widget">
							<ul>
								<li><a href="#">Jan 2018</a></li>
								<li><a href="#">Feb 2018</a></li>
								<li><a href="#">Mar 2018</a></li>
							</ul>
						</div>
					</div>
					<!-- /archive -->
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
