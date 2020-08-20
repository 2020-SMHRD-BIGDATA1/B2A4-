<%@page import="com.model.GaeDTO"%>
<%@page import="java.util.ArrayList"%>
<%@page import="com.model.GaeDAO"%>
<%@ page language="java" contentType="text/html; charset=EUC-KR"
	pageEncoding="EUC-KR"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="utf-8">
<meta http-equiv="x-ua-compatible" content="ie=edge">
<title>Personal | Teamplate</title>
<meta name="description" content="">
<meta name="viewport" content="width=device-width, initial-scale=1">
<link rel="manifest" href="site.webmanifest">
<link rel="shortcut icon" type="image/x-icon"
	href="assets/img/gaelogo.ico">

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
<link href="https://fonts.googleapis.com/css2?family=Jua&display=swap"
	rel="stylesheet">
<meta charset="EUC-KR">
<title>Insert title here</title>
<style>
.section h1 {
	text-align: center;
	font-weight: bold;
	font-size: 50px;
	font-family: "Jua";
}

.content, .vs {
	float: left;
	width: 33%;
	height: 500px;
	font-family: "Jua";
}

.vs h1 {
	position: relative;
	top: 50px;
	line-height: 400px;
	text-align: center;
	color: #670000;
	font-weight: bold;
	font-size:200px
	font-family: "Jua";
}

.content p {
	text-align: center;
	color: #670000;
	font-weight: bold;
	font-size: 25px;
	font-family: "Jua";
}

@font-face {
	src: url("Doc/fonts/BMJUA_ttf.ttf");
	font-family: "Jua";
}

:root {
	font-family: "Jua";
}
</style>
</head>
<body>
	<%@ include file="header.jsp"%>
	<main>
		<!--? Hero Area Start-->
		<div class="hero-area2 d-flex align-items-center">
			<div class="container">
				<div class="row ">
					<div class="col-xl-12">
						<!-- Hero Caption -->
						<div class="hero-cap pt-100"></div>
					</div>
				</div>
			</div>
		</div>
		<!--Hero Area End-->
		<!--? About 1 Start-->
		<section class="section">
			<div class="container">
				<div>
					<br> <br>
					<h1>
						<img src="img/icon1.png"> 매칭하기
					</h1>
					<br>
				</div>

				<div id="matching">
					<form action="chatReset.jsp" method="post">
						<div class="content left" align="center">
							<p>
								&lt 내 강아지와 비슷한 강아지 &gt <br><br>
								<img src="img/yohan.jpg"><br><br>
								<%
									GaeDAO GaeDao = new GaeDAO();
								
									ArrayList<GaeDTO> list = GaeDao.getGaeInfo(info.getMem_mail());
								%>
								<%for(int i = 0; i < list.size(); i++) { %>
								
								이름 : <%=list.get(i).getGae_name() %><br>
								나이 : <%=list.get(i).getGae_age() %>세<br>
								성별 : <%=list.get(i).getGae_gender() %><br>
								품종 : <%=list.get(i).getGae_kind() %>
								
								
								<%} %>
								<br><br> <input type="submit" value="채팅하기">
								
							</p>
						</div>
						<div class="vs">
							<h1>VS</h1>
						</div>
						<div class="content right" align="center">
							<p>
								&lt 내 강아지와 어울릴 것 같은 강아지 &gt <br><br>
								<img src="img/yohan.jpg"><br>
								<br> <input type="submit" value="채팅하기">
							</p>
						</div>
						<!-- Section Tittle -->

						<p>친목을 응원합니다</p>



						<!--  <div class="col-lg-6">
	                    <div class="about-img">
	                        <img src="assets/img/gallery/about1.png" alt="">
	                    </div>
	                </div>
			       	 
			       	 </div>-->

					</form>
				</div>
		</section>
		<!-- About  End-->
	</main>


	<footer>
		<div class="footer-wrappr">
			<div class="footer-top">
				<!-- Want To work -->
				<section class="wantToWork-area ">
					<div class="container">
						<div class="wants-wrapper w-padding2">
							<div class="row align-items-center justify-content-between">
								<div class="col-xl-7 col-lg-9 col-md-8">
									<div class="wantToWork-caption wantToWork-caption2">
										<h2>Do you want to know more about me?</h2>
									</div>
								</div>
								<div class="col-xl-2 col-lg-3 col-md-4">
									<a href="#" class="btn white-btn f-right sm-left">Download
										CV</a>
								</div>
							</div>
						</div>
					</div>
				</section>
				<!-- Want To work End -->
				<div class="container">
					<div class="row">
						<div class="col-lg-12">
							<!-- contact-form -->
							<div class="form-wrapper">
								<div class="row ">
									<div class="col-xl-12">
										<div class="small-tittle mb-30">
											<h4>Contact Me</h4>
										</div>
									</div>
								</div>
								<form id="contact-form" action="#" method="POST">
									<div class="row">
										<div class="col-lg-4 col-md-6">
											<div class="form-box user-icon mb-25">
												<input type="text" name="name" placeholder="Your name">
											</div>
										</div>
										<div class="col-lg-4 col-md-6">
											<div class="form-box email-icon mb-25">
												<input type="text" name="email" placeholder="Email">
											</div>
										</div>
										<div class="col-lg-4 col-md-6">
											<div class="form-box email-icon mb-25">
												<input type="text" name="email" placeholder="Subject">
											</div>
										</div>
										<div class="col-lg-12">
											<div class="form-box message-icon mb-25">
												<textarea name="message" id="message" placeholder="Message"></textarea>
											</div>
											<div class="submit-info">
												<button class="submit-btn2" type="submit">SendMessage</button>
											</div>
										</div>
									</div>
								</form>
							</div>
						</div>
					</div>
				</div>
			</div>
			<!-- footer-bottom area -->
			<div class="footer-bottom-area">
				<div class="container">
					<div class="footer-border">
						<div class="row align-items-center">
							<div class="col-xl-4 col-lg-4">
								<div class="footer-social">
									<a href="#"><i class="fab fa-twitter"></i></a> <a
										href="https://bit.ly/sai4ull"><i class="fab fa-facebook-f"></i></a>
									<a href="#"><i class="fab fa-pinterest-p"></i></a> <a href="#"><i
										class="fas fa-globe"></i></a> <a href="#"><i
										class="fab fa-instagram"></i></a>
								</div>
							</div>
							<div class="col-xl-8 col-lg-8">
								<div class="footer-copy-right f-right">
									<p>
										<!-- Link back to Colorlib can't be removed. Template is licensed under CC BY 3.0. -->
										Copyright &copy;
										<script>
											document.write(new Date()
													.getFullYear());
										</script>
										All rights reserved | This template is made with <i
											class="fa fa-heart" aria-hidden="true"></i> by <a
											href="https://colorlib.com" target="_blank">Colorlib</a>
										<!-- Link back to Colorlib can't be removed. Template is licensed under CC BY 3.0. -->
									</p>
								</div>
							</div>
						</div>
					</div>
				</div>
			</div>
		</div>
	</footer>
</body>
</html>