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
<title>Concept - Bootstrap 4 Admin Dashboard Template</title>
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
	<%@ include file="/WEB-INF/views/admin/layoutAD/header.jsp"%>
	<!-- ============================================================== -->
	<!-- end left sidebar -->
	<!-- ============================================================== -->
	<!-- ============================================================== -->
	<!-- wrapper  -->
	<!-- ============================================================== -->
	<div class="dashboard-wrapper">
		<div class="container-fluid dashboard-content">
			<!-- ============================================================== -->
			<!-- pageheader -->
			<!-- ============================================================== -->
			<div class="row">
				<div class="col-xl-12 col-lg-12 col-md-12 col-sm-12 col-12">
					<div class="page-header">
						<h2 class="pageheader-title">Sortable Nestable Lists</h2>
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
									<li class="breadcrumb-item active" aria-current="page">Sortable
										Nestable Lists</li>
								</ol>
							</nav>
						</div>
					</div>
				</div>
			</div>
			<!-- ============================================================== -->
			<!-- end pageheader -->
			<!-- ============================================================== -->
			<div class="dashboard-short-list">
				<div class="row">
					<!-- ============================================================== -->
					<!-- shortable list  -->
					<!-- ============================================================== -->
					<div class="col-xl-12 col-lg-12 col-md-12 col-sm-12 co-12">
						<section class="card card-fluid">
							<h5 class="card-header drag-handle">
								Danh mục tin tức <a href="/admin/add_category"><button
										class="btn btn-sm btn-outline-light" style="float: right;">Add</button></a>
							</h5>

							<ul
								class="sortable-lists list-group list-group-flush list-group-bordered"
								id="items">
								<div class="table-responsive">
									<table id="example"
										class="table table-striped table-bordered first"
										style="width: 100%">
										<thead>
											<tr>
												<th>Thể loại</th>
												<th>Mô tả</th>
												<th>Trạng thái</th>
												<th></th>
											</tr>
										</thead>
										<tbody>

											<c:forEach var="category" items="${category }">
												<tr>

													<td>${category.name }</td>
													<td>${category.description}</td>
													<td><c:if test="${category.status == true}">
															<span class="badge-dot badge-success mr-1"></span>Hiển
																thị
														</c:if> <c:if test="${category.status == false}">
															<span class="badge-dot badge-secondary mr-1"></span>Không
																hiển thị
														</c:if></td>
													<td><a href="/admin/edit_category/${category.id }"><button
																class="btn btn-sm btn-outline-light">Edit</button></a> <a
														href="/admin/list-category/${category.id }"><button
																class="btn btn-sm btn-outline-light"
																onclick="return window.confirm('Bạn có chắc chắn muốn xoá không');">
																<i class="far fa-trash-alt"></i>
															</button></a></td>
												</tr>
											</c:forEach>
										</tbody>
										<tfoot>
											<th>Thể loại</th>
											<th>Mô tả</th>
											<th>Trạng thái</th>
											<th></th>
										</tfoot>
									</table>
							</ul>
						</section>
					</div>

				</div>
				<!-- ============================================================== -->
				<!-- end nestable list  -->
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
		src="${pageContext.request.contextPath}/assets/libs/js/main-js.js"></script>
	<script
		src="${pageContext.request.contextPath}/assets/vendor/shortable-nestable/Sortable.min.js"></script>
	<script
		src="${pageContext.request.contextPath}/assets/vendor/shortable-nestable/sort-nest.js"></script>
	<script
		src="${pageContext.request.contextPath}/assets/vendor/shortable-nestable/jquery.nestable.js"></script>

</body>

</html>