<%@ page language="java" contentType="text/html; charset=utf-8"
    pageEncoding="utf-8"%>
<!-- Checkout Section Begin -->
<div class="mypage__story">
	<h2>아이디 찾기</h2>
	<form action="/users/idMail" method="post">	
		<div class="pass_check_middle_title">
			<h5>메일주소 입력</h5>
		</div>
		<div class="pass_check_small_title">
			<p>
				<i class="fa fa-hand-o-right" aria-hidden="true" style="font-size:13px; margin-right:5px"></i>
				회원님의 아이디를 안내받을 메일 주소를 입력해주세요.
			</p>
		</div>
		<div class="pass_check_form_box">
			<table>
				<tr>
					<td>이메일</td>
					<td>
						<input type="text" name="email" id="email" required="required"
						placeholder="본인 이메일을 작성해주세요. 예: weclist@weclist.com" class="" autofocus="autofocus">
					</td>
				</tr>
			</table>
		</div>
		<div class="pass_check_btn">
			<button type="submit" class="">인증메일전송</button>
		</div>
	</form>
</div>
<!-- Checkout Section End -->
