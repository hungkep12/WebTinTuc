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
<!-- Bootstrap CSS -->
<link rel="stylesheet"
	href="${pageContext.request.contextPath}/assets/vendor/bootstrap/css/bootstrap.min.css">
<link
	href="${pageContext.request.contextPath}/assets/vendor/fonts/circular-std/style.css"
	rel="stylesheet">
<link rel="stylesheet"
	href="${pageContext.request.contextPath}/assets/libs/css/style.css">
<link type="text/css" rel="stylesheet"
	href="${pageContext.request.contextPath}/css/style.css" />
<link rel="stylesheet"
	href="${pageContext.request.contextPath}/assets/vendor/fonts/fontawesome/css/fontawesome-all.css">
<title>Web Tin Tức - Thông tin tài khoản</title>
</head>

<body>
	<!-- ============================================================== -->
	<!-- main wrapper -->
	<!-- ============================================================== -->
	<div class="dashboard-main-wrapper">
		<!-- ============================================================== -->
		<!-- navbar -->
		<!-- ============================================================== -->
		<div class="dashboard-header">
			<nav class="navbar navbar-expand-lg bg-white fixed-top">
				<a class="navbar-brand" href="/index">WEBMAG</a>
				<button class="navbar-toggler" type="button" data-toggle="collapse"
					data-target="#navbarSupportedContent"
					aria-controls="navbarSupportedContent" aria-expanded="false"
					aria-label="Toggle navigation">
					<span class="navbar-toggler-icon"></span>
				</button>
				<div class="collapse navbar-collapse " id="navbarSupportedContent">
					<ul class="navbar-nav ml-auto navbar-right-top">
						<li class="nav-item">
							<div id="custom-search" class="top-search-bar">
								<input class="form-control" type="text" placeholder="Search..">
							</div>
						</li>
						<li class="nav-item dropdown notification"><a
							class="nav-link nav-icons" href="#" id="navbarDropdownMenuLink1"
							data-toggle="dropdown" aria-haspopup="true" aria-expanded="false"><i
								class="fas fa-fw fa-bell"></i> <span class="indicator"></span></a>
							<ul
								class="dropdown-menu dropdown-menu-right notification-dropdown">
								<li>
									<div class="notification-title">Notification</div>
									<div class="notification-list">
										<div class="list-group">
											<a href="#"
												class="list-group-item list-group-item-action active">
												<div class="notification-info">
													<div class="notification-list-user-img">
														<img src="assets/images/avatar-2.jpg" alt=""
															class="user-avatar-md rounded-circle">
													</div>
													<div class="notification-list-user-block">
														<span class="notification-list-user-name">Jeremy
															Rakestraw</span>accepted your invitation to join the team.
														<div class="notification-date">2 min ago</div>
													</div>
												</div>
											</a> <a href="#" class="list-group-item list-group-item-action">
												<div class="notification-info">
													<div class="notification-list-user-img">
														<img src="assets/images/avatar-3.jpg" alt=""
															class="user-avatar-md rounded-circle">
													</div>
													<div class="notification-list-user-block">
														<span class="notification-list-user-name">John
															Abraham </span>is now following you
														<div class="notification-date">2 days ago</div>
													</div>
												</div>
											</a> <a href="#" class="list-group-item list-group-item-action">
												<div class="notification-info">
													<div class="notification-list-user-img">
														<img src="assets/images/avatar-4.jpg" alt=""
															class="user-avatar-md rounded-circle">
													</div>
													<div class="notification-list-user-block">
														<span class="notification-list-user-name">Monaan
															Pechi</span> is watching your main repository
														<div class="notification-date">2 min ago</div>
													</div>
												</div>
											</a> <a href="#" class="list-group-item list-group-item-action">
												<div class="notification-info">
													<div class="notification-list-user-img">
														<img src="assets/images/avatar-5.jpg" alt=""
															class="user-avatar-md rounded-circle">
													</div>
													<div class="notification-list-user-block">
														<span class="notification-list-user-name">Jessica
															Caruso</span>accepted your invitation to join the team.
														<div class="notification-date">2 min ago</div>
													</div>
												</div>
											</a>
										</div>
									</div>
								</li>

							</ul></li>
						<li class="nav-item dropdown nav-user"><a
							class="nav-link nav-user-img" href="#"
							id="navbarDropdownMenuLink2" data-toggle="dropdown"
							aria-haspopup="true" aria-expanded="false"><img
								src="${pageContext.request.contextPath}/assets/images/avatar-1.jpg"
								alt="" class="user-avatar-md rounded-circle"></a>
							<div class="dropdown-menu dropdown-menu-right nav-user-dropdown"
								aria-labelledby="navbarDropdownMenuLink2">
								<div class="nav-user-info">
									<h5 class="mb-0 text-white nav-user-name">${user.userName}</h5>
									<span class="status"></span><span class="ml-2">${user.email}</span>
								</div>
								<a class="dropdown-item" href="#"><i
									class="fas fa-user mr-2"></i>Account</a> <a class="dropdown-item"
									href="#"><i class="fas fa-cog mr-2"></i>Setting</a> <a
									class="dropdown-item" href="/logout"><i
									class="fas fa-power-off mr-2"></i>Logout</a>
							</div></li>
					</ul>
				</div>
			</nav>
		</div>
		<!-- ============================================================== -->
		<!-- end navbar -->
		<!-- ============================================================== -->
		<!-- ============================================================== -->

		<!-- ============================================================== -->
		<!-- ============================================================== -->
		<!-- wrapper  -->
		<!-- ============================================================== -->
		<div class="dashboard-wrapper" style="margin-left: 50px;">
			<div class="influence-profile">
				<div class="container-fluid dashboard-content ">
					<!-- ============================================================== -->
					<!-- pageheader -->
					<!-- ============================================================== -->
					<div class="row">
						<div class="col-xl-12 col-lg-12 col-md-12 col-sm-12 col-12">
							<div class="page-header">
								<h3 class="mb-2">Thông tin tài khoản</h3>
								<div class="page-breadcrumb">
									<nav aria-label="breadcrumb">
										<ol class="breadcrumb">
											<li class="breadcrumb-item"><a href="/index"
												class="breadcrumb-link">TRANG CHỦ</a></li>
											<li class="breadcrumb-item active" aria-current="page">THÔNG
												TIN TÀI KHOẢN</li>
										</ol>
									</nav>
								</div>
							</div>
						</div>
					</div>

					<!-- end pageheader -->

					<!-- content -->

					<div class="row">
						<!-- ============================================================== -->
						<!-- profile -->
						<!-- ============================================================== -->
						<div class="col-xl-3 col-lg-3 col-md-5 col-sm-12 col-12">
							<!-- ============================================================== -->
							<!-- card profile -->
							<!-- ============================================================== -->
							<div class="card">
								<div class="card-body">
									<div class="user-avatar text-center d-block">
										<img
											src="${pageContext.request.contextPath}/img/${user.image}"
											alt="User Avatar" class="rounded-circle user-avatar-xxl">
									</div>
									<div class="text-center">
										<h2 class="font-24 mb-0">${user.userName}</h2>

									</div>
								</div>
								<div class="card-body border-top">
									<h3 class="font-16">Thông tin liên hệ</h3>
									<div class="">
										<ul class="list-unstyled mb-0">
											<li class="mb-2"><i class="fas fa-fw fa-envelope mr-2"></i>${user.email}</li>

										</ul>
									</div>
								</div>
							</div>

							<!-- end card profile -->

						</div>
						<!-- ============================================================== -->
						<!-- end profile -->

						<!-- campaign data -->
						<!-- ============================================================== -->
						<div class="col-xl-9 col-lg-9 col-md-7 col-sm-12 col-12">
							<!-- ============================================================== -->
							<!-- campaign tab one -->
							<!-- ============================================================== -->
							<!-- ============================================================== -->
							<!-- end pageheader -->
							<!-- ============================================================== -->
							<div class="row">
								<!-- ============================================================== -->
								<!-- valifation types -->
								<!-- ============================================================== -->
								<div class="col-xl-12 col-lg-12 col-md-12 col-sm-12 col-12">
									<div class="card">
										<h5 class="card-header">Thông tin tài khoản</h5>
										<div class="card-body">
											<form:form id="validationform" data-parsley-validate=""
												action="/edit-user" method="POST"
												enctype="multipart/form-data" novalidate=""
												modelAttribute="user">
												<form:hidden path="id" />
												<div class="form-group row">
													<label class="col-12 col-sm-3 col-form-label text-sm-right">Tên
													</label>
													<div class="col-12 col-sm-8 col-lg-6">
														<input type="text" required="" placeholder=""
															class="form-control" value="${user.userName}"
															name="userName">
													</div>
												</div>
												<div class="form-group row">
													<label class="col-12 col-sm-3 col-form-label text-sm-right">Email
													</label>
													<div class="col-12 col-sm-8 col-lg-6">
														<input type="email" required="" placeholder=""
															name="email" class="form-control" value="${user.email}">
													</div>
												</div>

												<div class="form-group row">
													<label class="col-12 col-sm-3 col-form-label text-sm-right">Ảnh</label>
													<div class="col-12 col-sm-8 col-lg-6">
														<input type="file" name="postImage" value=""
															placeholder="" class="form-control" />
													</div>
												</div>
												<div class="form-group row">
													<label class="col-12 col-sm-3 col-form-label text-sm-right">Password</label>
													<div class="col-12 col-sm-8 col-lg-6">
														<input type="password" required=""
															data-parsley-maxlength="6" placeholder=""
															value="${user.pass}" class="form-control" name="pass">
													</div>
												</div>
												<div class="form-group row">
													<label class="col-12 col-sm-3 col-form-label text-sm-right">Confirm</label>
													<div class="col-12 col-sm-8 col-lg-6">
														<input type="password" data-parsley-maxlength="6"
															placeholder="Không nhập vào mục này nếu không thay đổi password"
															class="form-control">
													</div>
												</div>
												<div class="form-group row text-right">
													<div class="col col-sm-10 col-lg-9 offset-sm-1 offset-lg-0">
														<button type="submit" class="btn btn-space btn-primary">Lưu</button>
														<button class="btn btn-space btn-secondary">Huỷ</button>
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

							<!-- ============================================================== -->
							<!-- end campaign data -->
							<!-- ============================================================== -->
						</div>
					</div>
				</div>
				<!-- ============================================================== -->
				<!-- end content -->
				<!-- ============================================================== -->
				<div class="footer">
					<%@include file="/WEB-INF/views/layout/footer.jsp"%>

				</div>
				<!-- ============================================================== -->
				<!-- end footer -->
				<!-- ============================================================== -->
			</div>
			<!-- ============================================================== -->
			<!-- end wrapper -->
			<!-- ============================================================== -->
		</div>
		<!-- ============================================================== -->
		<!-- end main wrapper -->
		<!-- ============================================================== -->
		<!-- Optional JavaScript -->
		<!-- jquery 3.3.1  -->
		<script
			src="${pageContext.request.contextPath}/assets/vendor/jquery/jquery-3.3.1.min.js"></script>
		<!-- bootstap bundle js -->
		<script
			src="${pageContext.request.contextPath}/assets/vendor/bootstrap/js/bootstrap.bundle.js"></script>
		<!-- slimscroll js -->
		<script
			src="${pageContext.request.contextPath}/assets/vendor/slimscroll/jquery.slimscroll.js"></script>
		<!-- main js -->
		<script
			src="${pageContext.request.contextPath}/assets/libs/js/main-js.js"></script>

		<script src="${pageContext.request.contextPath}/js/jquery.min.js"></script>
		<script src="${pageContext.request.contextPath}/js/bootstrap.min.js"></script>
		<script src="${pageContext.request.contextPath}/js/main.js"></script>
</body>

</html>