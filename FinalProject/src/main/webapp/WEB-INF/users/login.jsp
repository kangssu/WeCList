<%@ page language="java" contentType="text/html; charset=utf-8"
    pageEncoding="utf-8"%>
<script type="text/javascript">
function login() {
	$.ajax({
		type: "post",
		url: "/login",
		data: {
			id: $("#id").val(),
			pass: $("#pass").val()
		},
		dataType: "json",
		success: function(result) {
			switch(result.responseCode) {
			case "0001":
				location.href = "/";
				break;
			case "0002":
				alert("Invalid Input!");
				break;
			case "0003":
				alert("Wrong ID or Password!");
				break;
			}
		}
	});
}
</script>
<div class="container" style="margin-top:120px;">
	<div style="text-align: center;">
		<div class="checkout__input" style="display: inline-block;">
			<div style="padding-bottom: 20px">
				<span><h4>로그인</h4></span>
			</div>
			<div>
				<input type="text" class="login_input" name="id" id="id"
					required="required" placeholder="아이디를 입력해주세요."> <input
					type="password" name="pass" id="pass" required="required"
					placeholder="비밀번호를 입력해주세요.">
			</div>
			<div style="margin-top: 10px; height: 50px; text-align: right;">
				<a href="#" style="font-size: 13px">아이디 찾기</a> <span> | </span> <a
					href="#" style="font-size: 13px">비밀번호 찾기</a>
			</div>
			<div class="user_join_btn2">
				<button type="button" onclick="login()">로그인</button>
			</div>
			<div class="author_join_btn2">
				<button type="button" onclick="">회원가입</button>
			</div>
		</div>
	</div>
</div>