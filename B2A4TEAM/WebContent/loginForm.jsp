<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@page import="com.model.MemberDTO"%>
<!DOCTYPE html>
<html>
<meta name="viewport" content="width=device-width,initial-scale=1.0" />
<link href="https://fonts.googleapis.com/css2?family=Jua&display=swap"
	rel="stylesheet">
<link rel="manifest" href="site.webmanifest">
<link rel="shortcut icon" type="image/x-icon"
	href="assets/img/gaelogo.ico">
<!-- CSS here -->
<link rel="stylesheet" type="text/css" href="Doc/css/login.css?ver=3">
<link rel="shortcut icon" type="image/x-icon" href="assets/img/gaelogo.ico">
<body>
	<%
		MemberDTO info = (MemberDTO) session.getAttribute("info");
	%>
	
	<div class="container">
		<div class="login-cover">
			<div class="loginHead">
				<a class="navbar-brand" href="index.jsp"><img
					src="Doc/img/mainLogo.png" style="width: 200px; height: auto;"></a>
			</div>
			<form action="LoginService" method="post" accept-charset="utf-8">
				<!-- 로그인을 누르면 Login.jsp파일로 post 방식으로 이동 -->
				<div class="form-group">
					<input type="text" class="form-control" name="mail"
						placeholder="E-mail">
				</div>
				<div class="form-group">
					<input type="password" class="form-control" name="pw"
						placeholder="PASSWORD(영문 숫자 혼합)">
				</div>
				<div class="button-group">
					<form action="index.jsp">
					<button type="submit" class="btn-1" value="login">로그인</button>
				</div>

			</form>
			<div class="newMem">
				<a class="newJoin" href="#" title="아이디 찾기">아이디 찾기</a><span
					style="opacity: 0.5">|</span> <a class="newJoin" href="#"
					title="비밀번호 찾기">비밀번호 찾기</a><span style="opacity: 0.5">|</span> <a
					class="newJoin" href="joinForm.jsp" title="회원가입">회원가입</a>
			</div>
		</div>
	</div>
	<!-- <@ include file="footer.jsp" -->
	<!-- footer.jsp파일 불러오기 -->
</body>
<%
	if (info != null) {
%>

<script>
	alert("이미 로그인 되어 있습니다.");
	location.href = "index.jsp";
</script>
<script src="./assets/js/plugins.js"></script>
<%
	}
%>


</html>