<%@ page language="java" contentType="text/html; charset=utf-8"
	pageEncoding="utf-8"%>
<!-- Tich hop jstl vao jsp -->
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>
<%@ page import="java.util.Date"%>
<!DOCTYPE html>
<html lang="en">
<head>
<meta charset="utf-8">
<meta http-equiv="X-UA-Compatible" content="IE=edge">
<meta name="viewport" content="width=device-width, initial-scale=1">
<!-- The above 3 meta tags *must* come first in the head; any other head content must come *after* these tags -->


<%@ include file="/WEB-INF/views/layout/include.jsp"%>
</head>
<body>

	<!-- Header -->
	<header id="header">
		<%@ include file="/WEB-INF/views/layout/header.jsp"%>
		<!-- Page Header -->
		<c:forEach var="post" items="${post}">
			<div id="post-header" class="page-header">
				<div class="background-img"
					style="background-image: url('${pageContext.request.contextPath}/img/post-page.jpg');"></div>
				<div class="container">
					<div class="row">
						<div class="col-md-10">
							<div class="post-meta">
								<a class="post-category cat-${post.category.id}"
									href="/category/${post.category.name}">${post.category.name}</a>
								<span class="post-date"><fmt:formatDate value="${post.createdDate}" pattern="dd/MM/yyyy"/></span></span>
							</div>
							<h1>${post.title}</h1>
						</div>
					</div>
				</div>
			</div>
		</c:forEach>
		<!-- /Page Header -->
		<!-- /Page Header -->
	</header>
	<!-- /Header -->

	<!-- section -->
	<div class="section">
		<!-- container -->
		<div class="container">
			<!-- row -->
			<div class="row">
				<!-- Post content -->
				<div class="col-md-8">
					<c:forEach var="post" items="${post}">
						<div class="section-row sticky-container">
							<div class="main-post">
								<h3>${post.title}</h3>
								<p>${post.description}</p>
								<figure class="figure-img">
									<img class="img-responsive"
										src="${pageContext.request.contextPath}/img/${post.image}"
										alt="">
									
								</figure>
								<p>${post.details}</p>
							</div>
							<div class="post-shares sticky-shares">
								<a href="#" class="share-facebook"><i class="fa fa-facebook"></i></a>
								<a href="#" class="share-twitter"><i class="fa fa-twitter"></i></a>
								<a href="#" class="share-google-plus"><i
									class="fa fa-google-plus"></i></a> <a href="#"
									class="share-pinterest"><i class="fa fa-pinterest"></i></a> <a
									href="#" class="share-linkedin"><i class="fa fa-linkedin"></i></a>
								<a href="#"><i class="fa fa-envelope"></i></a>
							</div>
						</div>
					</c:forEach>
					<!-- ad -->
					<div class="section-row text-center">
						<a href="#" style="display: inline-block; margin: auto;"> <img
							class="img-responsive"
							src="${pageContext.request.contextPath}/img/ad-2.jpg" alt="">
						</a>
					</div>
					<!-- ad -->

					<!-- author -->
					<!-- reply -->
					<div class="section-row">
						<div class="section-title">
							<h2>Bình luận</h2>

						</div>
						<c:forEach var="post" items="${post}">
							<form class="post-reply"
								action="/blog-post/addComment/${post.id}-${post.title}"
								method="post" modelAttribute="comments">

								<div class="row">
									<hidden name=""> <!-- <div class="col-md-4">
										<div class="form-group">
											<span>Name *</span>
											<input class="input" type="text" name="name">
										</div>
									</div>-->
									<div class="col-md-4">
										<div class="form-group">

											<%
												if (session.getAttribute("emailUser") != null) {
											%>

											<input class="input" type="hidden" id="idUser" name="user.id" required=""
												value="<%=session.getAttribute("idUser")%>">

											<%
												}
											%>
										</div>
									</div>
									<div class="col-md-4">
										<div class="form-group">
											<input class="input" type="hidden" name="post" id="idPost"
												value="${post.id }">
										</div>
									</div>


									<div class="col-md-12">
										<div class="form-group">
											<textarea class="input" type="text" id="content"
												name="content" placeholder="Bình luận khi bạn đã đăng nhập tài khoản" required=""></textarea>
										</div>
										<button class="primary-button" id="comment">Bình luận</button>
									</div>
								</div>

							</form>
						</c:forEach>
					</div>
					<!-- comments -->
					<div class="section-row">
						<div class="post-comments">
							<c:forEach var="comment" items="${comment}">
								<!-- comment -->
								<div class="media">
									<div class="media-left">
										
											<%
												if (session.getAttribute("imgUser") != null) {
													
											%>
										 	<img class="media-object" src="${pageContext.request.contextPath}/img/avatar.png" alt="">
										<%
											} else {
										%>
											<img class="media-object" src="${pageContext.request.contextPath}/img/<%=session.getAttribute("imgUser")%>alt="">
										<%
											}
										%>
										
									</div>
									<div class="media-body">
										<div class="media-heading">
											<h4>${comment.user.userName}</h4>
											<span class="time">${comment.dateTime}</span> <a href="#"
												class="reply">Reply</a>
										</div>
										<p>${comment.content}</p>
									</div>
								</div>

								<!-- /comment -->
							</c:forEach>
						</div>

					</div>
					<!-- /comments -->
					<!-- /reply -->
				</div>
				<!-- /author -->
				<!-- /Post content -->

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

						<%@ include file="/WEB-INF/views/layout/mostPost.jsp"%>
					</div>
					<!-- /post widget -->

					<!-- catagories -->
					<%@ include file="/WEB-INF/views/layout/categories.jsp"%>
					<!-- /catagories -->

				</div>
				<!-- /aside -->
			</div>
			<!-- /row -->
		</div>
		<!-- /container -->
	</div>
	<!-- /section -->

	<!-- Footer -->
	<%@include file="/WEB-INF/views/layout/footer.jsp"%>
	<!-- /Footer -->

	<!-- jQuery Plugins -->
	<script src="${pageContext.request.contextPath}/js/jquery.min.js"></script>
	<script src="${pageContext.request.contextPath}/js/bootstrap.min.js"></script>
	<script src="${pageContext.request.contextPath}/js/main.js"></script>
	<script>
		 $("#comment").click(function(e) {
			if ($("#idUser").val() == null) {
				alert("Bạn cần đăng nhập mới bình luận được!");
				return false;
			}if($("#content").val() == null) {
				alert("Bạn cần viết bình luận!");
				return false;
			}else{
				success : function(jsonResult) {
					alert(jsonResult.message);
				}
			}
			/* else {
				e.preventDefault();
				var data = {
					"content" : $("#content").val(),
					"idPost" : $("#idPost").val(),//dữ liệu được truyền, # là id của input
					"idUser" : $("#idUser").val()
				};
				//		data["email"] = $('#'+elementIdOfEmail).val();

				$.ajax({
					url : "/comment",
					type : "post",
					contentType : "application/json", // d? li?u g?i lên web-service có d?ng là json.
					data : JSON.stringify(data), // object json -> string json

					dataType : "json", // d? li?u t? web-service tr? v? là json.
					success : function(jsonResult) { // du?c g?i khi web-service tr? v? d? li?u.
						alert(jsonResult.message);// trả về thông báo 
						window.location.href = "http://localhost:8080/blog_post/"+$("#idPost").val();
					}
				});
			} */

		}); 
	</script>
</body>
</html>
