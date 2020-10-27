<%@ page language="java" contentType="text/html; charset=utf-8"
	pageEncoding="utf-8"%>
<!-- Tich hop jstl vao jsp -->
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>

<footer id="footer">
	<!-- container -->
	<div class="container">
		<!-- row -->
		<div class="row">
			<div class="col-md-5">
				<div class="footer-widget">
					<div class="footer-logo">
						<a href="/index" class="logo"><img
							src="${pageContext.request.contextPath}/img/logo.png" alt=""></a>
					</div>
					<ul class="footer-nav">
						<li><a href="#">Privacy Policy</a></li>
						<li><a href="#">Advertisement</a></li>
					</ul>
					<div class="footer-copyright">
						<span>&copy; <!-- Link back to Colorlib can't be removed. Template is licensed under CC BY 3.0. -->
							Copyright &copy;<script>
								document.write(new Date().getFullYear());
							</script>
							All rights reserved | This template is made with <i
							class="fa fa-heart-o" aria-hidden="true"></i> by <a
							href="https://colorlib.com" target="_blank">Colorlib</a> <!-- Link back to Colorlib can't be removed. Template is licensed under CC BY 3.0. --></span>
					</div>
				</div>
			</div>

			<div class="col-md-4">
				<div class="row">
					<div class="col-md-6">
						<div class="footer-widget">
							<h3 class="footer-title">About Us</h3>
							<ul class="footer-links">
								<li><a href="/about">About Us</a></li>
								<li><a href="#">Join Us</a></li>
								<li><a href="/contact">Contacts</a></li>
							</ul>
						</div>
					</div>
					<div class="col-md-6">
						<div class="footer-widget">
							<h3 class="footer-title">Catagories</h3>
							<ul class="footer-links">
								<li><a href="/category">Web Design</a></li>
								<li><a href="/category">JavaScript</a></li>
								<li><a href="/category">Css</a></li>
								<li><a href="/category">Jquery</a></li>
							</ul>
						</div>
					</div>
				</div>
			</div>

			<div class="col-md-3">
				<div class="footer-widget">
					<h3 class="footer-title">Join our Newsletter</h3>
					<div class="footer-newsletter">
						<form>
							<input class="input" type="email" name="newsletter"
								placeholder="Enter your email">
							<button class="newsletter-btn">
								<i class="fa fa-paper-plane"></i>
							</button>
						</form>
					</div>
					<ul class="footer-social">
						<li><a href="#"><i class="fa fa-facebook"></i></a></li>
						<li><a href="#"><i class="fa fa-twitter"></i></a></li>
						<li><a href="#"><i class="fa fa-google-plus"></i></a></li>
						<li><a href="#"><i class="fa fa-pinterest"></i></a></li>
					</ul>
				</div>
			</div>

		</div>
		<!-- /row -->
	</div>
	<!-- /container -->
</footer>