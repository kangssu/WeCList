<%@ page language="java" contentType="text/html; charset=utf-8"
	pageEncoding="utf-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<c:set var="root" value="<%=request.getContextPath()%>" />
<div class="mypage__side_menu">
	<h2>마이페이지</h2>
	<div class="mypage__snb_all">
		<ul class="mypage__snb">
			<li><a href="#">주문 관리</a></li><!-- 주문&취소&환불내역&후기작성버튼 -->
			<li><a href="/mypage/follow/list">관심리스트</a></li><!-- 찜목록&팔로우하는 작가 -->
			<li><a href="/users/mypage/updatepass">정보 수정하기</a></li>
			<li><a href="/users/mypage/deletepass">회원 탈퇴</a></li>
		</ul>
	</div>
</div>
