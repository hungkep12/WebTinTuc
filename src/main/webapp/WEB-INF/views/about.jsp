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
	<header>
		<%@ include file="/WEB-INF/views/layout/header.jsp"%>
		<!-- Page Header -->
		<div class="page-header">
			<div class="container">
				<div class="row">
					<div class="col-md-10">
						<ul class="page-header-breadcrumb">
							<li><a href="/index">TRANG CHỦ</a></li>
							<li>VỀ CHÚNG TÔI</li>
						</ul>
						<h1>VỀ CHÚNG TÔI</h1>
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
					<div class="section-row">
						<p>Lorem ipsum dolor sit amet, ea eos tibique expetendis,
							tollit viderer ne nam. No ponderum accommodare eam, purto
							nominavi cum ea, sit no dolores tractatos. Scripta principes
							quaerendum ex has, ea mei omnes eruditi. Nec ex nulla mandamus,
							quot omnesque mel et. Amet habemus ancillae id eum, justo
							dignissim mei ea, vix ei tantas aliquid. Cu laudem impetus
							conclusionemque nec, velit erant persius te mel. Ut eum verterem
							perpetua scribentur.</p>
						<figure class="figure-img">
							<img class="img-responsive" src="${pageContext.request.contextPath}/img/about-1.jpg" alt="">
						</figure>
						<p>Vix mollis admodum ei, vis legimus voluptatum ut, vis
							reprimique efficiendi sadipscing ut. Eam ex animal assueverit
							consectetuer, et nominati maluisset repudiare nec. Rebum aperiam
							vis ne, ex summo aliquando dissentiunt vim. Quo ut cibo docendi.
							Suscipit indoctum ne quo, ne solet offendit hendrerit nec. Case
							malorum evertitur ei vel.</p>
					</div>
					<div class="row section-row">
						<div class="col-md-6">
							<figure class="figure-img">
								<img class="img-responsive" src="${pageContext.request.contextPath}/img/about-2.jpg" alt="">
							</figure>
						</div>
						<div class="col-md-6">
							<h3>Our Mission</h3>
							<p>Id usu mutat debet tempor, fugit omnesque posidonium nec
								ei. An assum labitur ocurreret qui, eam aliquid ornatus tibique
								ut.</p>
							<ul class="list-style">
								<li><p>Vix mollis admodum ei, vis legimus voluptatum
										ut.</p></li>
								<li><p>Cu cum alia vide malis. Vel aliquid facilis
										adolescens.</p></li>
								<li><p>Laudem rationibus vim id. Te per illum ornatus.</p></li>
							</ul>
						</div>
					</div>
				</div>

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
	<%@ include file="/WEB-INF/views/layout/footer.jsp" %>
	<!-- /Footer -->

	<!-- jQuery Plugins -->
	<script src="${pageContext.request.contextPath}/js/jquery.min.js"></script>
	<script src="${pageContext.request.contextPath}/js/bootstrap.min.js"></script>
	<script src="${pageContext.request.contextPath}/js/main.js"></script>

</body>
</html>
