<%@ page language="java" contentType="text/html; charset=utf-8"
	pageEncoding="utf-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<c:set var="root" value="<%=request.getContextPath()%>" />
<div class="mypage__side_menu">
	<h2>마이페이지</h2>
	<div class="mypage__snb_all">
		<ul class="mypage__snb">
			<li><a href="#">작품/클래스 관리</a></li>
			<li><a href="#">주문 관리</a></li>
			<li><a href="/mypage/profile">프로필 관리</a></li>
			<li><a href="/mypage/story/list">스토리 관리</a></li>
			<li><a href="#">정보 수정하기</a></li>
			<li><a href="#">회원 탈퇴</a></li>
		</ul>
	</div>
</div>
