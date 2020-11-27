<%@ page language="java" contentType="text/html; charset=utf-8"
	pageEncoding="utf-8"%>
<!-- Tich hop jstl vao jsp -->
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>
<!doctype html>
<html lang="en">

<head>
<!-- Required meta tags -->
<meta charset="utf-8">
<meta name="viewport"
	content="width=device-width, initial-scale=1, shrink-to-fit=no">
<title>Calendar</title>
<!-- Bootstrap CSS -->
<link rel="stylesheet"
	href="${pageContext.request.contextPath}/assets/vendor/bootstrap/css/bootstrap.min.css">
<link
	href="${pageContext.request.contextPath}/assets/vendor/fonts/circular-std/style.css"
	rel="stylesheet">
<link rel="stylesheet"
	href="${pageContext.request.contextPath}/assets/libs/css/style.css">
<link rel="stylesheet"
	href="${pageContext.request.contextPath}/assets/vendor/fonts/fontawesome/css/fontawesome-all.css">
<link
	href='${pageContext.request.contextPath}/assets/vendor/full-calendar/css/fullcalendar.css'
	rel='stylesheet' />
<link
	href='${pageContext.request.contextPath}/assets/vendor/full-calendar/css/fullcalendar.print.css'
	rel='stylesheet' media='print' />
</head>

<body>
	<!-- ============================================================== -->
	<!-- main wrapper -->
	<!-- ============================================================== -->
	<!-- ============================================================== -->

	<%@ include file="/WEB-INF/views/admin/layoutAD/header.jsp"%>
	<!-- ============================================================== -->
	<!-- ============================================================== -->
	<!-- end left sidebar -->
	<!-- ============================================================== -->
	<!-- ============================================================== -->
	<!-- wrapper  -->
	<!-- ============================================================== -->
	<div class="dashboard-wrapper">
		<div class="container-fluid  dashboard-content">
			<!-- ============================================================== -->
			<!-- pageheader -->
			<!-- ============================================================== -->
			<div class="row">
				<div class="col-xl-12 col-lg-12 col-md-12 col-sm-12 col-12">
					<div class="page-header">
						<h2 class="pageheader-title">Calendar</h2>
						<p class="pageheader-text">Proin placerat ante duiullam
							scelerisque a velit ac porta, fusce sit amet vestibulum mi. Morbi
							lobortis pulvinar quam.</p>
						<div class="page-breadcrumb">
							<nav aria-label="breadcrumb">
								<ol class="breadcrumb">
									<li class="breadcrumb-item"><a href="#"
										class="breadcrumb-link">Dashboard</a></li>
									<li class="breadcrumb-item"><a href="#"
										class="breadcrumb-link">Pages</a></li>
									<li class="breadcrumb-item active" aria-current="page">Calendar</li>
								</ol>
							</nav>
						</div>
					</div>
				</div>
			</div>
			<!-- ============================================================== -->
			<!-- end pageheader -->
			<!-- ============================================================== -->
			<!-- ============================================================== -->
			<!-- simple calendar -->
			<!-- ============================================================== -->
			<div class="row">
				<div class="col-xl-12 col-lg-12 col-md-12 col-sm-12 col-12">
					<div class="card">
						<div class="card-body">
							<div id='calendar1'></div>
						</div>
					</div>
				</div>
			</div>
			<!-- ============================================================== -->
			<!-- end simple calendar -->
			<!-- ============================================================== -->
			<!-- ============================================================== -->
			<!-- events calendar -->
			<!-- ============================================================== -->

			<!-- ============================================================== -->
			<!-- end events calendar -->
			<!-- ============================================================== -->
		</div>
	</div>
	<!-- ============================================================== -->
	<!-- footer -->
	<!-- ============================================================== -->
	<div class="footer">
		<div class="container-fluid">
			<div class="row">
				<div class="col-xl-6 col-lg-6 col-md-12 col-sm-12 col-12">
					Copyright © 2018 Concept. All rights reserved. Dashboard by <a
						href="https://colorlib.com/wp/">Colorlib</a>.
				</div>
				<div class="col-xl-6 col-lg-6 col-md-12 col-sm-12 col-12">
					<div class="text-md-right footer-links d-none d-sm-block">
						<a href="javascript: void(0);">About</a> <a
							href="javascript: void(0);">Support</a> <a
							href="javascript: void(0);">Contact Us</a>
					</div>
				</div>
			</div>
		</div>
	</div>
	<!-- ============================================================== -->
	<!-- end footer -->
	<!-- ============================================================== -->
	</div>
	<!-- ============================================================== -->
	<!-- end main wrapper -->
	<!-- ============================================================== -->
	<!-- Optional JavaScript -->
	<script src="${pageContext.request.contextPath}/assets/vendor/jquery/jquery-3.3.1.min.js"></script>
	<script src="${pageContext.request.contextPath}/assets/vendor/bootstrap/js/bootstrap.bundle.js"></script>
	<script src="${pageContext.request.contextPath}/assets/vendor/slimscroll/jquery.slimscroll.js"></script>
	<script src='${pageContext.request.contextPath}/assets/vendor/full-calendar/js/moment.min.js'></script>
	<script src='${pageContext.request.contextPath}/assets/vendor/full-calendar/js/fullcalendar.js'></script>
	<script src='${pageContext.request.contextPath}/assets/vendor/full-calendar/js/jquery-ui.min.js'></script>
	<script src='${pageContext.request.contextPath}/assets/vendor/full-calendar/js/calendar.js'></script>
	<script src="${pageContext.request.contextPath}/assets/libs/js/main-js.js"></script>
</body>

</html>