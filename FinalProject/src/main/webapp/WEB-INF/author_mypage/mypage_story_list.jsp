<%@ page language="java" contentType="text/html; charset=utf-8"
	pageEncoding="utf-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<c:set var="root" value="<%=request.getContextPath()%>" />
<!-- 스토리 리스트 -->
<div class="mypage__story">
	<h2>스토리 관리</h2>
	<div class="mypage__story__list">
		<table class="story__table">
			<tr>
				<th>No</th>
				<th>썸네일</th>
				<th>제목</th>
				<th>작성일</th>
				<th>수정/삭제</th>
			</tr>
			<tr>
				<td>1</td>
				<td><img src="/img/blog/main_con3.jpg"></td>
				<td><a href="#">스토리제목1</a></td>
				<td>2021.11.21</td>
				<td><button type="button" class="story_mod_btn">수정</button>
					<button type="button" class="story_del_btn">삭제</button></td>
			</tr>
			<tr>
				<td>2</td>
				<td><img src="/img/blog/main_con3.jpg"></td>
				<td><a href="#">스토리제목2</a></td>
				<td>2021.11.21</td>
				<td><button type="button" class="story_mod_btn">수정</button>
					<button type="button" class="story_del_btn">삭제</button></td>
			</tr>
		</table>
		<div class="story__insert__bottom">
			<button type="submit" onclick="location.href='/mypage/story/form'">등록하기</button>
		</div>
		<!-- 페이징 여기다가 아래 코드 지우고 넣기! class 동일하게줘야 css 먹음!!! -->
		<div class="product__pagination">
			<a href="#">1</a> <a href="#">2</a> <a href="#">3</a> <a href="#"><i
				class="fa fa-long-arrow-right"></i></a>
		</div>
	</div>
</div>
