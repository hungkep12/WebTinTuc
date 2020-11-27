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
							<li>GIỚI THIỆU</li>
						</ul>
						<h1>GIỚI THIỆU</h1>
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
						<p>Ngành công nghệ thông tin là một ngành khoa học đang trên
							đà phát triển mạnh và ứng dụng rộng rãi trên nhiều lĩnh vực. Cùng
							với xu hướng phát triển của các phương tiện truyền thông như Báo,
							Radio… thì việc sử dụng Internet ngày càng phổ biến. Truy cập
							Internet, chúng ta có được một kho thông tin khổng lồ phục vụ mọi
							nhu cầu, mục đích của chúng ta chỉ bằng một cái nhấp chuột.</p>
						<p>Nhận thức được nhu cầu tìm hiểu thông tin, giải trí của xã
							hội, là sự ra đời của hàng loạt website cho các mục đích thương
							mại, giải trí, tin tức…Để đáp ứng với việc cập nhật thông tin
							hàng ngày, tình hình xã hội, chính trị, thời sự, và sức khỏe… thì
							website tin tức ra đời là một nhu cầu tất yếu.</p>
						
						</p>
						<figure class="figure-img">
							<img class="img-responsive"
								src="${pageContext.request.contextPath}/img/about-1.jpg" alt="">
						</figure>
						<p>Do đó, chúng em đã vận dụng ngôn ngữ Java, phần mềm MySQL
							và công cụ Eclipse để xây dựng ứng dụng Website cung cấp tin tức
							công nghệ. Hoàn thành xong để tài, chúng em vô cùng biết ơn thầy,
							cô đã nhiệt tình giảng dạy, hướng dẫn và đặc biệt là giảng viên
							hướng dẫn Nguyễn Thái Cường, người trực tiếp hướng dẫn nhiệt tình
							cho chúng em trong suốt quá trình nghiên cứu và thực hiện đề tài
							này. Nhóm SVTH: Nhóm 8</p>
					</div>
					<div class="row section-row">
						<div class="col-md-6">
							<figure class="figure-img">
								<img class="img-responsive"
									src="${pageContext.request.contextPath}/img/about-2.jpg" alt="">
							</figure>
						</div>
						<div class="col-md-6">
							<h3>Các thành viên thực hiện:</h3>

							<ul class="list-style">
								<li><p>Nguyễn Đình Hiếu</p></li>
								<li><p>Nguyễn Việt Hưng</p></li>
								<li><p>Nguyễn Tiến Huy</p></li>
								<li><p>Vũ Ngọc Khánh</p></li>
								<li><p>Nguyễn Hoàng Sơn</p></li>
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
						<%@ include file="/WEB-INF/views/layout/mostPost.jsp"%>
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
	<%@ include file="/WEB-INF/views/layout/footer.jsp"%>
	<!-- /Footer -->

	<!-- jQuery Plugins -->
	<script src="${pageContext.request.contextPath}/js/jquery.min.js"></script>
	<script src="${pageContext.request.contextPath}/js/bootstrap.min.js"></script>
	<script src="${pageContext.request.contextPath}/js/main.js"></script>

</body>
</html>
