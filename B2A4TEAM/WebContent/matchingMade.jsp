<%@page import="java.util.Collections"%>
<%@page import="java.util.Collection"%>
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
						String mycharacter = GaeDao.getCharacter(info.getMem_mail()); //나의 성향을 db에서 가져옴
						System.out.println("로그인 한 갱쥐의 성향" + mycharacter); // 잘 넘어옴

						ArrayList<String> group_list1 = GaeDao.getGroup(mycharacter, info.getMem_mail()); //group_list 이메일리스트

						System.out.println("실험삼아 그룹리스트에 첫번째 아이: " + group_list1.get(0));
						
						Random random = new Random();
						int ran = random.nextInt(group_list1.size());
						System.out.println("몇번 아이가 랜덤으로 걸렸을까?? :" + ran);

						String random_group_mail = group_list1.get(ran);
						System.out.println("랜덤으로 뽑힌 갱쥐의 메일 : " + random_group_mail);

						GaeDTO otherdogInfo_dto = GaeDao.getGaeInfo(random_group_mail);
						System.out.println("다른개 메일:" + otherdogInfo_dto.getGae_name());
						%>
						<p>
							<%!String dog_sex = null;%>
							<%!String dog_species = null;%>
							<%
								if (otherdogInfo_dto.getGae_sex().equals("1")) {
								dog_sex = "여아";
							} else {
								dog_sex = "남아";
							}
							%>
							<%
								if (otherdogInfo_dto.getGae_species().equals("1")) {
								dog_species = "골든 리트리버";
							} else if (otherdogInfo_dto.getGae_species().equals("2")) {
								dog_species = "그레이하운드";
							} else if (otherdogInfo_dto.getGae_species().equals("3")) {
								dog_species = "뉴펀들랜드";
							} else if (otherdogInfo_dto.getGae_species().equals("4")) {
								dog_species = "닥스훈트";
							} else if (otherdogInfo_dto.getGae_species().equals("5")) {
								dog_species = "도베르만";
							} else if (otherdogInfo_dto.getGae_species().equals("6")) {
								dog_species = "레브라도 리트리버";
							} else if (otherdogInfo_dto.getGae_species().equals("7")) {
								dog_species = "말라뮤트";
							} else if (otherdogInfo_dto.getGae_species().equals("8")) {
								dog_species = "말티즈";
							} else if (otherdogInfo_dto.getGae_species().equals("9")) {
								dog_species = "믹스";
							} else if (otherdogInfo_dto.getGae_species().equals("10")) {
								dog_species = "보더콜리";
							} else if (otherdogInfo_dto.getGae_species().equals("11")) {
								dog_species = "불독";
							} else if (otherdogInfo_dto.getGae_species().equals("12")) {
								dog_species = "비글";
							} else if (otherdogInfo_dto.getGae_species().equals("13")) {
								dog_species = "비숑프리제";
							} else if (otherdogInfo_dto.getGae_species().equals("14")) {
								dog_species = "빠삐용";
							} else if (otherdogInfo_dto.getGae_species().equals("15")) {
								dog_species = "샤페이";
							} else if (otherdogInfo_dto.getGae_species().equals("16")) {
								dog_species = "슈나우저";
							} else if (otherdogInfo_dto.getGae_species().equals("17")) {
								dog_species = "스피츠";
							} else if (otherdogInfo_dto.getGae_species().equals("18")) {
								dog_species = "시바견";
							} else if (otherdogInfo_dto.getGae_species().equals("19")) {
								dog_species = "시츄";
							} else if (otherdogInfo_dto.getGae_species().equals("20")) {
								dog_species = "아메리칸 불리";
							} else if (otherdogInfo_dto.getGae_species().equals("21")) {
								dog_species = "요크셔테리어";
							} else if (otherdogInfo_dto.getGae_species().equals("22")) {
								dog_species = "웰시코기";
							} else if (otherdogInfo_dto.getGae_species().equals("23")) {
								dog_species = "진돗개";
							} else if (otherdogInfo_dto.getGae_species().equals("24")) {
								dog_species = "치와와";
							} else if (otherdogInfo_dto.getGae_species().equals("25")) {
								dog_species = "코카스파니엘";
							} else if (otherdogInfo_dto.getGae_species().equals("26")) {
								dog_species = "테리어";
							} else if (otherdogInfo_dto.getGae_species().equals("27")) {
								dog_species = "퍼그";
							} else if (otherdogInfo_dto.getGae_species().equals("28")) {
								dog_species = "페키니즈";
							} else if (otherdogInfo_dto.getGae_species().equals("29")) {
								dog_species = "포메라니안";
							} else if (otherdogInfo_dto.getGae_species().equals("30")) {
								dog_species = "미니어쳐 푸들";
							} else if (otherdogInfo_dto.getGae_species().equals("31")) {
								dog_species = "스탠다드 푸들";
							} else if (otherdogInfo_dto.getGae_species().equals("32")) {
								dog_species = "토이 푸들";
							} else if (otherdogInfo_dto.getGae_species().equals("33")) {
								dog_species = "프렌치 불독";
							} else if (otherdogInfo_dto.getGae_species().equals("34")) {
								dog_species = "허스키";
							} else if (otherdogInfo_dto.getGae_species().equals("35")) {
								dog_species = "기타";
							}
							%>



							&lt 내 강아지와 비슷한 강아지 &gt <br> <br> <img
								src='imgFolder/<%=otherdogInfo_dto.getGae_img()%>'><br>
							<br>
							<!--메일 :dto.getMem_mail()l() %><br>  -->
							<img src="img/bone1.png">&nbsp;이름 :
							<%=otherdogInfo_dto.getGae_name()%><br> <img
								src="img/bone1.png">&nbsp;나이 :
							<%=otherdogInfo_dto.getGae_age()%>세<br> <img
								src="img/bone1.png">&nbsp;성별 :
							<%=dog_sex%><br> <img src="img/bone1.png">&nbsp;품종 :
							<%=dog_species%>

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

							<%
								ArrayList<String> group_list2 = GaeDao.getOtherGroup(mycharacter); // 로그인한 사람 성향 보내서  !=

							System.out.println("---------------------------"); //왼쪽 오른쪽 출력문 구분선
							int other_ran = random.nextInt(group_list2.size());
							System.out.println("몇번 아이가 랜덤으로 걸렸을까?? :" + other_ran);

							String random_group_mail2 = group_list2.get(other_ran);
							System.out.print("랜덤으로 뽑힌 갱쥐의 메일 : " + random_group_mail2);
							GaeDTO otherdogInfo_dto2 = GaeDao.getGaeInfo(random_group_mail2);
							%>
							<%!String dog_sex2 = null;%>
							<%!String dog_species2 = null;%>
							<%
								if (otherdogInfo_dto2.getGae_sex().equals("1")) {
								dog_sex2 = "여아";
							} else {
								dog_sex2 = "남아";
							}
							%>
							<%
								if (otherdogInfo_dto2.getGae_species().equals("1")) {
								dog_species2 = "골든 리트리버";
							} else if (otherdogInfo_dto2.getGae_species().equals("2")) {
								dog_species2 = "그레이하운드";
							} else if (otherdogInfo_dto2.getGae_species().equals("3")) {
								dog_species2 = "뉴펀들랜드";
							} else if (otherdogInfo_dto2.getGae_species().equals("4")) {
								dog_species2 = "닥스훈트";
							} else if (otherdogInfo_dto2.getGae_species().equals("5")) {
								dog_species2 = "도베르만";
							} else if (otherdogInfo_dto2.getGae_species().equals("6")) {
								dog_species2 = "레브라도 리트리버";
							} else if (otherdogInfo_dto2.getGae_species().equals("7")) {
								dog_species2 = "말라뮤트";
							} else if (otherdogInfo_dto2.getGae_species().equals("8")) {
								dog_species2 = "말티즈";
							} else if (otherdogInfo_dto2.getGae_species().equals("9")) {
								dog_species2 = "믹스";
							} else if (otherdogInfo_dto2.getGae_species().equals("10")) {
								dog_species2 = "보더콜리";
							} else if (otherdogInfo_dto2.getGae_species().equals("11")) {
								dog_species2 = "불독";
							} else if (otherdogInfo_dto2.getGae_species().equals("12")) {
								dog_species2 = "비글";
							} else if (otherdogInfo_dto2.getGae_species().equals("13")) {
								dog_species2 = "비숑프리제";
							} else if (otherdogInfo_dto2.getGae_species().equals("14")) {
								dog_species2 = "빠삐용";
							} else if (otherdogInfo_dto2.getGae_species().equals("15")) {
								dog_species2 = "샤페이";
							} else if (otherdogInfo_dto2.getGae_species().equals("16")) {
								dog_species2 = "슈나우저";
							} else if (otherdogInfo_dto2.getGae_species().equals("17")) {
								dog_species2 = "스피츠";
							} else if (otherdogInfo_dto2.getGae_species().equals("18")) {
								dog_species2 = "시바견";
							} else if (otherdogInfo_dto2.getGae_species().equals("19")) {
								dog_species2 = "시츄";
							} else if (otherdogInfo_dto2.getGae_species().equals("20")) {
								dog_species2 = "아메리칸 불리";
							} else if (otherdogInfo_dto2.getGae_species().equals("21")) {
								dog_species2 = "요크셔테리어";
							} else if (otherdogInfo_dto2.getGae_species().equals("22")) {
								dog_species2 = "웰시코기";
							} else if (otherdogInfo_dto2.getGae_species().equals("23")) {
								dog_species2 = "진돗개";
							} else if (otherdogInfo_dto2.getGae_species().equals("24")) {
								dog_species2 = "치와와";
							} else if (otherdogInfo_dto2.getGae_species().equals("25")) {
								dog_species2 = "코카스파니엘";
							} else if (otherdogInfo_dto2.getGae_species().equals("26")) {
								dog_species2 = "테리어";
							} else if (otherdogInfo_dto2.getGae_species().equals("27")) {
								dog_species2 = "퍼그";
							} else if (otherdogInfo_dto2.getGae_species().equals("28")) {
								dog_species2 = "페키니즈";
							} else if (otherdogInfo_dto2.getGae_species().equals("29")) {
								dog_species2 = "포메라니안";
							} else if (otherdogInfo_dto2.getGae_species().equals("30")) {
								dog_species2 = "미니어쳐 푸들";
							} else if (otherdogInfo_dto2.getGae_species().equals("31")) {
								dog_species2 = "스탠다드 푸들";
							} else if (otherdogInfo_dto2.getGae_species().equals("32")) {
								dog_species2 = "토이 푸들";
							} else if (otherdogInfo_dto2.getGae_species().equals("33")) {
								dog_species2 = "프렌치 불독";
							} else if (otherdogInfo_dto2.getGae_species().equals("34")) {
								dog_species2 = "허스키";
							} else if (otherdogInfo_dto2.getGae_species().equals("35")) {
								dog_species2 = "기타";
							}
							%>




							&lt 내 강아지와 어울릴 것 같은 강아지 &gt <br> <br> <img
								src='imgFolder/<%=otherdogInfo_dto2.getGae_img()%>'><br>
							<br>
							<!--메일 :dto.getMem_mail()l() %><br>  -->
							<img src="img/bone1.png">&nbsp;이름 :
							<%=otherdogInfo_dto2.getGae_name()%><br> <img
								src="img/bone1.png">&nbsp;나이 :
							<%=otherdogInfo_dto2.getGae_age()%>세<br> <img
								src="img/bone1.png">&nbsp;성별 :
							<%=dog_sex2%><br> <img src="img/bone1.png">&nbsp;품종 :
							<%=dog_species2%>

							<!-- mem_mail 채팅상대 구분하는 상대방 메일  -->

							<br> <br> 
						<a href="chatReset.jsp?mem_mail=<%=otherdogInfo_dto2.getMem_mail()%>">
								<button>채팅하기</button>
							</a>
						</p>
					</div>
					<!-- Section Tittle -->




				</div>
			</div>


			<!-- Section Tittle -->




			<!--  <div class="col-lg-6">
	                    <div class="about-img">
	                        <img src="assets/img/gallery/about1.png" alt="">
	                    </div>
	                </div>
			       	 
			       	 </div>-->
		</section>
		<!-- About  End-->
	</main>
	<%@ include file="footer.jsp"%>
</body>
</html>