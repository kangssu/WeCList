<%@ page language="java" contentType="text/html; charset=utf-8"
    pageEncoding="utf-8"%>
<script type="text/javascript">
	/* 아이디찾기 클릭시 팝업!!! */
	function showIdPopup() {
		const popup2 = document.querySelector('#id_popup');
		popup2.classList.remove('hide');
	}
	
	function closeIdPopup() {
		const popup2 = document.querySelector('#id_popup');
		popup2.classList.add('hide');
	}
	
	/* 비밀번호 찾기 클릭시 팝업!!! */
	function showPassPopup() {
		const popup2 = document.querySelector('#pass_popup');
		popup2.classList.remove('hide');
	}
	
	function closePassPopup() {
		const popup2 = document.querySelector('#pass_popup');
		popup2.classList.add('hide');
	}
</script>
<div class="login_form_all container">
	<form action="/login/loginprocess" method="post">
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
			<a onclick="showIdPopup()" style="font-size: 13px">아이디 찾기</a> <span> | </span>
			<a onclick="showPassPopup()" style="font-size: 13px">비밀번호 찾기</a>
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
<!-- 아이디찾기 클릭하면 나오는 팝업! -->
<div id="id_popup" class="hide">
	<div class="id_content">
		<p class="id_title">아이디 찾기</p>
		<span class="id_popup_text">
			회원님의 아이디를 안내받을 메일 주소를 입력해주세요.<br>
			<b>※ 회원가입시 입력했던 이메일을 적어주셔야합니다.</b>	
		</span>
		<form action="/users/idMail" method="post">
			<input type="text" name="email" id="email" required="required"
			placeholder="본인 이메일을 작성해주세요. 예: weclist@weclist.com" class="login_id_box" autofocus="autofocus">
			<div class="popup_id_btn_all">
				<button type="submit" id="btn_id_ok">인증메일전송</button>
				<button type="button" id="btn_id_close" onclick="closeIdPopup()" >닫기</button>
			</div>
		</form>
	</div>
</div>
<!-- 비밀번호찾기 클릭하면 나오는 팝업! -->
<div id="pass_popup" class="hide">
	<div class="pass_content">
		<p class="pass_title">비밀번호 찾기</p>
		<span class="pass_popup_text">
			회원님의 아이디와 임시 비밀번호를 안내받을 메일 주소를 입력해주세요.<br>
			<b>※ 회원가입시 입력했던 아이디,이메일을 적어주셔야합니다.</b>	
		</span>
		<form action="/users/passMail" method="post">
			<input type="text" name="id" id="id" required="required"
			placeholder="가입하신 아이디를 입력해주세요." class="" autofocus="autofocus">
			<input type="text" name="email" id="email" required="required"
			placeholder="본인 이메일을 작성해주세요. 예: weclist@weclist.com" class="" autofocus="autofocus">
			<div class="popup_pass_btn_all">
				<button type="submit" id="btn_pass_ok">임시비밀번호 받기</button>
				<button type="button" id="btn_pass_close" onclick="closePassPopup()" >닫기</button>
			</div>
		</form>
	</div>
</div>