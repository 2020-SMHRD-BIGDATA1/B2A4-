<%@page import="com.model.GaeDAO"%>
<%@page import="com.model.MemberDAO"%>
<%@page import="Chat.ChatroomDTO"%>
<%@page import="Chat.ChatDAO"%>
<%@page import="com.google.gson.Gson"%>
<%@page import="Chat.ChatDTO"%>
<%@page import="java.util.ArrayList"%>
<%@page import="com.model.MemberDTO"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
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
<link href="https://fonts.googleapis.com/css2?family=Jua&display=swap" rel="stylesheet">
<script src="https://code.jquery.com/ui/1.12.1/jquery-ui.min.js"></script>

<meta charset="UTF-8">
<title>GaeManDa</title>
<!-- CSS here -->
<link rel="stylesheet" href="Doc/css/chat.css">

</style>
</head>


<body>
	<%@ include file="header.jsp"%>
	<%
	
	int i = 0;
	
	// 내정보 info(메일, 비번, nick)
	// 상대방 메일
	String mem_mail = request.getParameter("mem_mail");

	ChatDAO dao = new ChatDAO();
	GaeDAO gaeDao = new GaeDAO();
	
	int cnt = dao.makeRoom(info.getMem_mail(), mem_mail);
	if (cnt > 0) {
		System.out.println("방생성 완료");
	} else {
		System.out.println("방생성 실패");
	}
	%>
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
	<div id="container_chat"
		style="margin-top: 100px; margin-bottom: 100px;">
		<aside class="aside">
			<header class="chathead">
				<div id="container">
					<input type="text" placeholder="search">
				</div>
			</header>
			<ul>
			
				<%-- <%
					int roomCnt = dao.roomCnt(info.getMem_mail());
				%> --%>
					<%
						for(int j = 0; j<1; j++){
					%>
					<%		String otherImg = gaeDao.getmyImg(mem_mail); %>
				<li><img src="imgFolder/<%=otherImg %>" alt="">
					<div>
						<%-- <%
						//int chat_index = dao.chat_index(info.getMem_nick());
						//  chat_index 보내서 내 닉네임(유저)이 아닌 닉네임 출력하기
	
						//int chat_index = dao.chat_index(info.getMem_nick());
						int chat_index = 1;
	
						ChatroomDTO chatRoom_dto = dao.getOther(chat_index);
	
						String user1 = chatRoom_dto.getChat_user1();
						String user2 = chatRoom_dto.getChat_user2();
	
						String printNick = "";
	
						if (!user1.equals(info.getMem_mail())) {
							printNick = user1;
						}
						if (!user2.equals(info.getMem_mail())) {
							printNick = user2;
	
						}
						%> --%>
					<%-- 	<%
							System.out.println(printNick);
						%> --%>
						
						 <!-- mem_mail 에는 채팅 상대방 메일이 담겨 있습니다 -->
							<%
							String otherNick = dao.getMemNick(mem_mail);				
							%>

						<h2>	
		
							<%=otherNick %>
							
							
						</h2>
							
						
						
						
					</div>
				</li>
					<%} %>
				
			</ul>
		</aside>
		<main class="chatmain">
			<header class="chathead">
			
			<%
	
				String myImg = gaeDao.getmyImg(info.getMem_mail());
			
			%>
				<img src="imgFolder/<%=myImg %>" alt="">
				<div>
					<h2>
						<%=info.getMem_nick()%>
					</h2>

					</h2>
					<h3><%=info.getMem_addr() %></h3>
				</div>
				<img
					src="https://s3-us-west-2.amazonaws.com/s.cdpn.io/1940306/ico_star.png"
					alt="">
			</header>
			<ul id="chat1">
				<!-- <li class="you">
					<div class="entete">
						<span class="status green"></span>
						<h2>Vincent</h2>
						<h3>10:12AM, Today</h3>
					</div>
					<div class="triangle"></div>
					<div class="message">
					아 진짜 모르겠다고 자증나네
					</div>
				</li>
				<li class="me">
					<div class="entete">
						<h3>10:12AM, Today</h3>
						<h2>Vincent</h2>
						<span class="status blue"></span>
					</div>
					<div class="triangle"></div>
					<div class="message">Lorem ipsum dolor sit amet, consectetuer
						adipiscing elit. Aenean commodo ligula eget dolor.</div>
				</li>
				<li class="me">
					<div class="entete">
						<h3>10:12AM, Today</h3>
						<h2>Vincent</h2>
						<span class="status blue"></span>
					</div>
					<div class="triangle"></div>
					<div class="message">OK</div>
				</li>
				<li class="you">
					<div class="entete">
						<span class="status green"></span> 온라인 오프라인
						<h2>Vincent</h2>
						<h3>10:12AM, Today</h3>
					</div>
					<div class="triangle"></div>
					<div class="message">Lorem ipsum dolor sit amet, consectetuer
						adipiscing elit. Aenean commodo ligula eget dolor.</div>
				</li> -->
				<!-- <li class="you"> -->
				<!-- <div class="triangle"></div> -->
				<div class="message1">
					<%

					ArrayList<ChatDTO> list = dao.selectReverse();

					for (i = 0; i < list.size(); i++) {
					%>

					<li><%=list.get(i).getWriter()%> : <%=list.get(i).getContent()%> 
					<%=list.get(i).getDate().substring(0, 16)%></li>

					<br>

					<%
						}
					%>
				</div>
				<!-- 	</li>  -->




			</ul>
			<footer id="footer">
				<textarea placeholder="Type your message" id="content"></textarea>
				<img
					src="https://s3-us-west-2.amazonaws.com/s.cdpn.io/1940306/ico_picture.png"
					alt=""> <img
					src="https://s3-us-west-2.amazonaws.com/s.cdpn.io/1940306/ico_file.png"
					alt=""> <a href="#" id="input">Send</a>
				<!-- <button id="input">Send</button>  -->
			</footer>
		</main>
	</div>
	<%@ include file="footer.jsp"%>
	<script type="text/javascript" src="jquery-3.5.1.min.js"></script>

	<script type="text/javascript">
		/* setInterval은 지정된 시간초 만큼 반복되는 */
		setInterval(function() {
					/* 채팅방 내용을 실시간으로 읽어오는 부분  */
					$.ajax({
							url : "chatSelect", //컨트롤러 URL
							dataType : 'json',
							processData : false, // 비동기 파일 업로드시 꼭 설정해줘야 하는 속성
							contentType : false, // 비동기 파일 업로드시 꼭 설정해줘야 하는 속성
							type : 'POST',
							contentType : "application/x-www-form-urlencoded; charset=UTF-8",
							success : function(res) {
								/* 채팅방 글써지는 부분 */
								$('#chat1').empty();
								for (var i = 0; i <res.length ; i++) {
									$('#chat1').prepend('<li>'+ res[i].writer+ " : "+ res[i].content+ res[i].date.substring(0,16) + "</li>");
									$('#chat1').scrollTop($('#chat1')[0].scrollHeight);
								}
								},
								error : function(xhr) {
								}
							});
				}, 500);

		$("body").keydown(function(key) {
					if (key.keyCode == 13) {

						//let writer = $('#writer').val();		 
						let content = $('#content').val();

						//$('#writer').val("");
						$('#content').val("");

						$.ajax({
							url : "chatInput?" + "content=" + content, //컨트롤러 URL
							dataType : 'json',
							processData : false, // 비동기 파일 업로드시 꼭 설정해줘야 하는 속성
							contentType : false, // 비동기 파일 업로드시 꼭 설정해줘야 하는 속성
							type : 'POST',
							success : function(res) {
								$('#chat1').empty();
								for (var i = 0; i <res.length ; i++) {
									$('#chat1').prepend('<li>'+ res[i].writer+ " : "+ res[i].content+ res[i].date.substring(0,16) + "</li>");
									$('#chat1').scrollTop($('#chat1')[0].scrollHeight);
								}
							},
							error : function(xhr) {
							}
						});
					}
				});

		$('#input').on('click',function() {
					let content = $('#content').val();

					//$('#writer').val(""); //비워줌
					$('#content').val(""); //비워줌

					$.ajax({
						url : "chatInput?" + "content=" + content, //컨트롤러 URL
						dataType : 'json',
						processData : false, // 비동기 파일 업로드시 꼭 설정해줘야 하는 속성
						contentType : false, // 비동기 파일 업로드시 꼭 설정해줘야 하는 속성
						type : 'POST',
						success : function(res) {
							$('#chat1').empty();
							for (var i =0; i  <res.length ; i++) {
								$('#chat1').prepend('<li>' + res[i].writer + " : "+ res[i].content+ res[i].date.substring(0, 16)+ "</li>");
								$('#chat1').scrollTop($('#chat1')[0].scrollHeight);
								
							}
						},
						error : function(xhr) {
						}
					});
				})
	</script>
</body>
</html>