<%@ page language="java" contentType="text/html; charset=utf-8"
	pageEncoding="utf-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<c:set var="root" value="<%=request.getContextPath()%>" />
<!-- 공지사항 리스트 -->
<div class="customer__notice">
	<h2>공지사항</h2>
	<div class="notice__list">
		<table class="notice__table">
			<tr>
				<th>No</th>
				<th>제목</th>
				<th>작성일</th>
				<th>작성자</th>
			</tr>
			<tr>
				<td align="center">1</td>
				<td>
					<a href="#" style="color:black;">
					공지사항입니다.</a>
				</td>
				<td>2021-12-02</td>
				<td>홍길동</td>
			</tr>
			<tr>
				<td align="center">2</td>
				<td>
					<a href="#" style="color:black;">
					공지사항입니다.</a>
				</td>
				<td>2021-12-02</td>
				<td>홍길동</td>
			</tr>
			<tr>
				<td align="center">3</td>
				<td>
					<a href="#" style="color:black;">
					공지사항입니다.</a>
				</td>
				<td>2021-12-02</td>
				<td>홍길동</td>
			</tr>
		</table>
		
		<!-- 페이징 여기다가 아래 코드 지우고 넣기! class 동일하게줘야 css 먹음!!! -->
		<div class="product__pagination">
			<c:if test="${startPage>1}">
				<a href="list?currentPage=${startPage-1}">이전</a>
			</c:if>

			<c:forEach var="pp" begin="${startPage}" end="${endPage}">
				<c:if test="${currentPage==pp}">
					<li class="select"><a class="select2" href="list?currentPage=${pp}">${pp}</a></li>
				</c:if>
				<c:if test="${currentPage!=pp}">
					<li class="active"><a href="list?currentPage=${pp}">${pp}</a></li>
				</c:if>
			</c:forEach>
			<!-- 다음 -->
			<c:if test="${endPage<totalPage}">
				<a href="list?currentPage=${endPage+1}">다음</a>
			</c:if>
		</div>
	</div>
</div>
