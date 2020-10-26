<%@ page language="java" contentType="text/html; charset=utf-8"
	pageEncoding="utf-8"%>
<!-- Tich hop jstl vao jsp -->
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>

<div class="aside-widget">
	<div class="section-title">
		<h2>LOẠI TIN TỨC</h2>
	</div>
	<div class="category-widget">
		<ul>
			<c:forEach var="categories" items="${categories}">
				<li><a href="/category/${categories.name }" class="cat-${categories.id}">${categories.name}</a></li>
			</c:forEach>
			
		</ul>
	</div>
</div>