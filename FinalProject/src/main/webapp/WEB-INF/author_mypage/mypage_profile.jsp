<%@ page language="java" contentType="text/html; charset=utf-8"
	pageEncoding="utf-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<c:set var="root" value="<%=request.getContextPath()%>" />
<div class="mypage__profile">
	<h2>프로필 관리</h2>
	<div class="mypage__profile__1">
		<h4>History</h4>
		<c:if test="apdto.length==0">
			<p>아직 등록된 History가 없습니다.</p>
		</c:if>
		<c:if test="apdto.length!=0">
			<p>${apdto.getHistory}</p>
		</c:if>
	</div>
	<div class="mypage__profile__1">
		<h4>Idea</h4>
		<p>아직 등록된 Idea가 없습니다.</p>
	</div>
	<div class="mypage__profile__1">
		<h4>Identity</h4>
		<p>아직 등록된 Identity가 없습니다.</p>
	</div>
	<div class="profile_home_btn_all">
		<button type="button" class="delte_btn">초기화</button>
		<button type="button" onclick="location.href='/mypage/profile/form'" class="insert_btn">등록하기</button>
	</div>
</div>