<%@ page language="java" contentType="text/html; charset=utf-8"
    pageEncoding="utf-8"%>
<script type="text/javascript">
</script>
<div class="login_form_all container">
	<form action="/login/loginprocess" method="get">
		<div class="login_big_title">
			<h4>로그인</h4>
		</div>
		<div class="login_form_id_1">
			<input type="text" class="login_input" name="id" id="id"
			required="required" placeholder="아이디를 입력해주세요."> 
		</div>
		<div class="login_form_pass_1">
			<input type="password" name="pass1" id="pass1" required="required"
			placeholder="비밀번호를 입력해주세요.">
		</div>
		<div class="login_find_all">
			<a href="#" style="font-size: 13px">아이디 찾기</a> <span> | </span> <a
			href="#" style="font-size: 13px">비밀번호 찾기</a>
		</div>
		<div class="login_btn_success">
			<button type="submit" class="login_btn_one">로그인</button>
		</div>
		<div class="join_btn_one">
			<p>아직 We C List의 회원이 아니신가요?</p>
			<button type="button" class="join_btn_two" onclick="location.href='/users/join'">회원가입</button>
		</div>
	</form>
</div>