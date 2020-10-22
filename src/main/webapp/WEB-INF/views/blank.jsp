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
	<header>
		<%@ include file="/WEB-INF/views/layout/header.jsp"%>
		<!-- Page Header -->
		<div class="page-header">
			<div class="container">
				<div class="row">
					<div class="col-md-10">
						<ul class="page-header-breadcrumb">
							<li><a href="index.html">Home</a></li>
							<li>Regular page</li>
						</ul>
						<h1>Regular page</h1>
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
					<h1>H1 Typography heading.</h1>
					<p>Lorem ipsum dolor sit amet, consectetur adipisicing elit,
						sed do eiusmod tempor incididunt ut labore et dolore magna aliqua.
						Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris
						nisi ut aliquip ex ea commodo consequat.</p>

					<h2>H2 Typography heading.</h2>
					<p>Lorem ipsum dolor sit amet, consectetur adipisicing elit,
						sed do eiusmod tempor incididunt ut labore et dolore magna aliqua.
						Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris
						nisi ut aliquip ex ea commodo consequat.</p>

					<h3>H3 Typography heading.</h3>
					<p>Lorem ipsum dolor sit amet, consectetur adipisicing elit,
						sed do eiusmod tempor incididunt ut labore et dolore magna aliqua.
						Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris
						nisi ut aliquip ex ea commodo consequat.</p>

					<h4>H4 Typography heading.</h4>
					<p>Lorem ipsum dolor sit amet, consectetur adipisicing elit,
						sed do eiusmod tempor incididunt ut labore et dolore magna aliqua.
						Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris
						nisi ut aliquip ex ea commodo consequat.</p>

					<ul class="list-style">
						<li><p>Vix mollis admodum ei, vis legimus voluptatum ut.</p></li>
						<li><p>Cu cum alia vide malis. Vel aliquid facilis
								adolescens.</p></li>
						<li><p>Laudem rationibus vim id. Te per illum ornatus.</p></li>
					</ul>

					<ol class="list-style">
						<li><p>Vix mollis admodum ei, vis legimus voluptatum ut.</p></li>
						<li><p>Cu cum alia vide malis. Vel aliquid facilis
								adolescens.</p></li>
						<li><p>Laudem rationibus vim id. Te per illum ornatus.</p></li>
					</ol>
				</div>
				<!-- aside -->
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
							<a class="post-img" href="/blog-post"><img
								src="${pageContext.request.contextPath}/img/widget-1.jpg" alt=""></a>
							<div class="post-body">
								<h3 class="post-title">
									<a href="/blog-post">Tell-A-Tool: Guide To Web Design
										And Development Tools</a>
								</h3>
							</div>
						</div>

						<div class="post post-widget">
							<a class="post-img" href="/blog-post"><img
								src="${pageContext.request.contextPath}/img/widget-2.jpg" alt=""></a>
							<div class="post-body">
								<h3 class="post-title">
									<a href="/blog-post">Pagedraw UI Builder Turns Your
										Website Design Mockup Into Code Automatically</a>
								</h3>
							</div>
						</div>

						<div class="post post-widget">
							<a class="post-img" href="/blog-post"><img
								src="${pageContext.request.contextPath}/img/widget-3.jpg" alt=""></a>
							<div class="post-body">
								<h3 class="post-title">
									<a href="/blog-post">Why Node.js Is The Coolest Kid On
										The Backend Development Block!</a>
								</h3>
							</div>
						</div>

						<div class="post post-widget">
							<a class="post-img" href="/blog-post"><img
								src="${pageContext.request.contextPath}/img/widget-4.jpg" alt=""></a>
							<div class="post-body">
								<h3 class="post-title">
									<a href="/blog-post">Tell-A-Tool: Guide To Web Design
										And Development Tools</a>
								</h3>
							</div>
						</div>
					</div>
					<!-- /post widget -->
				</div>
				<!-- /aside -->
			</div>
			<!-- /row -->
		</div>
		<!-- /container -->
	</div>
	<!-- /section -->

	<!-- Footer -->
	<footer id="footer">
		<!-- container -->
		<div class="container">
			<!-- row -->
			<div class="row">
				<div class="col-md-5">
					<div class="footer-widget">
						<div class="footer-logo">
							<a href="index.html" class="logo"><img src="${pageContext.request.contextPath}/img/logo.png"
								alt=""></a>
						</div>
						<ul class="footer-nav">
							<li><a href="#">Privacy Policy</a></li>
							<li><a href="#">Advertisement</a></li>
						</ul>
						<div class="footer-copyright">
							<span>&copy; <!-- Link back to Colorlib can't be removed. Template is licensed under CC BY 3.0. -->
								Copyright &copy;<script>
									document.write(new Date().getFullYear());
								</script>
								All rights reserved | This template is made with <i
								class="fa fa-heart-o" aria-hidden="true"></i> by <a
								href="https://colorlib.com" target="_blank">Colorlib</a> <!-- Link back to Colorlib can't be removed. Template is licensed under CC BY 3.0. --></span>
						</div>
					</div>
				</div>

				<div class="col-md-4">
					<div class="row">
						<div class="col-md-6">
							<div class="footer-widget">
								<h3 class="footer-title">About Us</h3>
								<ul class="footer-links">
									<li><a href="about.html">About Us</a></li>
									<li><a href="#">Join Us</a></li>
									<li><a href="contact.html">Contacts</a></li>
								</ul>
							</div>
						</div>
						<div class="col-md-6">
							<div class="footer-widget">
								<h3 class="footer-title">Catagories</h3>
								<ul class="footer-links">
									<li><a href="category.html">Web Design</a></li>
									<li><a href="category.html">JavaScript</a></li>
									<li><a href="category.html">Css</a></li>
									<li><a href="category.html">Jquery</a></li>
								</ul>
							</div>
						</div>
					</div>
				</div>

				<div class="col-md-3">
					<div class="footer-widget">
						<h3 class="footer-title">Join our Newsletter</h3>
						<div class="footer-newsletter">
							<form>
								<input class="input" type="email" name="newsletter"
									placeholder="Enter your email">
								<button class="newsletter-btn">
									<i class="fa fa-paper-plane"></i>
								</button>
							</form>
						</div>
						<ul class="footer-social">
							<li><a href="#"><i class="fa fa-facebook"></i></a></li>
							<li><a href="#"><i class="fa fa-twitter"></i></a></li>
							<li><a href="#"><i class="fa fa-google-plus"></i></a></li>
							<li><a href="#"><i class="fa fa-pinterest"></i></a></li>
						</ul>
					</div>
				</div>

			</div>
			<!-- /row -->
		</div>
		<!-- /container -->
	</footer>
	<!-- /Footer -->

	<!-- jQuery Plugins -->
	<script src="${pageContext.request.contextPath}/js/jquery.min.js"></script>
	<script src="${pageContext.request.contextPath}/js/bootstrap.min.js"></script>
	<script src="${pageContext.request.contextPath}/js/main.js"></script>

</body>
</html>
