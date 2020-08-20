<%@page import="Chat.ChatDAO"%>
<%@page import="com.google.gson.Gson"%>
<%@page import="Chat.ChatDTO"%>
<%@page import="java.util.ArrayList"%>
<%@page import="com.model.MemberDTO"%>
<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>채팅하기</title>

<style type="text/css">
* {
	box-sizing: border-box;
}

body {
	background-color: #abd9e9;
	font-family: Arial;
}

#container {
	width: 750px;
	height: 800px;
	background: #eff3f7;
	margin: 0 auto;
	font-size: 0;
	border-radius: 5px;
	overflow: hidden;
}

aside {
	width: 260px;
	height: 800px;
	background-color: #3b3e49;
	display: inline-block;
	font-size: 15px;
	vertical-align: top;
}

main {
	width: 490px;
	height: 800px;
	display: inline-block;
	font-size: 15px;
	vertical-align: top;
}

aside header {
	padding: 30px 20px;
}

aside input {
	width: 100%;
	height: 50px;
	line-height: 50px;
	padding: 0 50px 0 20px;
	background-color: #5e616a;
	border: none;
	border-radius: 3px;
	color: #fff;
	background-image:
		url(https://s3-us-west-2.amazonaws.com/s.cdpn.io/1940306/ico_search.png);
	background-repeat: no-repeat;
	background-position: 170px;
	background-size: 40px;
}

aside input::placeholder {
	color: #fff;
}

aside ul {
	padding-left: 0;
	margin: 0;
	list-style-type: none;
	overflow-y: scroll;
	height: 690px;
}

aside li {
	padding: 10px 0;
}

aside li:hover {
	background-color: #5e616a;
}

h2, h3 {
	margin: 0;
}

aside li img {
	border-radius: 50%;
	margin-left: 20px;
	margin-right: 8px;
}

aside li div {
	display: inline-block;
	vertical-align: top;
	margin-top: 12px;
}

aside li h2 {
	font-size: 14px;
	color: #fff;
	font-weight: normal;
	margin-bottom: 5px;
}

aside li h3 {
	font-size: 12px;
	color: #7e818a;
	font-weight: normal;
}

.status {
	width: 8px;
	height: 8px;
	border-radius: 50%;
	display: inline-block;
	margin-right: 7px;
}

.green {
	background-color: #58b666;
}

.orange {
	background-color: #ff725d;
}

.blue {
	background-color: #6fbced;
	margin-right: 0;
	margin-left: 7px;
}

main header {
	height: 110px;
	padding: 30px 20px 30px 40px;
}

main header>* {
	display: inline-block;
	vertical-align: top;
}

main header img:first-child {
	border-radius: 50%;
}

main header img:last-child {
	width: 24px;
	margin-top: 8px;
}

main header div {
	margin-left: 10px;
	margin-right: 145px;
}

main header h2 {
	font-size: 16px;
	margin-bottom: 5px;
}

main header h3 {
	font-size: 14px;
	font-weight: normal;
	color: #7e818a;
}

#chat {
	padding-left: 0;
	margin: 0;
	list-style-type: none;
	overflow-y: scroll;
	height: 535px;
	border-top: 2px solid #fff;
	border-bottom: 2px solid #fff;
}

#chat li {
	padding: 10px 30px;
}

#chat h2, #chat h3 {
	display: inline-block;
	font-size: 13px;
	font-weight: normal;
}

#chat h3 {
	color: #bbb;
}

#chat .entete {
	margin-bottom: 5px;
}

#chat .message {
	padding: 20px;
	color: #fff;
	line-height: 25px;
	max-width: 90%;
	display: inline-block;
	text-align: left;
	border-radius: 5px;
}

#chat .me {
	text-align: right;
}

#chat .you .message {
	background-color: #670000;
}

#chat .me .message {
	background-color: #670000;
}

#chat .triangle {
	width: 0;
	height: 0;
	border-style: solid;
	border-width: 0 10px 10px 10px;
}

#chat .you .triangle {
	border-color: transparent transparent #670000 transparent;
	margin-left: 15px;
}

#chat .me .triangle {
	border-color: transparent transparent #670000 transparent;
	margin-left: 375px;
}

main footer {
	height: 155px;
	padding: 20px 30px 10px 20px;
}

main footer textarea {
	resize: none;
	border: none;
	display: block;
	width: 100%;
	height: 80px;
	border-radius: 3px;
	padding: 20px;
	font-size: 13px;
	margin-bottom: 13px;
}

main footer textarea::placeholder {
	color: #ddd;
}

main footer img {
	height: 30px;
	cursor: pointer;
}

main footer a {
	text-decoration: none;
	text-transform: uppercase;
	font-weight: bold;
	color: #6fbced;
	vertical-align: top;
	margin-left: 333px;
	margin-top: 5px;
	display: inline-block;
}
#chat {
	background-color: #670000;
}
#chat li{
	color : white;
	font-weight: bold;
}

</style>
</head>
<%
	MemberDTO info = (MemberDTO) session.getAttribute("info"); //info에 이메일 비번 닉네임 있음
%>
<body>
	<div id="container">
		<aside>
			<header>
				<input type="text" placeholder="search">
			</header>
			<ul>
				<li><img src="https://s3-us-west-2.amazonaws.com/s.cdpn.io/1940306/chat_avatar_01.jpg"
					alt=""><!-- 상대방 닉 나와야 함 -->
					<div> 
					
						<%
							ChatDAO dao = new ChatDAO();
							
						int chat_index = dao.chat_index(info.getMem_nick());
						
						
						
						%>
						<%=chat_index%>
						
						
						</h2>
						<h3>
							<span class="status orange"></span> offline
						</h3>
					</div></li>
				
				<li><img src="https://s3-us-west-2.amazonaws.com/s.cdpn.io/1940306/chat_avatar_03.jpg" alt="">
					<div>
						<h2>Prénom Nom</h2>
						<h3>
							<span class="status orange"></span> offline
						</h3>
					</div></li>
				<li><img
					src="https://s3-us-west-2.amazonaws.com/s.cdpn.io/1940306/chat_avatar_04.jpg"
					alt="">
					<div>
						<h2>Prénom Nom</h2>
						<h3>
							<span class="status green"></span> online
						</h3>
					</div></li>
				<li><img
					src="https://s3-us-west-2.amazonaws.com/s.cdpn.io/1940306/chat_avatar_05.jpg"
					alt="">
					<div>
						<h2>이지훈</h2>
						<h3>
							<span class="status orange"></span> offline
						</h3>
					</div></li>
				<li><img
					src="https://s3-us-west-2.amazonaws.com/s.cdpn.io/1940306/chat_avatar_06.jpg"
					alt="">
					<div>
						<h2>Prénom Nom</h2>
						<h3>
							<span class="status green"></span> online
						</h3>
					</div></li>
				<li><img
					src="https://s3-us-west-2.amazonaws.com/s.cdpn.io/1940306/chat_avatar_07.jpg"
					alt="">
					<div>
						<h2>Prénom Nom</h2>
						<h3>
							<span class="status green"></span> online
						</h3>
					</div></li>
				
			</ul>
		</aside>
		<main>
			<header>
				<img
					src="https://s3-us-west-2.amazonaws.com/s.cdpn.io/1940306/chat_avatar_01.jpg"
					alt="">
				<div>
					<h2>
						<%=info.getMem_nick()%>
					</h2>

					</h2>
					<h3>already 1902 messages</h3>
				</div>
				<img
					src="https://s3-us-west-2.amazonaws.com/s.cdpn.io/1940306/ico_star.png"
					alt="">
			</header>
			<ul id="chat">
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
				<li class="you">
					<!-- <div class="triangle"></div> -->
					<div class="message">
						<%
						ChatDAO dao2 = new ChatDAO();
						
						 ArrayList<ChatDTO> list = dao2.selectAll();
						
						for(int i = 0; i < list.size(); i++){
						%>
						
						<%=list.get(i).getWriter() %>
						<%=list.get(i).getContent()%>
						<%=list.get(i).getDate() %>
						<br>
						
						<% }%>
					</div>
				</li> 
				
				
			</ul>
			<footer id="footer">
				<textarea placeholder="Type your message" id ="content"></textarea>
				<img src="https://s3-us-west-2.amazonaws.com/s.cdpn.io/1940306/ico_picture.png" alt=""> 
				<img src="https://s3-us-west-2.amazonaws.com/s.cdpn.io/1940306/ico_file.png" alt=""> 
				<a href="#" id="input">Send</a>
				<!-- <button id="input">Send</button>   -->
			</footer>
		</main>
	</div>

	<script type="text/javascript" src="jquery-3.5.1.min.js"></script>
	
	<script type="text/javascript">
	
	/* setInterval은 지정된 시간초 만큼 반복되는 */
	setInterval(function(){
		/* 채팅방 내용을 실시간으로 읽어오는 부분  */
		$.ajax({
		       url: "chatSelect", //컨트롤러 URL
		       dataType: 'json',
		       processData: false, // 비동기 파일 업로드시 꼭 설정해줘야 하는 속성
		       contentType: false, // 비동기 파일 업로드시 꼭 설정해줘야 하는 속성
		       type: 'POST',
		       contentType: "application/x-www-form-urlencoded; charset=UTF-8",
		       success: function (res) {
		    	   /* 채팅방 글써지는 부분 */
		    	   $('#message').empty();
		    	   for(var i = 0; i < res.length; i++){
		    		   $('#message').prepend('<li>'+res[i].writer + ":" + res[i].content + res[i].date.substring(0,16) + "</li>");
		    		   $('#message').scrollTop($('#message')[0].scrollHeight);
		    	   }
		       },error: function (xhr) {
		       } 
		    });
		},
		500);
	
	
	$("body").keydown(function(key) {

		if (key.keyCode == 13) {

			//let writer = $('#writer').val();		 
			let content = $('#content').val();
			

			//$('#writer').val("");
			$('#content').val("");
			
			$.ajax({
			       url: "chatInput?"+"content="+content, //컨트롤러 URL
			       dataType: 'json',
			       processData: false, // 비동기 파일 업로드시 꼭 설정해줘야 하는 속성
			       contentType: false, // 비동기 파일 업로드시 꼭 설정해줘야 하는 속성
			       type: 'POST',
			       success: function (res) {
			    	   //$('#list').empty();
			    	   for(var i = 0; i < res.length; i++){
			    		   $('#list').prepend('<li>'+res[i].writer + " : " + res[i].content + res[i].date.substring(0,16) + "</li>");
			    		   $('#list').scrollTop($('#list')[0].scrollHeight);
			    	   }
			       },error: function (xhr) {
			       } 
			    });
		}
	});
	
	
	 $('#input').on('click',function(){
				 
		let content = $('#content').val();
		
		
		//$('#writer').val(""); //비워줌
		$('#content').val(""); //비워줌
		
		$.ajax({
		       url: "chatInput?"+"content="+content, //컨트롤러 URL
		       dataType: 'json',
		       processData: false, // 비동기 파일 업로드시 꼭 설정해줘야 하는 속성
		       contentType: false, // 비동기 파일 업로드시 꼭 설정해줘야 하는 속성
		       type: 'POST',
		       success: function (res) {
		    	   $('#chat').empty();
		    	   for(var i = 0; i < res.length; i++){
		    		   $('#chat').prepend('<li>'+res[i].writer + " : " + res[i].content + res[i].date.substring(0,16) + "</li>");
		    		   $('#chat').scrollTop($('#chat')[0].scrollHeight);
		    	   }
		       },error: function (xhr) {
		       } 
		    });
	 })
	
	</script>
</body>
</html>