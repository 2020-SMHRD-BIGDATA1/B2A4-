<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<meta name="viewport" content="width=device-width,initial-scale=1.0" />
<link rel="stylesheet" type="text/css"
	href="Doc/css/infoSurvey.css?ver=1">
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

			<form action="SurveyService" method="post" accept-charset="utf-8">
				<!-- 로그인을 누르면 Login.jsp파일로 post 방식으로 이동 -->
				<table style="width: 100%">
					<tr class="form-group">
						<td class="surveyCon"><h2>Test1</h2>반려견을 내려놓고 일정한 거리만큼 떨어진
							곳에서 무릎을 꿇거나 가볍게 손뼉을 치며 불러주세요.</td>
					</tr>
					<tr class="form-group">
						<td class="surveyCon"><img src="assets/img/test1.jpg"
							style="width: 250px; height: 150px;">
					</tr>
					<tr class="form-group" style="text-align: left">
						<td style="text-align: left"><label for="a1" style="cursor:pointer"><input type="radio" id="a1"class="form-control" name="test1"
							value="0" required> 1.꼬리를 들고 다가와 뛰어오르며 손을 깨문다.</label> <br /> <label for="a2" style="cursor:pointer"><input
							type="radio" id="a2" class="form-control" name="test1" value="1" required> 2.꼬리를 들고 다가와 손을 핥는다. </label><br /> <label for="a3" style="cursor:pointer"><input type="radio" id="a3"
							class="form-control" name="test1" value="2" required> 3.꼬리를
							들고 다가온다. </label><br /> <label for="a4" style="cursor:pointer"><input type="radio" id="a4" class="form-control"
							name="test1" value="3" required> 4.꼬리를 내리고 다가온다. </label><br /> <label for="a5" style="cursor:pointer"><input 
							type="radio" id="a5" class="form-control" name="test1" value="4" required> 5.꼬리를 내리고 다가오면서 약간 머뭇거린다. </label><br />
							<label for="a6" style="cursor:pointer"><input type="radio" id="a6"
							class="form-control" name="test1" value="5" required> 6.오지
							않는다. </label><br /></td>
					</tr>
					<tr class="form-group">
						<td class="surveyCon"><h2>Test2</h2>반려견을 내려놓고 일정한 거리만큼 떨어진
							곳에서 무릎을 꿇거나 가볍게 손뼉을 치며 불러주세요.</td>
					</tr>
					<tr class="form-group">
						<td class="surveyCon"><img src="assets/img/test2.jpg"
							style="width: 250px; height: 150px;">
					</tr>
					<tr class="form-group" style="text-align: left">
						<td style="text-align: left"><label for="b1" style="cursor:pointer"><input type="radio" id="b1" class="form-control" name="test2"
							value="0" required> 1.꼬리를 들고 다가와 뛰어오르며 손을 깨문다. </label><br /> <label for="b2" style="cursor:pointer"><input
							type="radio" id="b2" class="form-control" name="test2" value="1" required> 2.꼬리를 들고 다가와 손을 핥는다.</label> <br /> 
							<label for="b3" style="cursor:pointer"><input type="radio" id="b3"
							class="form-control" name="test2" value="2" required> 3.꼬리를
							들고 다가온다. </label><br /> <label for="b4" style="cursor:pointer"><input type="radio" id="b4" class="form-control"
							name="test2" value="3" required> 4.꼬리를 내리고 다가온다. </label><br /> 
							<label for="b5" style="cursor:pointer"><input
							type="radio" id="b5" class="form-control" name="test2" value="4" required> 5.꼬리를 내리고 다가오면서 약간 머뭇거린다. </label><br /> 
							<label for="b6" style="cursor:pointer"><input type="radio" id="b6"
							class="form-control" name="test2" value="5" required> 6.오지
							않는다. </label><br /></td>
					</tr>
					<tr class="form-group">
						<td class="surveyCon"><h2>Test3</h2>반려견의 옆쪽에 몸을 굽히고 앉아 반려견의
							머리부터 발끝까지 부드럽게 쓸어내려주세요. 반려견이 눈에 띄는 행동을 할 때까지 반복해주세요.</td>
					</tr>
					<tr class="form-group">
						<td class="surveyCon"><img src="assets/img/test3.jpg"
							style="width: 250px; height: 150px;">
					</tr>
					<tr class="form-group" style="text-align: left">
						<td style="text-align: left">
						<label for="c1" style="cursor:pointer"><input type="radio" id="c1" class="form-control" name="test3"
							value="0" required> 1.뛴다. 문다. 으르렁거린다. (두개 이상 해당하면 체크)</label><br />
							<label for="c2" style="cursor:pointer"><input type="radio" id="c2" class="form-control" name="test3" value="1"
							required> 2.뛴다. </label><br /> 
							<label for="c3" style="cursor:pointer"><input type="radio" id="c3"
							class="form-control" name="test3" value="2" required> 3.사람에게 안기며 얼굴을 핥으려 한다. </label><br /> 
							<label for="c4" style="cursor:pointer"><input type="radio" id="c4"
							class="form-control" name="test3" value="3" required> 4.몸을 숙이며 손을 핥는다. </label><br /> 
							<label for="c5" style="cursor:pointer"><input type="radio" id="c5" class="form-control"
							name="test3" value="4" required> 5.바닥에 누워 손을 핥는다. </label><br /> 
							<label for="c6" style="cursor:pointer"><input
							type="radio" id="c6" class="form-control" name="test3" value="5" required> 6.달아나서
							거리를 둔다. </label><br /></td>
					</tr>
					<tr class="form-group">
						<td class="surveyCon"><h2>Test4</h2>손바닥을 위로 가게 한 뒤 반려견의 복부에
							손을 집어넣어 주세요. 그리고 지면에서 떨어질 정도로만 반려견을 들어올려 10초정도 유지합니다.</td>
					</tr>
					<tr class="form-group">
						<td class="surveyCon"><img src="assets/img/test4.jpg"
							style="width: 250px; height: 150px;">
					</tr>
					<tr class="form-group" style="text-align: left">
						<td style="text-align: left">
						<label for="d1" style="cursor:pointer"><input type="radio" id="d1" class="form-control" name="test4"
							value="0" required> 1.강하게 저항하고 물며 으르렁거린다. </label><br /> 
							<label for="d2" style="cursor:pointer"><input
							type="radio" id="d2" class="form-control" name="test4" value="1" required> 2.강하게 저항한다. </label><br /> 
							<label for="d3" style="cursor:pointer"><input type="radio" id="d3" class="form-control"
							name="test4" value="2" required> 3.저항하다가 순응하고 핥는다. </label><br />
							<label for="d4" style="cursor:pointer"><input type="radio" id="d4" class="form-control" name="test4" value="3"
							required> 4.저항하지 않고 편안하게 앉는다. </label><br /> 
							<label for="d5" style="cursor:pointer"><input type="radio" id="d5"
							class="form-control" name="test4" value="4" required> 5.저항하지 않고 손을 핥는다. </label><br /> 
							<label for="d6" style="cursor:pointer"><input type="radio" id="d6" class="form-control"
							name="test4" value="5" required> 6.저항하지 않고 얼어 있다. </label><br /></td>
					</tr>

					<tr class="form-group">
						<td class="surveyCon"><h2>Test5</h2>한쪽 앞발을 점점 강하게 눌러주세요. 10까지
							세면서 누르다가 저항하거나 불편해하면 즉시 멈춰주세요.</td>
					</tr>
					<tr class="form-group">
						<td class="surveyCon"><img src="assets/img/test5.jpg"
							style="width: 250px; height: 150px;">
					</tr>
					<tr class="form-group" style="text-align: left">
						<td style="text-align: left">
						<label for="e1" style="cursor:pointer"><input type="radio" id="e1" class="form-control" name="test5"
							value="0" required> 1. 8~10초 사이에 반응 </label><br /> 
							<label for="e2" style="cursor:pointer"><input
							type="radio" id="e2" class="form-control" name="test5" value="1" required> 2. 6~7초 사이에 반응 </label><br /> 
							<label for="e3" style="cursor:pointer"><input type="radio" id="e3" class="form-control"
							name="test5" value="2" required> 3. 5~6초 사이에 반응 </label><br /> 
							<label for="e4" style="cursor:pointer"><input
							type="radio" id="e4" class="form-control" name="test5" value="3" required> 4. 2~4초 사이에 반응 </label><br /> 
							<label for="e5" style="cursor:pointer"><input type="radio" id="e5" class="form-control"
							name="test5" value="4" required> 5. 1~2초 사이에 반응 </label><br /></td>
					</tr>

					<tr class="form-group">
						<td class="surveyCon"><h2>Test6</h2>반려견과 몇 미터 떨어진 곳에서 금속 재질로
							된 물건끼리 크게 부딪치는 날카로운 소리를 냈을 때.</td>
					</tr>
					<tr class="form-group">
						<td class="surveyCon"><img src="assets/img/test6.jpg"
							style="width: 250px; height: 150px;">
					</tr>
					<tr class="form-group" style="text-align: left">
						<td style="text-align: left">
						<label for="f1" style="cursor:pointer"><input type="radio" id="f1" class="form-control" name="test6"
							value="0" required> 1. 소리 나는 방향을 찾아 짖으며 다가간다. </label><br /> 
							<label for="f2" style="cursor:pointer"><input
							type="radio" id="f2" class="form-control" name="test6" value="1" required> 2. 소리 나는 방향을 향해 짖는다. </label><br /> 
							<label for="f3" style="cursor:pointer"><input type="radio" id="f3"
							class="form-control" name="test6" value="2" required> 3.
							소리 나는 방향을 향해 호기심을 보이며 다가간다. </label><br /> 
							<label for="f4" style="cursor:pointer"><input type="radio" id="f4"
							class="form-control" name="test6" value="3" required> 4.
							소리 나는 방향을 바라본다. </label><br /> 
							<label for="f5" style="cursor:pointer"><input type="radio" id="f5" class="form-control"
							name="test6" value="4" required> 5. 놀라 뒤로 물러나 숨는다. </label><br />
							<label for="f6" style="cursor:pointer"><input type="radio" id="f6" class="form-control" name="test6" value="5"
							required> 6. 소리에 관심이 없다. </label><br /></td>
					</tr>

					<tr class="form-group">
						<td class="surveyCon"><h2>Test7</h2>반려견을 장소 한 가운데 놓고 커다란 수건
							등을 줄에 연결해 수건을 반려견 앞에서 이리저리 움직이며 유혹한다.</td>
					</tr>
					<tr class="form-group">
						<td class="surveyCon"><img src="assets/img/test7.jpg"
							style="width: 250px; height: 150px;">
					</tr>
					<tr class="form-group" style="text-align: left">
						<td style="text-align: left">
						<label for="g1" style="cursor:pointer"><input type="radio" id="g1" class="form-control" name="test7"
							value="0" required> 1. 8~10초 사이에 반응 </label><br /> 
							<label for="g2" style="cursor:pointer"><input
							type="radio" id="g2" class="form-control" name="test7" value="1" required> 2. 쳐다보고 달려가 공격하듯이 문다. </label><br /> 
							<label for="g3" style="cursor:pointer"><input type="radio" id="g3"
							class="form-control" name="test7" value="2" required> 3.
							호기심을 가지고 쳐다보며 물체를 탐색한다. </label><br /> 
							<label for="g4" style="cursor:pointer"><input type="radio" id="g4"
							class="form-control" name="test7" value="3" required> 4.
							쳐다보고 짖는다. 이때 꼬리를 감춘다. </label><br /> 
							<label for="g5" style="cursor:pointer"><input type="radio" id="g5"
							class="form-control" name="test7" value="4" required> 5.
							도망가 숨는다. </label><br /></td>
					</tr>

					<tr class="form-group">
						<td class="surveyCon"><h2>Test8</h2>반려견을 물리적으로 옆으로 눕힌 뒤 10초
							정도 몸을 눌러 움직임에 통제를 가하면?</td>
					</tr>
					<tr class="form-group">
						<td class="surveyCon"><img src="assets/img/test8.jpg"
							style="width: 250px; height: 150px;">
					</tr>
					<tr class="form-group" style="text-align: left">
						<td style="text-align: left">
						<label for="h1" style="cursor:pointer"><input type="radio" id="h1" class="form-control" name="test8"
							value="0" required> 1. 격렬하게 저항하고 손을 문다. </label><br /> 
							<label for="h2" style="cursor:pointer"><input
							type="radio" id="h2" class="form-control" name="test8" value="1" required> 2. 격렬하게 몸을 흔들며 저항한다. </label><br /> 
							<label for="h3" style="cursor:pointer"><input type="radio" id="h3"
							class="form-control" name="test8" value="2" required> 3.
							저항과 순응을 반복한다. </label><br /> 
							<label for="h4" style="cursor:pointer"><input type="radio" id="h4" class="form-control"
							name="test8" value="3" required> 4. 저항하다 이내 순응한다. </label><br />
							<label for="h5" style="cursor:pointer"><input type="radio" id="h5" class="form-control" name="test8" value="4"
							required> 5. 저항하지 않고 손을 핥는다. </label><br /> 
							<label for="h6" style="cursor:pointer"><input type="radio" id="h6"
							class="form-control" name="test8" value="5" required> 6.
							저항하지 않고 눈을 피한다. </label><br /></td>
					</tr>

				</table>
				<div class="button-group">
					<button type="submit" class="btn-1" value="info">다음 강아지
						정보입력창으로 이동</button>
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