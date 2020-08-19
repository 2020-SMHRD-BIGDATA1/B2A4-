<%@page import="com.model.MemberDTO"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="EUC-KR">
<title>Insert title here</title>
</head>
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
							<a href="index.jsp"><img src="img/yohan.jpg" alt=""></a>
						</div>
						<!-- Main-menu -->
						<div class="main-menu f-right d-none d-lg-block">
							<nav>
								<ul id="navigation">
									<li class="active"><a href="index.jsp">Home</a></li>
									<li><a href="about.jsp">Matching</a></li>
									<li><a href="RealChat.jsp">Chat</a></li>
									<li><a href="blog.jsp">Board</a>
										<ul class="submenu">
											<li><a href="blog.jsp">Free</a></li>
											<li><a href="blog_details.jsp">ggulTip</a></li>
											<li><a href="elements.jsp">Q&A</a></li>
										</ul></li>
									<li><a href="contact.jsp">Map</a></li>
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