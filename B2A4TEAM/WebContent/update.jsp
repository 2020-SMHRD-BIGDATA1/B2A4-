<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<meta name="viewport" content="width=device-width,initial-scale=1.0" />
<link rel="stylesheet" type="text/css" href="css/join.css?ver=2">
<link href="https://fonts.googleapis.com/css2?family=Jua&display=swap"
	rel="stylesheet">
<script src="http://code.jquery.com/jquery-latest.js"></script>
<script src="Doc/js/jquery-3.5.1.min.js"></script>
<link rel="stylesheet" type="text/css" href="Doc/css/join.css?ver=2">
<body>
	<div class="container">
		<div class="join-cover">
			<div class="joinHead">
				<a class="navbar-brand" href="index.html"><img
					src="Doc/img/mainLogo.png" style="width: 200px; height: auto;"></a>
			</div>
			<form action="JoinService" method="post" accept-charset="utf-8">
				<!-- 로그인을 누르면 Login.jsp파일로 post 방식으로 이동 -->
				<table>
					<tr class="form-group">
						<td class="joinTag">이메일</td>
						<td><input type="text" class="form-control" name="mem_mail"
							placeholder="이메일" required></td>
						<td style="width: 50px;"><input type="button" class="btn-2"
							value="중복확인"></td>
					</tr>
					<tr class="form-group">
						<td class="joinTag">비밀번호</td>
						<td><input type="password" id="pwd1" class="form-control"
							name="mem_pw" min="4" max="16" placeholder="비밀번호(4~16자리)"
							required></td>
					</tr>
					<tr class="form-group">
						<td class="joinTag">비밀번호 확인</td>
						<td><input type="password" id="pwd2" class="form-control"
							name="pwCheck" min="4" max="16" placeholder="비밀번호(4~16자리)"
							required></td>
					</tr>
					<tr class="form-group">
						<td class="joinTag"></td>
						<td class="alert alert-success" id="alert-success">비밀번호가
							일치합니다.</td>
						<td class="alert alert-danger" id="alert-danger"
							style="color: #d92742;">비밀번호가 일치하지 않습니다.</td>
					</tr>
					<tr class="form-group">
						<td class="joinTag">이름</td>
						<td><input type="text" class="form-control" name="mem_name"
							placeholder="이름" required></td>
					</tr>
					<tr class="form-group">
						<td class="joinTag">닉네임</td>
						<td><input type="text" class="form-control" name="mem_nick"
							placeholder="닉네임" required></td>
					</tr>

					<tr class="form-group">
						<td class="joinTag">성별</td>
						<td>남<input type="radio" class="form-control"
							name="mem_gender" value="man" required>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;여<input
							type="radio" class="form-control" name="mem_gender" value="woman"
							required></td>
					</tr>


					<tr class="form-group">
						<td class="joinTag">생년월일</td>
						<td><input type="text" title="생년월일" name="mem_birth"
							class="form-control" placeholder="ex)940715" maxlength="6"
							onkeydown="fn_press_han(this);" onkeypress="inNumber();" required></td>
					</tr>
					<tr class="form-group">
						<td class="joinTag">전화번호</td>
						<td><input type="text" class="form-control" name="mem_tel"
							placeholder="ex) 010-0000-0000" pattern="(010)-\d{3,4}-\d{4}"
							title="형식 : 010-0000-0000" required></td>
					</tr>
					<tr class="form-group">
						<td class="joinTag">주소</td>
						<td><input type="text" class="form-control" name="mem_addr"
							placeholder="도로명 주소" required></td>
					</tr>
				</table>
				<div class="button-group">
					<button type="submit" class="btn-1" value="join">회원정보수정</button>
				</div>
			</form>
		</div>
		<!--  <@ include file="footer.jsp"> -->
		<!-- footer.jsp파일 불러오기 -->
	</div>
	<script type="text/javascript">
		$(function() {
			$("#alert-success").hide();
			$("#alert-danger").hide();
			$("input").keyup(function() {
				var pwd1 = $("#pwd1").val();
				var pwd2 = $("#pwd2").val();
				if (pwd1 != "" || pwd2 != "") {
					if (pwd1 == pwd2) {
						$("#alert-success").show();
						$("#alert-danger").hide();
						$("#submit").removeAttr("disabled");
						return true;
					} else {
						$("#alert-success").hide();
						$("#alert-danger").show();
						$("#submit").attr("disabled", "disabled");
						return false;
					}
				}
			});
		});
		function inNumber() {
			if (event.keyCode<48 || event.keyCode>57) {
				event.returnValue = false;
			}
		}
		function fn_press_han(obj) {
			//좌우 방향키, 백스페이스, 딜리트, 탭키에 대한 예외
			if (event.keyCode == 8 || event.keyCode == 9 || event.keyCode == 37
					|| event.keyCode == 39 || event.keyCode == 46)
				return;
			//obj.value = obj.value.replace(/[\a-zㄱ-ㅎㅏ-ㅣ가-힣]/g, '');
			obj.value = obj.value.replace(/[\ㄱ-ㅎㅏ-ㅣ가-힣]/g, '');
		}
	</script>
</body>
</html>