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

<%@ include file="/WEB-INF/views/layout/include.jsp"%>/>

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
							<li><a href="/index">Home</a></li>
							<li>Liên hệ</li>
						</ul>
						<h1>LIÊN HỆ</h1>
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
				<div class="col-md-6">
					<div class="section-row">
						<h3>Thông tin liên hệ</h3>
						<p>Nếu gặp sự cố trong khi sử dụng bạn có thể liên hệ với chúng tôi qua những thông tin liên hệ dưới đây</p>
						<ul class="list-style">
							<li><p>
									<strong>Email:</strong> <a href="#">WebTinTuc_Nhom8@gmail.com</a>
								</p></li>
							<li><p>
									<strong>Phone:</strong> 0979968806
								</p></li>
							<li><p>
									<strong>Address:</strong> 
								</p></li>
						</ul>
					</div>
				</div>
				<div class="col-md-5 col-md-offset-1">
					<div class="section-row">
						<h3>Gửi tin nhắn</h3>
						<form action="/contact-bind-data" modelAttribute="contact" method="post">
							<div class="row">
								<div class="col-md-7">
									<div class="form-group">
										<span>Email:</span> <input class="input" type="email"
											name="email" value="<%=session.getAttribute("emailUser")%>">
									</div>
								</div>
								<div class="col-md-7">
									<div class="form-group">
										<span>Tên:</span> <input class="input" type="text"
											name="fullName" value="<%=session.getAttribute("nameUser")%>">
									</div>
								</div>
								<div class="col-md-12">
									<div class="form-group">
										<span>Nội dung</span>
										<textarea class="input" name="content" placeholder="Message"></textarea>
									</div>
									<input type="submit" id="contact" class="primary-button"
										value="Gửi">
									</button>
								</div>
							</div>
						</form>
					</div>
				</div>
			</div>
			<!-- /row -->
		</div>
		<!-- /container -->
	</div>
	<!-- /section -->

	<!-- Footer -->
	<%@ include file="/WEB-INF/views/layout/footer.jsp"%>
	<!-- /Footer -->
	<script>
		/* $("#contact").click(function(e) {

			e.preventDefault();
			var data = {
				"content" : $("#content").val(),
				"email" : $("#email").val(),
				"fullName" : $("#fullName").val()
			//dữ liệu được truyền, # là id của input

			};
			//		data["email"] = $('#'+elementIdOfEmail).val();

			$.ajax({
				url : "/contact-bind-data",
				type : "get",
				contentType : "application/json", // d? li?u g?i lên web-service có d?ng là json.
				data : JSON.stringify(data), // object json -> string json

				dataType : "json", // d? li?u t? web-service tr? v? là json.
				success : function(jsonResult) { // du?c g?i khi web-service tr? v? d? li?u.
					alert(jsonResult.message);// trả về thông báo 
				}
			});

		}); */
	</script>
	<!-- jQuery Plugins -->
	<script src="${pageContext.request.contextPath}/js/jquery.min.js"></script>
	<script src="${pageContext.request.contextPath}/js/bootstrap.min.js"></script>
	<script src="${pageContext.request.contextPath}/js/main.js"></script>


</body>
</html>
