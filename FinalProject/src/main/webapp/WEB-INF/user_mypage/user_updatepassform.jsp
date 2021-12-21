<%@ page language="java" contentType="text/html; charset=utf-8"
    pageEncoding="utf-8"%>
<div class="mypage__story">
	<h2>회원 정보수정</h2>
	<form action="/users/updatepass" method="post">	
		<div class="pass_check_middle_title">
			<h5>비밀번호 재확인</h5>
		</div>
		<div class="pass_check_small_title">
			<p>
				<i class="fa fa-hand-o-right" aria-hidden="true" style="font-size:13px; margin-right:5px"></i>
				회원님의 정보를 안전하게 보호하기 위해 비밀번호를 다시 한번 입력해주세요.
			</p>
		</div>
		<div class="pass_check_form_box">
			<table>
				<tr>
					<td>아이디</td>
					<td>
						<input type="text" name="id" id="id" required="required" readonly="readonly"
						 class="" autofocus="autofocus" value="${sessionScope.id} ">
					</td>
				</tr>
				<tr>
					<td>비밀번호</td>
					<td>
						<input type="password" name="pass1" id="pass1" required="required"
						placeholder="비밀번호 입력" class="" autofocus="autofocus">
					</td>
				</tr>
			</table>
		</div>
		<div class="pass_check_btn">
			<button type="submit" class="">확인</button>
		</div>
	</form>
</div>
