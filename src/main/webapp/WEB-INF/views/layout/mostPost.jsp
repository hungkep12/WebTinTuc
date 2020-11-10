<%@ page language="java" contentType="text/html; charset=utf-8"
	pageEncoding="utf-8"%>
<!-- Tich hop jstl vao jsp -->
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>

<c:forEach var="mostPost" items="${mostPost}" begin="0" end="3">
	<!-- post -->
	<div class="post post-widget">
		<a class="post-img" href="/blog-post/${mostPost.id}-${mostPost.title}"><img src="${mostPost.image}" alt=""></a>
		<div class="post-body">
			<h3 class="post-title">
				<a href="/blog-post/${mostPost.id}-${mostPost.title}">${mostPost.title}</a>
			</h3>
		</div>
	</div>
	<!-- /post -->
</c:forEach>