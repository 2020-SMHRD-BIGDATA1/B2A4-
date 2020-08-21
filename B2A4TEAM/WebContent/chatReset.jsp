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
<meta charset="UTF-8">
<title>채팅하기</title>
<!-- CSS here -->
<link rel="stylesheet" href="Doc/css/chat.css">
</head>
<body>
<%@ include file="header.jsp" %>
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
	<div id="container_chat" style="margin-top: 100px; margin-bottom: 100px;">
		<aside class="aside">
			<header class="chathead">
				<input type="text" placeholder="search">
			</header>
			<ul>
				<li><img
					src="https://s3-us-west-2.amazonaws.com/s.cdpn.io/1940306/chat_avatar_01.jpg"
					alt=""> <!-- 상대방 닉 나와야 함 -->
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

				<li><img
					src="https://s3-us-west-2.amazonaws.com/s.cdpn.io/1940306/chat_avatar_03.jpg"
					alt="">
					<div>
						<h2>박수진</h2>
						<h3>
							<span class="status orange"></span> offline
						</h3>
					</div></li>
				<li><img
					src="https://s3-us-west-2.amazonaws.com/s.cdpn.io/1940306/chat_avatar_04.jpg"
					alt="">
					<div>
						<h2>민태윤</h2>
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
						<h2>박병관</h2>
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
		<main class="chatmain">
			<header  class="chathead">
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
				<li class="you">
					<!-- <div class="triangle"></div> -->
					<div class="message1">
						<%
							ChatDAO dao2 = new ChatDAO();

						ArrayList<ChatDTO> list = dao2.selectAll();

						for (int i = 0; i < list.size(); i++) {
						%>

						<%=list.get(i).getWriter()%>
						<%=list.get(i).getContent()%>
						<%=list.get(i).getDate()%>
						<br>

						<%
							}
						%>
					</div>
				</li>


			</ul>
			<footer id="footer">
				<textarea placeholder="Type your message" id="content"></textarea>
				<img
					src="https://s3-us-west-2.amazonaws.com/s.cdpn.io/1940306/ico_picture.png"
					alt=""> <img
					src="https://s3-us-west-2.amazonaws.com/s.cdpn.io/1940306/ico_file.png"
					alt=""> <a href="#" id="input">Send</a>
				<!-- <button id="input">Send</button>   -->
			</footer>
		</main>
	</div>
	<%@ include file="footer.jsp"%>
	<script type="text/javascript" src="jquery-3.5.1.min.js"></script>

	<script type="text/javascript">
		/* setInterval은 지정된 시간초 만큼 반복되는 */
		setInterval(
				function() {
					/* 채팅방 내용을 실시간으로 읽어오는 부분  */
					$
							.ajax({
								url : "chatSelect", //컨트롤러 URL
								dataType : 'json',
								processData : false, // 비동기 파일 업로드시 꼭 설정해줘야 하는 속성
								contentType : false, // 비동기 파일 업로드시 꼭 설정해줘야 하는 속성
								type : 'POST',
								contentType : "application/x-www-form-urlencoded; charset=UTF-8",
								success : function(res) {
									/* 채팅방 글써지는 부분 */
									$('#message').empty();
									for (var i = 0; i < res.length; i++) {
										$('#message').prepend(
												'<li>'
														+ res[i].writer
														+ ":"
														+ res[i].content
														+ res[i].date
																.substring(0,
																		16)
														+ "</li>");
										$('#message').scrollTop(
												$('#message')[0].scrollHeight);
									}
								},
								error : function(xhr) {
								}
							});
				}, 500);

		$("body").keydown(
				function(key) {

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
								//$('#list').empty();
								for (var i = 0; i < res.length; i++) {
									$('#list').prepend(
											'<li>'
													+ res[i].writer
													+ " : "
													+ res[i].content
													+ res[i].date.substring(0,
															16) + "</li>");
									$('#list').scrollTop(
											$('#list')[0].scrollHeight);
								}
							},
							error : function(xhr) {
							}
						});
					}
				});

		$('#input').on(
				'click',
				function() {

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
							$('#chat').empty();
							for (var i = 0; i < res.length; i++) {
								$('#chat').prepend(
										'<li>' + res[i].writer + " : "
												+ res[i].content
												+ res[i].date.substring(0, 16)
												+ "</li>");
								$('#chat')
										.scrollTop($('#chat')[0].scrollHeight);
							}
						},
						error : function(xhr) {
						}
					});
				})
	</script>
</body>
</html>