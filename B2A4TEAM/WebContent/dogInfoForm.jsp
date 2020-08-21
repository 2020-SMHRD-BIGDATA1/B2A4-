<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<meta name="viewport" content="width=device-width,initial-scale=1.0" />
<link rel="stylesheet" type="text/css" href="Doc/css/dogInfo.css?ver=1">
<link href="https://fonts.googleapis.com/css2?family=Jua&display=swap"
	rel="stylesheet">
<script src="http://code.jquery.com/jquery-latest.js"></script>
<script src="Doc/js/jquery-3.5.1.min.js"></script>
<link rel="shortcut icon" type="image/x-icon"
	href="assets/img/gaelogo.ico">

<body>
	<div class="container">
		<div class="join-cover">
			<div class="joinHead">
				<a class="navbar-brand" href="index.jsp"><img
					src="assets/img/mainlogo.png" style="width: 200px; height: auto;"></a>
			</div>
			<br> <br>

			<form action="DogInfoService" method="post" accept-charset="utf-8">
				<!-- 로그인을 누르면 Login.jsp파일로 post 방식으로 이동 -->
				<table>
					<tr class="form-group">
						<td class="joinTag"></td>
						<td class="imgTag"><div id="image_container"></div></td>
					</tr>
					<tr class="form-group">
						<td class="joinTag">강아지 사진</td>
						<td><input type="file" id="image" accept="image/*"
							onchange="setThumbnail(event);" value="올리기"/></td>
					</tr>

					<tr class="form-group">
						<td class="joinTag">강아지 이름</td>
						<td><input type="text" class="form-control" name="dog_name"
							placeholder="강아지 이름" required></td>
					</tr>

					<tr class="form-group">
						<td class="joinTag">강아지 성별</td>
						<td><select name="dog_gender">
								<option value="1">암컷</option>
								<option value="0">수컷</option>
						</select></td>
					</tr>
					<tr class="form-group">
						<td class="joinTag">강아지 나이</td>
						<td><input type="text" class="form-control" name="dog_age"
							min="0" max="3" placeholder="00살" onkeydown="fn_press_han(this);"
							onkeypress="inNumber();" required></td>
					</tr>
					<tr class="form-group">
						<td class="joinTag">강아지 견종</td>
						<td><select name="dog_species">
								<option value="골든 리트리버">골든 리트리버</option>
								<option value="그레이하운드">그레이하운드</option>
								<option value="뉴펀들랜드">뉴펀들랜드</option>
								<option value="닥스훈트">닥스훈트</option>
								<option value="도베르만">도베르만</option>
								<option value="레브라도 리트리버">레브라도 리트리버</option>
								<option value="말라뮤트">말라뮤트</option>
								<option value="말티즈">말티즈</option>
								<option value="믹스견">믹스견</option>
								<option value="보더콜리">보더콜리</option>
								<option value="불독">불독</option>
								<option value="비글">비글</option>
								<option value="비숑프리제">비숑프리제</option>
								<option value="빠삐용">빠삐용</option>
								<option value="샤페이">샤페이</option>
								<option value="슈나우저">슈나우저</option>
								<option value="스피츠">스피츠</option>
								<option value="시바견">시바견</option>
								<option value="시츄">시츄</option>
								<option value="아메리칸 불리">아메리칸 불리</option>
								<option value="요크셔테리어">요크셔테리어</option>
								<option value="웰시코기">웰시코기</option>
								<option value="진돗개">진돗개</option>
								<option value="치와와">치와와</option>
								<option value="코카스파니엘">코카스파니엘</option>
								<option value="테리어">테리어</option>
								<option value="퍼그">퍼그</option>
								<option value="페키니즈">페키니즈</option>
								<option value="포메라니안">포메라니안</option>
								<option value="푸들(미니어쳐)">푸들(미니어쳐)</option>
								<option value="푸들(스탠다드)">푸들(스탠다드)</option>
								<option value="푸들(토이)">푸들(토이)</option>
								<option value="프렌치 불독">프렌치 불독</option>
								<option value="허스키">허스키</option>
								<option value="기타">기타</option>
						</select></td>
					</tr>
					<tr class="form-group">
						<td class="joinTag">강아지 중성화 여부</td>
						<td><select name="dog_gender">
								<option value="1">했어요</option>
								<option value="0">안했어요</option>
						</select></td>
					</tr>
					<tr class="form-group">
						<td class="joinTag">강아지 몸무게(kg)</td>
						<td><input type="text" class="form-control" name="mem_nick"
							min="1" maxlength="3" placeholder="00kg"
							onkeydown="fn_press_han(this);" onkeypress="inNumber();" required></td>
					</tr>
					<tr class="form-group">
						<td class="joinTag">산책 횟수(1주일)</td>
						<td><select name="dog_walking">
								<option value="0">0 번</option>
								<option value="1">1 번</option>
								<option value="2">2 번</option>
								<option value="3">3 번</option>
								<option value="4">4 번</option>
								<option value="5">5 번</option>
								<option value="6">6 번</option>
								<option value="7">7 번</option>
								<option value="8">8 번</option>
								<option value="9">9 번</option>
								<option value="10">10 번</option>
								<option value="11">11 번</option>
								<option value="12">12 번</option>
								<option value="13">13 번</option>
								<option value="14">14 번</option>
								<option value="20">그 이상</option>
						</select></td>
					</tr>

					<tr class="form-group">
						<td class="joinTag">낯선 강아지에 대한 반응</td>
						<td><select name="dog_walking">
								<option value="1">1 (매우 적대적)</option>
								<option value="2">2</option>
								<option value="3">3</option>
								<option value="4">4</option>
								<option value="5">5 (보통)</option>
								<option value="6">6</option>
								<option value="7">7</option>
								<option value="8">8</option>
								<option value="9">9</option>
								<option value="10">10 (매우 호의적)</option>
						</select></td>
					</tr>
					<tr class="form-group">
						<td class="joinTag">낯선 사람에 대한 반응</td>
						<td><select name="dog_walking">
								<option value="1">1 (매우 적대적)</option>
								<option value="2">2</option>
								<option value="3">3</option>
								<option value="4">4</option>
								<option value="5">5 (보통)</option>
								<option value="6">6</option>
								<option value="7">7</option>
								<option value="8">8</option>
								<option value="9">9</option>
								<option value="10">10 (매우 호의적)</option>
						</select></td>
					</tr>
				</table>
				<div class="button-group">
					<button type="submit" class="btn-1" value="info">다음 강아지 성향분석 설문으로 이동</button>
				</div>
			</form>
		</div>
		<!--  <@ include file="footer.jsp"> -->
		<!-- footer.jsp파일 불러오기 -->
	</div>
	<script type="text/javascript">
		function setThumbnail(event) {
			var reader = new FileReader();
			reader.onload = function(event) {
				var img = document.createElement("img");
				img.setAttribute("src", event.target.result);
				img.setAttribute("style", "max-width: 100%; height: auto;");
				document.querySelector("div#image_container").appendChild(img);
			};
			reader.readAsDataURL(event.target.files[0]);
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