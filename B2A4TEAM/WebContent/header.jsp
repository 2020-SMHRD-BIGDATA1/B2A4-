<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@page import="com.model.MemberDTO"%>
<!doctype html>
<html class="no-js" lang="zxx">
<head>
<meta charset="UTF-8">
<meta http-equiv="x-ua-compatible" content="ie=edge">
<title>GaeManDa</title>
<meta name="description" content="">
<meta name="viewport" content="width=device-width, initial-scale=1">
<link rel="manifest" href="site.webmanifest">
<link rel="shortcut icon" type="image/x-icon" href="assets/img/gaelogo.ico">

<!-- CSS here -->
<link rel="stylesheet" href="assets/css/bootstrap.min.css">
<link rel="stylesheet" href="assets/css/owl.carousel.min.css">
<link rel="stylesheet" href="assets/css/slicknav.css">
<link rel="stylesheet" href="assets/css/flaticon.css">
<link rel="stylesheet" href="assets/css/progressbar_barfiller.css">
<link rel="stylesheet" href="assets/css/gijgo.css">
<link rel="stylesheet" href="assets/css/animate.min.css">
<link rel="stylesheet" href="assets/css/animated-headline.css">
<link rel="stylesheet" href="assets/css/magnific-popup.css">
<link rel="stylesheet" href="assets/css/fontawesome-all.min.css">
<link rel="stylesheet" href="assets/css/themify-icons.css">
<link rel="stylesheet" href="assets/css/slick.css">
<link rel="stylesheet" href="assets/css/nice-select.css">
<link rel="stylesheet" href="assets/css/style.css">
<link rel="stylesheet" href="Doc/css/headStyle.css">
<style type="text/css">	
	.logoImg {
		margin-top : 50px;
		max-width: 180px;
		max-height: 180px;
	}
</style>
<script>
	window.onload = function() {
		document.getElementById('logChkMat').onclick = function() {
			alert('로그인을 해주세요.');
		};
		document.getElementById('logChkChat').onclick = function() {
			alert('로그인을 해주세요.');
		};
		document.getElementById('logChkBoard').onclick = function() {
			alert('로그인을 해주세요.');
		};
		document.getElementById('mapReady').onclick = function() {
			alert('해당서비스는 준비중입니다.');
		};
	}
</script>
<body>
	<header>
		<%
			MemberDTO info = (MemberDTO) session.getAttribute("info");
		%>
		<!-- ? Preloader Start -->
		<div id="preloader-active">
			<div
				class="preloader d-flex align-items-center justify-content-center">
				<div class="preloader-inner position-relative">
					<div class="preloader-circle"></div>
					<div class="preloader-img pere-text">
						<img src="assets/img/logo/loder.png" alt="">
					</div>
				</div>
			</div>
		</div>
		<!-- Preloader Start -->
		<div class="header-area header-transparent">
			<div class="main-header header-sticky">
				<div class="container-fluid">
					<div
						class="menu-wrapper d-flex align-items-center justify-content-between">
						<!-- Logo -->
						<div class="logo">
							<a href="index.jsp"><img class="logoImg" src="img/dog.png" alt=""></a>
						</div>
						<!-- Main-menu -->
						<div class="main-menu f-right d-none d-lg-block">
							<nav>
								<ul id="navigation">
									<li><a href="index.jsp">홈</a></li>
									<!--  class="active" <<밑줄 -->
									<li><a <%if (info != null) {%> href="matchingMade.jsp"
										<%} else {%> href="loginForm.jsp" id="logChkMat" <%}%>>매칭하기</a></li>
									<li><a <%if (info != null) {%> href="chatReset.jsp"
										<%} else {%> href="loginForm.jsp" id="logChkChat" <%}%>>채팅하기</a></li>
									<li><a <%if (info != null) {%> href="blog.jsp"
										<%} else {%> href="loginForm.jsp" id="logChkBoard" <%}%>>게시판</a>
										<%
											if (info != null) {
										%>
										<ul class="submenu">
											<li><a href="blog.jsp">자유게시판</a></li>
											<li><a href="blog_details.jsp">정보게시판</a></li>
											<li><a href="elements.jsp">질문게시판</a></li>
										</ul> <%
 	} else {

 }
 %></li>
									<li><a href="contact.jsp" id="mapReady">지도</a></li>
								</ul>
							</nav>
						</div>
						<!-- Header-btn -->
						<%
							if (info != null) {
						%>
						<div class="header-info-right d-none d-lg-block">
							<a href="LogoutService" class="btn header-btn">Logout<i
								class="ti-arrow-right"></i></a> <a href="update.jsp"
								class="btn header-btn">My Page <i class="ti-arrow-right"></i></a>
						</div>
						<%
							} else {
						%>
						<div class="header-info-right d-none d-lg-block">
							<a href="loginForm.jsp" class="btn header-btn">Login <i
								class="ti-arrow-right"></i></a>
						</div>
						<%
							}
						%>


						<!-- Mobile Menu -->
						<div class="col-12">
							<div class="mobile_menu d-block d-lg-none"></div>
						</div>
					</div>
				</div>
			</div>
		</div>
		<!-- Header End -->
	</header>
	<!-- JS here -->

	<script src="./assets/js/vendor/modernizr-3.5.0.min.js"></script>
	<!-- Jquery, Popper, Bootstrap -->
	<script src="./assets/js/vendor/jquery-1.12.4.min.js"></script>
	<script src="./assets/js/popper.min.js"></script>
	<script src="./assets/js/bootstrap.min.js"></script>
	<!-- Jquery Mobile Menu -->
	<script src="./assets/js/jquery.slicknav.min.js"></script>

	<!-- Jquery Slick , Owl-Carousel Plugins -->
	<script src="./assets/js/owl.carousel.min.js"></script>
	<script src="./assets/js/slick.min.js"></script>
	<!-- One Page, Animated-HeadLin -->
	<script src="./assets/js/wow.min.js"></script>
	<script src="./assets/js/animated.headline.js"></script>
	<script src="./assets/js/jquery.magnific-popup.js"></script>

	<!-- Date Picker -->
	<script src="./assets/js/gijgo.min.js"></script>
	<!-- Nice-select, sticky -->
	<script src="./assets/js/jquery.nice-select.min.js"></script>
	<script src="./assets/js/jquery.sticky.js"></script>
	<!-- Progress -->
	<script src="./assets/js/jquery.barfiller.js"></script>

	<!-- counter , waypoint,Hover Direction -->
	<script src="./assets/js/jquery.counterup.min.js"></script>
	<script src="./assets/js/waypoints.min.js"></script>
	<script src="./assets/js/jquery.countdown.min.js"></script>
	<script src="./assets/js/hover-direction-snake.min.js"></script>

	<!-- contact js -->
	<script src="./assets/js/contact.js"></script>
	<script src="./assets/js/jquery.form.js"></script>
	<script src="./assets/js/jquery.validate.min.js"></script>
	<script src="./assets/js/mail-script.js"></script>
	<script src="./assets/js/jquery.ajaxchimp.min.js"></script>

	<!-- Jquery Plugins, main Jquery -->
	<script src="./assets/js/plugins.js"></script>
	<script src="./assets/js/main.js"></script>