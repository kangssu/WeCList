<%@ page language="java" contentType="text/html; charset=utf-8"
	pageEncoding="utf-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<c:set var="root" value="<%=request.getContextPath()%>" />
<div class="mypage__profile">
	<h2>프로필 관리</h2>
	<div class="mypage__profile__1">
		<h4>간략소개</h4>
		<c:choose>
			<c:when test="${totalCount>0}">
				<p>${dto.concise}</p>
			</c:when>
			<c:otherwise>
				<p>아직 간략소개가 등록되지 않았습니다.</p>
    		</c:otherwise>
		</c:choose>
	</div>
	<div class="mypage__profile__1">
		<h4>History</h4>
		<c:choose>
			<c:when test="${totalCount>0}">
				<p>${dto.history}</p>
				<c:if test="${dto.history_file!='no'}">
					<c:forTokens var="pp" items="${dto.history_file}" delims=",">
						<img src="/photo/${pp}">
					</c:forTokens>
				</c:if>
			</c:when>
			<c:otherwise>
				<p>아직 History가 등록되지 않았습니다.</p>
    		</c:otherwise>
		</c:choose>
	</div>
	<div class="mypage__profile__1">
		<h4>Idea</h4>
		<c:choose>
			<c:when test="${totalCount>0}">
				<p>${dto.idea}</p>
				<c:if test="${dto.idea_file!='no'}">
					<c:forTokens var="pp" items="${dto.idea_file}" delims=",">
						<img src="/photo/${pp}">
					</c:forTokens>
				</c:if>
			</c:when>
			<c:otherwise>
				<p>아직 Idea가 등록되지 않았습니다.</p>
    		</c:otherwise>
		</c:choose>
	</div>
	<div class="mypage__profile__1">
		<h4>Identity</h4>
		<c:choose>
			<c:when test="${totalCount>0}">
				<p>${dto.identity}</p>
				<c:if test="${dto.identity_file!='no'}">
					<c:forTokens var="pp" items="${dto.identity_file}" delims=",">
						<img src="/photo/${pp}">
					</c:forTokens>
				</c:if>
			</c:when>
			<c:otherwise>
				<p>아직 Identity가 등록되지 않았습니다.</p>
    		</c:otherwise>
		</c:choose>
	</div>
	<div class="profile_home_btn_all">
		<c:choose>
			<c:when test="${totalCount>0}">
				<button type="button" onclick="location.href='/mypage/pdelete'"
				class="delte_btn">초기화</button>			
				<button type="button" onclick="location.href='/mypage/profile/upform'"
				class="update_btn">수정하기</button>
			</c:when>
			<c:otherwise>
				<button type="button" onclick="location.href='/mypage/profile/form'"
				class="insert_btn">등록하기</button>
    		</c:otherwise>
		</c:choose>
	</div>
</div>