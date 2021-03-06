<%@ page language="java" contentType="text/html; charset=utf-8"
	pageEncoding="utf-8"%>

<!-- sử dụng taglibs của spring để bind-data từ end-point trả về. -->
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>

<!-- tích hợp JSTL vào trong JSP -->
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>
<!doctype html>
<html lang="en">


<head>
<!-- Required meta tags -->
<meta charset="utf-8">
<meta name="viewport"
	content="width=device-width, initial-scale=1, shrink-to-fit=no">
<title>Form Validation</title>
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
						<h2 class="pageheader-title">Form Validations</h2>

						<div class="page-breadcrumb">
							<nav aria-label="breadcrumb">
								<ol class="breadcrumb">
									<li class="breadcrumb-item"><a href="#"
										class="breadcrumb-link">Dashboard</a></li>
									<li class="breadcrumb-item"><a href="#"
										class="breadcrumb-link">Forms</a></li>
									<li class="breadcrumb-item active" aria-current="page">Form
										Validations</li>
								</ol>
							</nav>
						</div>
					</div>
				</div>
			</div>
			<!-- ============================================================== -->
			<!-- end pageheader -->
			<!-- ============================================================== -->
			<div class="row">
				<!-- ============================================================== -->
				<!-- valifation types -->
				<!-- ============================================================== -->
				<div class="col-xl-12 col-lg-12 col-md-12 col-sm-12 col-12">
					<div class="card">
						<h5 class="card-header">Add User</h5>
						<div class="card-body">
							<form:form modelAttribute="user" method="POST"
								action="/admin/add_user" enctype="multipart/form-data"
								id="validationform" data-parsley-validate="" novalidate="">
								<%-- <form:hidden path="id" /> --%>
								<div class="form-group row">
									<label class="col-12 col-sm-3 col-form-label text-sm-right">Tên
									</label>
									<div class="col-12 col-sm-8 col-lg-6">
										<input type="text" name="userName" required="" placeholder=""
											class="form-control" minlength="2">
									</div>
								</div>
								<div class="form-group row">
									<label class="col-12 col-sm-3 col-form-label text-sm-right">Email
									</label>
									<div class="col-12 col-sm-8 col-lg-6">
										<input type="email" name="email" required="" placeholder=""
											class="form-control"><br>
											<form:errors path="email" cssStyle="color:red"></form:errors>
									</div>
								</div>
								<div class="form-group row">
									<label class="col-12 col-sm-3 col-form-label text-sm-right">Ảnh</label>
									<div class="col-12 col-sm-8 col-lg-6">
										<input type="file" name="PostImage" value=""
											placeholder="" class="form-control">
									</div>
								</div>
								<div class="form-group row">
									<label class="col-12 col-sm-3 col-form-label text-sm-right">Password</label>
									<div class="col-12 col-sm-8 col-lg-6">
										<input type="password" name="pass" required=""
											data-parsley-maxlength="6" placeholder=""
											class="form-control" minlength="6">
									</div>
								</div>
								<div class="form-group row">
									<label class="col-12 col-sm-3 col-form-label text-sm-right">Trạng thái</label>
									<div class="col-12 col-sm-8 col-lg-6 form-group">
                                             <label class="custom-control custom-radio custom-control-inline">
                                                <input type="radio" name="stt" checked="" value="0" class="custom-control-input"><span class="custom-control-label">Offline</span>
                                            </label>
                                            <label class="custom-control custom-radio custom-control-inline">
                                                <input type="radio" name="stt" value="1" class="custom-control-input"><span class="custom-control-label">Online</span>
                                            </label>
									</div>
								</div>
								<div class="form-group row text-right">
									<div class="col col-sm-10 col-lg-9 offset-sm-1 offset-lg-0">
										<button type="submit" class="btn btn-space btn-primary">Lưu</button>
										</form:form>
										<a href="/admin/data-tables-user-list" class="btn btn-space btn-secondary" >Huỷ</a>
									</div>
									
								</div>
							
						</div>
					</div>
				</div>
				<!-- ============================================================== -->
				<!-- end valifation types -->
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
	</div>
	<!-- ============================================================== -->
	<!-- end main wrapper -->
	<!-- ============================================================== -->
	<!-- Optional JavaScript -->
	<script
		src="${pageContext.request.contextPath}/assets/vendor/jquery/jquery-3.3.1.min.js"></script>
	<script
		src="${pageContext.request.contextPath}/assets/vendor/bootstrap/js/bootstrap.bundle.js"></script>
	<script
		src="${pageContext.request.contextPath}/assets/vendor/slimscroll/jquery.slimscroll.js"></script>
	<script
		src="${pageContext.request.contextPath}/assets/vendor/parsley/parsley.js"></script>
	<script
		src="${pageContext.request.contextPath}/assets/libs/js/main-js.js"></script>
	<script>
		$('#form').parsley();
	</script>
	<script>
		// Example starter JavaScript for disabling form submissions if there are invalid fields
		(function() {
			'use strict';
			window.addEventListener('load',
					function() {
						// Fetch all the forms we want to apply custom Bootstrap validation styles to
						var forms = document
								.getElementsByClassName('needs-validation');
						// Loop over them and prevent submission
						var validation = Array.prototype.filter.call(forms,
								function(form) {
									form.addEventListener('submit', function(
											event) {
										if (form.checkValidity() === false) {
											event.preventDefault();
											event.stopPropagation();
										}
										form.classList.add('was-validated');
									}, false);
								});
					}, false);
		})();
	</script>
</body>

</html>