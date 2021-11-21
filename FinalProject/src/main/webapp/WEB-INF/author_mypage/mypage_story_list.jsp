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
							<span>제이라운드님</span>
						</div>
						<div class="profile_btn">
							<button type="button">정보수정</button>
							<button type="button">로그아웃</button>
						</div>
					</div>
					<div class="grade_shopbox">
						<span>총 등록한 작품</span>
						<p class="shop_box_text">10개</p>
					</div>
					<div class="grade_shopbox">
						<span>총 등록한 클래스</span>
						<p class="shop_box_text">10건</p>
					</div>
					<div class="grade_shopbox">
						<span>총 주문현황</span>
						<p class="shop_box_text">작품&nbsp;10개</p>
						<p>클래스&nbsp;20건</p>
					</div>
					<div class="grade_shopbox">
						<span>총 결제현황</span>
						<p class="shop_box_text">승인&nbsp;20건</p>
						<p>미승인&nbsp;30건</p>
					</div>
				</div>
			</div>
		</div>
	</div>
</section>
<!-- 좌측 메뉴 -->
<section class="author-details-middle">
	<div class="container">
		<div class="row">
			<div class="mypage__side_menu">
				<h2>마이페이지</h2>
				<div class="mypage__snb_all">
					<ul class="mypage__snb">
						<li><a href="#">작품/클래스 관리</a></li>
						<li><a href="#">주문 관리</a></li>
						<li><a href="/mypage/profile">프로필 관리</a></li>
						<li class="on"><a href="/mypage/story/list">스토리 관리</a></li>
						<li><a href="#">정보 수정하기</a></li>
						<li><a href="#">회원 탈퇴</a></li>
					</ul>
				</div>
			</div>
			<!-- 스토리 리스트 -->
			<div class="mypage__story">
				<h2>스토리 관리</h2>
				<div class="mypage__story__list">
					<table class="story__table">
						<tr>
							<th>No</th>
							<th>제목</th>
							<th>작성일</th>
							<th>수정/삭제</th>
						</tr>
						<tr>
							<td>1</td>
							<td><a href="#">스토리제목1</a></td>
							<td>2021.11.21</td>
							<td><button type="button" class="story_mod_btn">수정</button>
							<button type="button" class="story_del_btn">삭제</button></td>
						</tr>
						<tr>
							<td>2</td>
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
						<a href="#">1</a>
						<a href="#">2</a>
						<a href="#">3</a>
						<a href="#"><i class="fa fa-long-arrow-right"></i></a>
					</div>
				</div>
			</div>
		</div>
	</div>
</section>