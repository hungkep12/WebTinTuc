<%@ page language="java" contentType="text/html; charset=utf-8"
	pageEncoding="utf-8"%>
<%@ page import="java.sql.Date"%>
<%@ page import="javax.servlet.http.HttpSession"%>
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
<title>Add News</title>
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
	<%@ include file="/WEB-INF/views/admin/layoutAD/header.jsp"%>
	<!-- ============================================================== -->
	<div class="dashboard-wrapper">
		<div class="container-fluid  dashboard-content">
			<!-- ============================================================== -->
			<!-- pageheader -->
			<!-- ============================================================== -->
			<div class="row">
				<div class="col-xl-12 col-lg-12 col-md-12 col-sm-12 col-12">
					<div class="page-header">
						<h2 class="pageheader-title">Add News</h2>

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
						<h5 class="card-header">Add-Edit News</h5>
						<div class="card-body">
							<form:form modelAttribute="post" id="validationform"
								data-parsley-validate="" novalidate="" method="POST"
								action="/admin/add-news" enctype="multipart/form-data">
								<form:hidden path="id" />
								<div class="form-group row">
									<label class="col-12 col-sm-3 col-form-label text-sm-right">Tiêu
										đề</label>
									<div class="col-12 col-sm-8 col-lg-6">
										<form:input path="title" type="text" required=""
											placeholder="" class="form-control" />
									</div>
								</div>
								<div class="form-group row">
									<label class="col-12 col-sm-3 col-form-label text-sm-right">Thể
										loại</label>
									<div class="col-12 col-sm-8 col-lg-6">
										<form:select class="form-control" id="input-select"
											path="category.id">
											<form:options items="${category}" itemValue="id"
												itemLabel="name" />
										</form:select>
									</div>
								</div>

								<div class="form-group row">
									<label class="col-12 col-sm-3 col-form-label text-sm-right">Mô
										tả</label>
									<div class="col-12 col-sm-8 col-lg-6">
										<form:textarea path="description" required=""
											class="form-control"></form:textarea>
									</div>
								</div>
								<div class="form-group row">
									<label class="col-12 col-sm-3 col-form-label text-sm-right">Nội
										dung</label>
									<div class="col-12 col-sm-8 col-lg-6">
										<form:textarea path="details" required="" class="form-control ckeditor"
											rows="20" ></form:textarea>
										
									</div>
								</div>
								
								<%
									if (session.getAttribute("name") != null) {
								%>
								<p>
								<div class="form-group row">
									<label class="col-12 col-sm-3 col-form-label text-sm-right">Người
										đăng</label>
									<div class="col-12 col-sm-8 col-lg-6">
										<form:hidden path="admin.id"
											value='<%=session.getAttribute("ID")%>' />
										<input name="admin.fullName" type="text" required=""
											value='<%=session.getAttribute("name")%>' placeholder=""
											class="form-control" disabled>

									</div>
								</div>
								</p>


								<%
									}
								%><!-- 
								<div class="form-group row">
									<label class="col-12 col-sm-3 col-form-label text-sm-right">Người
										đăng</label>
									<div class="col-12 col-sm-8 col-lg-6">
										<form:select class="form-control" id="input-select"
											path="admin.id">
											<form:options items="${admin}" itemValue="fullName"
												itemLabel="fullName" />
										</form:select>
									</div>
								</div> -->
								<div class="form-group row">
									<label class="col-12 col-sm-3 col-form-label text-sm-right">Ngày
										đăng</label>
									<div class="col-12 col-sm-8 col-lg-6">
										<c:set var="now" value="<%=new java.util.Date()%>" />
										<input type="date" required=""
											value="<fmt:formatDate pattern="yyyy-MM-dd" value="${now}" />"
											placeholder="" class="form-control" pattern="yyyy-MM-dd"
											disabled>
									</div>
								</div>
								<div class="form-group row">
									<label class="col-12 col-sm-3 col-form-label text-sm-right">Trạng
										thái:</label>
									<div class="col-12 col-sm-8 col-lg-6">
										<form:select path="status" class="form-control"
											id="input-select">
											<form:option value="true">Hiển thị</form:option>
											<form:option value="false">Không hiển thị</form:option>
										</form:select>
									</div>
								</div>
								<div class="form-group row">
									<label class="col-12 col-sm-3 col-form-label text-sm-right">Tệp/Ảnh</label>
									<div class="col-12 col-sm-8 col-lg-6">
										<input type="file" required="" value="" placeholder=""
											class="form-control" name="postImage">
									</div>
								</div>

								<div class="form-group row text-right">
									<div class="col col-sm-10 col-lg-9 offset-sm-1 offset-lg-0">
										<button type="submit" class="btn btn-space btn-primary">Lưu</button>
										<a href="/admin/data-tables-details-post"><input
											type="button" value="Hủy" class="btn btn-space btn-secondary"></input></a>
									</div>
								</div>
							</form:form>
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
	
	<script
		src="${pageContext.request.contextPath}/assets/ckeditor/ckeditor.js"></script>
	<script>
	$('#form').parsley();
	</script>
	<script>
		// Example starter JavaScript for disabling form submissions if there are invalid fields
		(
				function() {
					'use strict';
					window.addEventListener('load', function() {
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