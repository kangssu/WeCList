<%@ page language="java" contentType="text/html; charset=utf-8"
    pageEncoding="utf-8"%>
<script type="text/javascript">
</script>
<div class="container" style="margin-top:120px;">
	<form action="/login/loginprocess" method="get" class="form-inline">
		<div style="text-align: center;">
			<div class="checkout__input" style="display: inline-block;">
				<div style="padding-bottom: 20px">
					<span><h4>로그인</h4></span>
				</div>
				<div>
					<input type="text" class="login_input" name="id" id="id"
						required="required" placeholder="아이디를 입력해주세요."> 
					<input type="password" name="pass1" id="pass1" required="required"
						placeholder="비밀번호를 입력해주세요.">
				</div>
				<div style="margin-top: 10px; height: 50px; text-align: right;">
					<a href="#" style="font-size: 13px">아이디 찾기</a> <span> | </span> <a
						href="#" style="font-size: 13px">비밀번호 찾기</a>
				</div>
				<div class="user_join_btn2">
					<button type="submit">로그인</button>
				</div>
				<div class="author_join_btn2">
					<button type="button" onclick="location.href='/users/join'">회원가입</button>
				</div>
			</div>
		</div>
	</form>
</div>