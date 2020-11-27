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
<title>Danh sách các bình luận</title>
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
<link rel="stylesheet" type="text/css"
	href="${pageContext.request.contextPath}/assets/vendor/datatables/css/dataTables.bootstrap4.css">
<link rel="stylesheet" type="text/css"
	href="${pageContext.request.contextPath}/assets/vendor/datatables/css/buttons.bootstrap4.css">
<link rel="stylesheet" type="text/css"
	href="${pageContext.request.contextPath}/assets/vendor/datatables/css/select.bootstrap4.css">
<link rel="stylesheet" type="text/css"
	href="${pageContext.request.contextPath}/assets/vendor/datatables/css/fixedHeader.bootstrap4.css">
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
						<h2 class="pageheader-title">Danh sách bình luận</h2>
						<div class="page-breadcrumb">
							<nav aria-label="breadcrumb">
								<ol class="breadcrumb">
									<li class="breadcrumb-item"><a href="/admin"
										class="breadcrumb-link">Nhóm 8</a></li>
									<li class="breadcrumb-item active" aria-current="page">Danh sach bình luận</li>
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
			<!-- basic table  -->
			<!-- ============================================================== -->

			<div class="row">
				<!-- ============================================================== -->
				<!-- data table  -->
				<!-- ============================================================== -->
				<div class="col-xl-12 col-lg-12 col-md-12 col-sm-12 col-12">
					<div class="card">
						<div class="card-header">
							<h5 class="mb-0">Danh sach bình luận</h5>
						</div>

						<div class="card-body">
							<div class="table-responsive">
								<table id="example"
									class="table table-striped table-bordered first"
									style="width: 100%">
									<thead>
										<tr>
											<th>Bài viết</th>
											<th>Người bình luận</th>
											<th>Nội dung bình luận</th>
											<th>Thơi gian bình luận</th>
											<th></th>
										</tr>
									</thead>
									<tbody>
									<c:forEach var="comment" items="${comment}">
										<tr>
											<td>${comment.post.title}</td>
											<td>${comment.user.userName}</td>
											<td>${comment.content}</td>
											<td>${comment.dateTime}</td>
											<td>
												<div class="btn-group ml-auto">
													<a href="form-validation.html"><a
														href="/admin/delete-comment/${comment.id}"><button class="btn btn-sm btn-outline-light" onclick="return window.confirm('Bạn có chắc chắn muốn xoá bình luận này không');">
															<i class="far fa-trash-alt"></i>
														</button></a>
												</div>
											</td>
										</tr>
								</c:forEach>

									</tbody>
									<tfoot>
											<th>Bài viết</th>
											<th>Người bình luận</th>
											<th>Nội dung bình luận</th>
											<th>Thơi gian bình luận</th>
									</tfoot>
								</table>
							</div>
						</div>
					</div>
				</div>

				<!-- ============================================================== -->
				<!-- end data table  -->
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
	<script src="${pageContext.request.contextPath}/assets/vendor/jquery/jquery-3.3.1.min.js"></script>
	<script src="${pageContext.request.contextPath}/assets/vendor/bootstrap/js/bootstrap.bundle.js"></script>
	<script src="${pageContext.request.contextPath}/assets/vendor/slimscroll/jquery.slimscroll.js"></script>
	<script src="${pageContext.request.contextPath}/assets/vendor/multi-select/js/jquery.multi-select.js"></script>
	<script src="${pageContext.request.contextPath}/assets/libs/js/main-js.js"></script>
	<script
		src="https://cdn.datatables.net/1.10.19/js/jquery.dataTables.min.js"></script>
	<script src="assets/vendor/datatables/js/dataTables.bootstrap4.min.js"></script>
	<script
		src="https://cdn.datatables.net/buttons/1.5.2/js/dataTables.buttons.min.js"></script>
	<script src="${pageContext.request.contextPath}/assets/vendor/datatables/js/buttons.bootstrap4.min.js"></script>
	<script src="${pageContext.request.contextPath}/assets/vendor/datatables/js/data-table.js"></script>
	<script
		src="https://cdnjs.cloudflare.com/ajax/libs/jszip/3.1.3/jszip.min.js"></script>
	<script
		src="https://cdnjs.cloudflare.com/ajax/libs/pdfmake/0.1.36/pdfmake.min.js"></script>
	<script
		src="https://cdnjs.cloudflare.com/ajax/libs/pdfmake/0.1.36/vfs_fonts.js"></script>
	<script
		src="https://cdn.datatables.net/buttons/1.5.2/js/buttons.html5.min.js"></script>
	<script
		src="https://cdn.datatables.net/buttons/1.5.2/js/buttons.print.min.js"></script>
	<script
		src="https://cdn.datatables.net/buttons/1.5.2/js/buttons.colVis.min.js"></script>
	<script
		src="https://cdn.datatables.net/rowgroup/1.0.4/js/dataTables.rowGroup.min.js"></script>
	<script
		src="https://cdn.datatables.net/select/1.2.7/js/dataTables.select.min.js"></script>
	<script
		src="https://cdn.datatables.net/fixedheader/3.1.5/js/dataTables.fixedHeader.min.js"></script>

</body>

</html>