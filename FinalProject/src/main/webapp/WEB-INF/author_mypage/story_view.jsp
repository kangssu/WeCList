<%@ page language="java" contentType="text/html; charset=utf-8"
	pageEncoding="utf-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<c:set var="root" value="<%=request.getContextPath()%>" />
<!-- 스토리 리스트 -->
<div class="mypage__story">
	<h2>스토리 관리</h2>
	<div class="mypage__story__view">
		<span>제목</span>
		<p>2021-11-25</p>
		<p>내용이 들어갈 자리입니다!</p>
		<input type="file" name="upload"></input>
		<div class="story_write_form_btn_all">
			<button type="button" class="story_list_btn"
				onclick="location.href='/mypage/story/list'">목록</button>
			<button type="submit" class="story_su_btn">수정하기</button>
			<button type="submit" class="story_del_btn">삭제하기</button>
		</div>
	</div>
</div>
