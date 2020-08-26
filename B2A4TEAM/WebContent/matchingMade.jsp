<%@page import="java.util.Random"%>
<%@page import="com.model.GaeDTO"%>
<%@page import="java.util.ArrayList"%>
<%@page import="com.model.GaeDAO"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
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
<meta charset="UTF-8">
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
	font-size: 200px font-family: "Jua";
}

.content p {
	text-align: center;
	color: #670000;
	font-weight: bold;
	font-size: 25px;
	font-family: "Jua";
}

a button {
	border: solid 1px whilte;
	background-color: #670000;
}

.container {
	height: 900px;
}

.content img {
	max-height: 200px;
	max-width: 200px;
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
						<img src="img/matching.png"> 매칭하기
					</h1>
					<br>
				</div>

				<div id="matching">
					<div class="content left" align="center">
						<%
							GaeDAO GaeDao = new GaeDAO();

						GaeDTO dto = GaeDao.getGaeInfo(info.getMem_mail());
						String mycharacter = GaeDao.getCharacter(info.getMem_mail());
						//System.out.println(mycharacter);

						ArrayList<String> group_list = GaeDao.getGroup(mycharacter,info.getMem_mail());
						System.out.println(group_list.get(0));
						Random random = new Random();
						int ran = random.nextInt(group_list.size());
						System.out.println("랜덤숫자:"+ran);
						String random_group_mail = group_list.get(ran);
						System.out.println("랜덤으로 뽑은 메일:"+random_group_mail);
						GaeDTO otherdogInfo_dto = GaeDao.getGaeInfo(random_group_mail);
						System.out.println("다른개 메일:"+otherdogInfo_dto.getGae_name());
						
						%>
						<p>
							&lt 내 강아지와 비슷한 강아지 &gt <br> <br> <img
								src='imgFolder/<%=otherdogInfo_dto.getGae_img()%>'><br>
							<br>

							<!--메일 :dto.getMem_mail()l() %><br>  -->
							<img src="img/bone1.png">&nbsp;이름 :
							<%=otherdogInfo_dto.getGae_name()%><br> <img
								src="img/bone1.png">&nbsp;나이 :
							<%=otherdogInfo_dto.getGae_age()%>세<br> <img
								src="img/bone1.png">&nbsp;성별 :
							<%=otherdogInfo_dto.getGae_sex()%><br> <img
								src="img/bone1.png">&nbsp;품종 :
							<%=otherdogInfo_dto.getGae_species()%>

							<!-- mem_mail 채팅상대 구분하는 상대방 메일  -->
							<br> <br> <a
								href="chatReset.jsp?mem_mail=<%=otherdogInfo_dto.getMem_mail()%>">
								<button>채팅하기</button>
							</a>


						</p>
					</div>
					<div class="vs">
						<h1>VS</h1>
					</div>
					<div class="content right" align="center">
						<p>
							&lt 내 강아지와 어울릴 것 같은 강아지 &gt <br> <br> <img
								src="img/yohan.jpg"><br> <br> <img
								src="img/bone1.png">&nbsp;이름 :
							<%=dto.getGae_name()%><br> <img src="img/bone1.png">&nbsp;나이
							:
							<%=dto.getGae_age()%>세<br> <img src="img/bone1.png">&nbsp;성별
							:
							<%=dto.getGae_sex()%><br> <img src="img/bone1.png">&nbsp;품종
							:
							<%=dto.getGae_species()%>



							<br> <br> <a
								href="chatReset.jsp?mem_mail=<%=dto.getMem_mail()%>">
								<button>채팅하기</button>
							</a>

						</p>
					</div>
					<!-- Section Tittle -->




				</div>


				<!-- Section Tittle -->




				<!--  <div class="col-lg-6">
	                    <div class="about-img">
	                        <img src="assets/img/gallery/about1.png" alt="">
	                    </div>
	                </div>
			       	 
			       	 </div>-->

			</div>
		</section>
		<!-- About  End-->
	</main>
	<%@ include file="footer.jsp"%>
</body>
</html>