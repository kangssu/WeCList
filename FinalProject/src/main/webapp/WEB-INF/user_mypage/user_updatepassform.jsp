<%@ page language="java" contentType="text/html; charset=utf-8"
    pageEncoding="utf-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="utf-8">
<title>Insert title here</title>
<link href="https://fonts.googleapis.com/css2?family=Dokdo&family=Gaegu&family=Gugi&family=Nanum+Pen+Script&display=swap" rel="stylesheet">
<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.1/css/bootstrap.min.css">
<script src="https://code.jquery.com/jquery-3.5.0.js"></script>
</head>
<body>
<!-- Checkout Section Begin -->
<section class="checkout spad">
	<div class="container">
		<div class="checkout__form2">
			<form action="/users/updatepass" method="post">	
			<input type="hidden" name="id" value="${sessionScope.id}">
				<h4>회원 정보 수정</h4>
				<table class="view_buy_form_1">
					<tr class="checkout__input">
						<td>비밀번호</td>
						<td>
							<input type="password" name="pass1" id="pass1" required="required"
							 placeholder="비밀번호 입력" class="checkout__input__add" autofocus="autofocus"
							 style="width:200px">
								<button type="submit" class="addr-btn">확인</button>
							<p id="pw_check1">
								<i class="fa fa-hand-o-right" aria-hidden="true" style="font-size:13px; margin-right:5px"></i>
								<span style="font-size:13px; color:#6f6f6f">
									회원님의 정보를 안전하게 보호하기 위해 비밀번호를 다시 한번 입력해주세요.
								</span><br>
							</p>
						</td>
					</tr>
				</table>
			</form>
		</div>
	</div>
</section>
<!-- Checkout Section End -->
</body>
</html>