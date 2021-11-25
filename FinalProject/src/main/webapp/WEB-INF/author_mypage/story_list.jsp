<%@ page language="java" contentType="text/html; charset=utf-8"
	pageEncoding="utf-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
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
			
			<c:if test="${totalCount==0}">
			<tr>
				<td colspan="5" align="center">
					등록된 게시글이 없습니다.
				</td>
			</tr>
			</c:if>
			
			<c:if test="${totalCount>0}">
				<c:forEach var="sdto" items="${list}">
				<tr>
					<td align="center">${no}</td>
					<c:set var="no" value="${no-1}"/>
					<td><img src="/photo/${sdto.thumbnail_file}"></td>
					<td>
						<a href="story_view?num=${sdto.num}&currentPage=${currentPage}&key=list" style="color:black;">
						${sdto.title}</a>
					</td>
					<td>
						<fmt:formatDate value="${sdto.writeday}" pattern="yyyy-MM-dd"/>
					</td>
					<td>
						<button type="button" class="story_mod_btn">수정</button>
						<button type="button" class="story_del_btn">삭제</button>
					</td>
				</tr>
				</c:forEach>
			</c:if>	
			
			<!-- tr>
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
			</tr> -->
		</table>
		<div class="story__insert__bottom">
			<button type="submit" onclick="location.href='/mypage/story/form'">등록하기</button>
		</div>
		
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
