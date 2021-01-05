<%@ page language="java" contentType="text/html; charset=utf-8"
	pageEncoding="utf-8"%>
<!-- Tich hop jstl vao jsp -->
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>

<!-- main wrapper -->
<!-- ============================================================== -->
<div class="dashboard-main-wrapper">
	<!-- ============================================================== -->
	<!-- navbar -->
	<!-- ============================================================== -->
	<div class="dashboard-header">
		<nav class="navbar navbar-expand-lg bg-white fixed-top">
			<a class="navbar-brand" href="/admin">NHÓM 8</a>
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
								<div class="notification-title">Thông báo</div>
								<div class="notification-list">
									<div class="list-group">
										<c:if test="${kiemtra == true}">
											<c:forEach var="contactFalse" items="${contactFalse}">
												<a href="/admin/list-contact"
													class="list-group-item list-group-item-action active">
													<div class="notification-info">
														<div class="notification-list-user-img">
															<img
																src="${pageContext.request.contextPath}/assets/images/contact.jpg"
																alt="" class="user-avatar-md ">
														</div>
														<div class="notification-list-user-block">
															<span class="notification-list-user-name">${contactFalse.fullName}</span>Đã
															gửi một liên hệ.
															<div class="" style="font-size: 12px; opacity: 0.5">${contactFalse.email}</div>
															<div class="notification-date">${contactFalse.createdDate}</div>
														</div>
													</div>
												</a>
											</c:forEach>
										</c:if>

										<c:if test="${kiemtra == false}">
											<p style="text-align: center; padding-top: 1rem">Không có
												thông báo nào</p>
										</c:if>
									</div>
								</div>
							</li>
							<li>
								<div class="list-footer">
									<a href="/admin/list-contact">Xem chi tiết</a>
								</div>
							</li>
						</ul></li>
					<li class="nav-item dropdown connection"><a class="nav-link"
						href="#" id="navbarDropdown" role="button" data-toggle="dropdown"
						aria-haspopup="true" aria-expanded="false"> <i
							class="fas fa-fw fa-th"></i>
					</a>
						<ul class="dropdown-menu dropdown-menu-right connection-dropdown">
							<li class="connection-list">
								<div class="row">
									<div class="col-xl-4 col-lg-4 col-md-6 col-sm-12 col-12 ">
										<a href="https://github.com/MNM-Nhom8" class="connection-item"><img
											src="${pageContext.request.contextPath}/assets/images/github.png"
											alt=""> <span>Github</span></a>
									</div>
									<div class="col-xl-4 col-lg-4 col-md-6 col-sm-12 col-12 ">
										<a href="#" class="connection-item"><img
											src="${pageContext.request.contextPath}/assets/images/dribbble.png"
											alt=""> <span>Facebook</span></a>
									</div>
									<div class="col-xl-4 col-lg-4 col-md-6 col-sm-12 col-12 ">
										<a href="#" class="connection-item"><img
											src="${pageContext.request.contextPath}/assets/images/dropbox.png"
											alt=""> <span>Email</span></a>
									</div>
								</div>
							</li>
						</ul></li>
					<li class="nav-item dropdown nav-user"><a
						class="nav-link nav-user-img" href="#"
						id="navbarDropdownMenuLink2" data-toggle="dropdown"
						aria-haspopup="true" aria-expanded="false"><img
							src="${pageContext.request.contextPath}
									<%
										if (session.getAttribute("image") != null) {
									%>
											/img/<%=session.getAttribute("image") %>
									
									<% }else{%>
										/assets/img/avatar-1.jpg
									<%} %>
							"
							alt="" class="user-avatar-md rounded-circle"></a>
						<div class="dropdown-menu dropdown-menu-right nav-user-dropdown"
							aria-labelledby="navbarDropdownMenuLink2">
							<div class="nav-user-info">
								<h5 class="mb-0 text-white nav-user-name">
									<%
										if (session.getAttribute("name") != null) {
									%>
									<p>
										<%=session.getAttribute("name")%>

									</p>
									<%
										}
									%>
								</h5>
								<span class="status"></span><span class="ml-2"> <%
 	if (session.getAttribute("email") != null) {
 %>
									<p>
										<%=session.getAttribute("email")%>

									</p> <%
 	}
 %>
								</span>
							</div>
							<a class="dropdown-item"
								href="/admin/influencer_profile/
									<%if (session.getAttribute("ID") != null) {%>
										<%=session.getAttribute("ID")%>

									<%}%>
							"><i
								class="fas fa-user mr-2"></i>Account</a> <a class="dropdown-item"
								href="/admin/logout"><i class="fas fa-power-off mr-2"></i>Logout</a>
						</div></li>
				</ul>
			</div>
		</nav>
	</div>
	<!-- ============================================================== -->
	<!-- end navbar -->
	<!-- ============================================================== -->
	<!-- ============================================================== -->
	<!-- left sidebar -->
	<!-- ============================================================== -->
	<div class="nav-left-sidebar sidebar-dark">
		<div class="menu-list">
			<nav class="navbar navbar-expand-lg navbar-light">
				<a class="d-xl-none d-lg-none" href="/admin">Dashboard</a>
				<button class="navbar-toggler" type="button" data-toggle="collapse"
					data-target="#navbarNav" aria-controls="navbarNav"
					aria-expanded="false" aria-label="Toggle navigation">
					<span class="navbar-toggler-icon"></span>
				</button>
				<div class="collapse navbar-collapse" id="navbarNav">
					<ul class="navbar-nav flex-column">
						<li class="nav-divider">Quản Lý</li>
						<%
							if ("admin".equalsIgnoreCase(session.getAttribute("chucvu").toString())) {
						%>
						<li class="nav-item "><a class="nav-link " href="#"
							data-toggle="collapse" aria-expanded="false"
							data-target="#submenu-1" aria-controls="submenu-1"><i
								class="fa fa-fw fa-user-circle"></i>Tài Khoản <span
								class="badge badge-success">6</span></a>
							<div id="submenu-1" class="collapse submenu" style="">
								<ul class="nav flex-column">
									<li class="nav-item"><a class="nav-link" href="#"
										data-toggle="collapse" aria-expanded="false"
										data-target="#submenu-1-2" aria-controls="submenu-1-2">Quản
											trị viên</a>
										<div id="submenu-1-2" class="collapse submenu" style="">
											<ul class="nav flex-column">
												<li class="nav-item"><a class="nav-link"
													href="/admin/data-tables-admin-list">Danh sách</a></li>
												<li class="nav-item"><a class="nav-link"
													href="https://mail.google.com/mail/u/0/#inbox?compose=GTvVlcSGMvXsZQQrvbLhtGtxmWKVjcqFqmpbMMTnSxDFxglzTfzMlJqjjXqDTbtnZJSwjHVFmbSWW"
													target="_blank">Email nhóm</a></li>
											</ul>
										</div></li>

									<li class="nav-item"><a class="nav-link" href="#"
										data-toggle="collapse" aria-expanded="false"
										data-target="#submenu-1-1" aria-controls="submenu-1-1">Người
											dùng </a>
										<div id="submenu-1-1" class="collapse submenu" style="">
											<ul class="nav flex-column">
												<li class="nav-item"><a class="nav-link"
													href="/admin/data-tables-user-list">Danh sách</a></li>
											</ul>
										</div></li>
								</ul>
							</div></li>

						<%
							}
						%>


						<li class="nav-item"><a class="nav-link" href="#"
							data-toggle="collapse" aria-expanded="false"
							data-target="#submenu-5" aria-controls="submenu-5"><i
								class="fas fa-fw fa-table"></i>Web tin tức</a>
							<div id="submenu-5" class="collapse submenu" style="">
								<ul class="nav flex-column">
									<li class="nav-item"><a class="nav-link"
										href="/admin/list-category">Danh mục tin tức</a></li>
									<li class="nav-item"><a class="nav-link"
										href="/admin/data-tables-details-post">Chi tiết tin tức</a></li>
									<li class="nav-item"><a class="nav-link"
										href="/admin/list-comment">Bình luận</a></li>
								</ul>
							</div></li>
						<li class="nav-divider">Chức năng khác</li>
						<li class="nav-item"><a class="nav-link" href="#"
							data-toggle="collapse" aria-expanded="false"
							data-target="#submenu-7" aria-controls="submenu-7"><i
								class="fas fa-fw fa-inbox"></i>Liên hệ <span
								class="badge badge-secondary">New</span></a>
							<div id="submenu-7" class="collapse submenu" style="">
								<ul class="nav flex-column">
									<li class="nav-item"><a class="nav-link"
										href="/admin/list-contact">Hộp thư</a></li>
									<li class="nav-item"><a class="nav-link"
										href="https://mail.google.com/mail/u/1/#inbox?compose=new"
										target="_blank">Soạn thư</a></li>
								</ul>
							</div></li>
						<li class="nav-item"><a class="nav-link"
							href="/admin/address"><i class="fas fa-fw fa-map-marker-alt"></i>Địa
								chỉ</a></li>
						<li class="nav-item"><a class="nav-link"
							href="/admin/calendar"><i
								class="fas fa-fw far fa-calendar-alt"></i>Ngày tháng</a></li>
						<li class="nav-item"><a class="nav-link" href="#"
							data-toggle="collapse" aria-expanded="false"
							data-target="#submenu-10" aria-controls="submenu-10"><i
								class="fas fa-f fa-folder"></i>Tệp tin</a>
							<div id="submenu-10" class="collapse submenu" style="">
								<ul class="nav flex-column">
									<li class="nav-item"><a class="nav-link" href="#">Ảnh</a>
									</li>
									<li class="nav-item"><a class="nav-link" href="#">Tài
											liệu</a></li>
								</ul>
							</div></li>
					</ul>
				</div>
			</nav>
		</div>
	</div>
	<!-- ============================================================== -->
	<!-- end left sidebar -->
	<!-- ============================================================== -->
	<!-- ============================================================== -->
	<!-- wrapper  -->