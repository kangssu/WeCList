<%@ page language="java" contentType="text/html; charset=utf-8"
    pageEncoding="utf-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<c:set var="root" value="<%=request.getContextPath()%>"/>
<!-- 상단 풀 정보 영역 -->
<section class="author-details-top">
	<div class="mypage__top">
		<div class="container">
			<div class="mypage__top__user">
				<div class="row">
					<div class="grade_user">
						<div class="profile_img">
							<img src="/img/pro.jpg">
							<span>${id }님
							<c:choose>
								<c:when test="${sessionScope.category == 2}">
									(작가)</span>
								</c:when>
								<c:otherwise>
									(일반회원)</span>
								</c:otherwise>
							</c:choose>
							<br><br>
							<c:choose>
								<c:when test="${sessionScope.nickname eq null}">
									<span><i class="fa fa-id-badge" aria-hidden="true"></i> 닉네임 설정이 필요합니다.</span>
								</c:when>
								<c:otherwise>
									<span><i class="fa fa-id-badge" aria-hidden="true"></i> 닉네임: ${nickname }</span>
								</c:otherwise>
							</c:choose>
						</div>
<!-- 						<div class="profile_btn">
							<button type="button" onclick="location.href='/users/mypage/updatepass'">정보수정</button>
							<button type="button" onclick="location.href='/login/logoutprocess'">로그아웃</button>
						</div> -->
					</div>
					<div class="grade_shopbox">
						<span>총 주문현황</span>
						<p class="shop_box_text">작품&nbsp;10개</p>
						<p>클래스&nbsp;20건</p>
					</div>
				</div>
			</div>
		</div>
	</div>
</section>
