<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<meta name="viewport" content="width=device-width,initial-scale=1.0" />
<link rel="stylesheet" type="text/css" href="Doc/css/dogInfo.css?ver=2">
<link href="https://fonts.googleapis.com/css2?family=Jua&display=swap"
	rel="stylesheet">
<script src="http://code.jquery.com/jquery-latest.js"></script>
<script src="Doc/js/jquery-3.5.1.min.js"></script>
<link rel="stylesheet" type="text/css" href="Doc/css/join.css?ver=2">
<link rel="shortcut icon" type="image/x-icon"
	href="assets/img/gaelogo.ico">
<body>
	<div class="container">
		<div class="join-cover">
			<div class="joinHead">
				<a class="navbar-brand" href="index.jsp"><img
					src="assets/img/mainlogo.png" style="width: 200px; height: auto;"></a>
			</div>
			<form method="post" enctype="multipart/form-data"
				action="imgupload.jsp">
				<table>
					<tr class="form-group">
						<td class="joinTag">강아지 사진</td>
						<td><input type="file" name="dogImg" id="input_img">
						</td>
						<div class="img_wrap"><img id="img" />
						</div>
					</tr>
				</table>
			</form>
			<form action="JoinService" method="post" accept-charset="utf-8">
				<!-- 로그인을 누르면 Login.jsp파일로 post 방식으로 이동 -->
				<table>
					<tr class="form-group">
						<td class="joinTag">강아지 이름</td>
						<td><input type="text" class="form-control" name="dog_name"
							placeholder="강아지 이름" required></td>
					</tr>
					<tr class="form-group">
						<td class="joinTag">성별</td>
						<td>수컷<input type="radio" class="form-control"
							name="dog_gender" value="man" required>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;암컷<input
							type="radio" class="form-control" name="dog_gender" value="woman"
							required></td>
					</tr>
					<tr class="form-group">
						<td class="joinTag">강아지 나이</td>
						<td><input type="text" class="form-control" name="dog_age"
							min="0" max="3" onkeydown="fn_press_han(this);"
							onkeypress="inNumber();" required></td>
					</tr>
					<tr class="form-group">
						<td class="joinTag">반려견 견종</td>
						<td><select name="cars">
								<option value="골든 리틔리버">골든 리트리버</option>
								<option value="saab">Saab</option>
								<option value="fiat">Fiat</option>
								<option value="audi">Audi</option>
						</select></td>
					</tr>
					<tr class="form-group">
						<td class="joinTag">닉네임</td>
						<td><input type="text" class="form-control" name="mem_nick"
							min="4" maxlength="16" placeholder="닉네임" required></td>
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
							min="6" onkeydown="fn_press_han(this);" onkeypress="inNumber();"
							required></td>
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
					<button type="submit" class="btn-1" value="join">회원가입</button>
				</div>
			</form>
		</div>
		<!--  <@ include file="footer.jsp"> -->
		<!-- footer.jsp파일 불러오기 -->
	</div>
	<script type="text/javascript">
		var sel_file;

		$(document).ready(function() {
			$("#input_img").on("change", handleImgFileSelect);
		});

		function handleImgFileSelect(e) {
			var files = e.target.files;
			var filesArr = Array.prototype.slice.call(files);

			filesArr.forEach(function(f) {
				if (!f.type.match("image.*")) {
					alert("확장자는 이미지 확장자만 가능합니다.");
					return;
				}

				sel_file = f;

				var reader = new FileReader();
				reader.onload = function(e) {
					$("#img").attr("src", e.target.result);
				}
				reader.readAsDataURL(f);
			});
		}

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