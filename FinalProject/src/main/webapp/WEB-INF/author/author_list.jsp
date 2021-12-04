<%@ page language="java" contentType="text/html; charset=utf-8"
    pageEncoding="utf-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<c:set var="root" value="<%=request.getContextPath()%>"/>
<!-- Breadcrumb Section Begin -->
<section class="breadcrumb-section">
	<div class="container">
		<div class="row">
			<div class="col-lg-12 text-center">
				<div class="breadcrumb__text">
					<h2>작가 구경하기</h2>
					<div class="breadcrumb__option">
						<a href="./index.html">Home</a>
						<span>작가 구경하기</span>
					</div>
				</div>
			</div>
		</div>
	</div>
</section>
<!-- Breadcrumb Section End -->
<!-- 작가 리스트 -->
<div class="author_list">
	<section class="hot_author">
		<div class="container">
			<div class="row">
				<div class="col-lg-12 section-title_top">
					<div class="author_list_hot_title">
						<h2>TOP 10 작가</h2>
					</div>
				</div>
				<div class="categories__slider owl-carousel">
					<div class="col-lg-3">
						<a href="#">
							<div class="author__box set-bg">
								<img src="/img/pro.jpg" id="author_img_1">
								<h5>제이라운드</h5>
							</div>
						</a>
					</div>
					<div class="col-lg-3">
						<a href="#">
							<div class="author__box set-bg">
								<img src="/img/pro.jpg" id="author_img_1">
								<h5>제이라운드</h5>
							</div>
						</a>
					</div>
					<div class="col-lg-3">
						<a href="#">
							<div class="author__box set-bg">
								<img src="/img/pro.jpg" id="author_img_1">
								<h5>제이라운드</h5>
							</div>
						</a>
					</div>
					<div class="col-lg-3">
						<a href="#">
							<div class="author__box set-bg">
								<img src="/img/pro.jpg" id="author_img_1">
								<h5>제이라운드</h5>
							</div>
						</a>
					</div>
					<div class="col-lg-3">
						<a href="#">
							<div class="author__box set-bg">
								<img src="/img/pro.jpg" id="author_img_1">
								<h5>제이라운드</h5>
							</div>
						</a>
					</div>
				</div>
			</div>
		</div>
	</section>
	<div class="author_all_list">
		<div class="container">
			<div class="author_title">
				<span>We C List의 작가 총 <b>0</b>명</span>
			</div>
			<div class="author__box__all_list">
				<div class="author__box_all">
					<img src="/img/pro.jpg" class="author_img_2">
				</div>
				<div class="author__box_all">
					<div class="all_text">
						<h5>제이라운드</h5>
						<p>제이라운드만의 작품을 만나보세요.제이라운드만의 작품을 만나보세요.</p>
						<button type="button" class="btn_follow">
							<i class="fa fa-plus" aria-hidden="true"></i>
							팔로우
						</button>
						<button type="button" class="btn_home">
							<i class="fa fa-home" aria-hidden="true"></i>
							구경하기
						</button>
					</div>
				</div>
			</div>
			<div class="author__box__all_list">
				<div class="author__box_all">
					<img src="/img/pro.jpg" class="author_img_2">
				</div>
				<div class="author__box_all">
					<div class="all_text">
						<h5>제이라운드</h5>
						<p>제이라운드만의 작품을 만나보세요.제이라운드만의 작품을 만나보세요.</p>
						<button type="button" class="btn_follow">
							<i class="fa fa-plus" aria-hidden="true"></i>
							팔로우
						</button>
						<button type="button" class="btn_home">
							<i class="fa fa-home" aria-hidden="true"></i>
							구경하기
						</button>
					</div>
				</div>
			</div>
			<div class="author__box__all_list">
				<div class="author__box_all">
					<img src="/img/pro.jpg" class="author_img_2">
				</div>
				<div class="author__box_all">
					<div class="all_text">
						<h5>제이라운드</h5>
						<p>제이라운드만의 작품을 만나보세요.제이라운드만의 작품을 만나보세요.</p>
						<button type="button" class="btn_follow">
							<i class="fa fa-plus" aria-hidden="true"></i>
							팔로우
						</button>
						<button type="button" class="btn_home">
							<i class="fa fa-home" aria-hidden="true"></i>
							구경하기
						</button>
					</div>
				</div>
			</div>
			<div class="author__box__all_list">
				<div class="author__box_all">
					<img src="/img/pro.jpg" class="author_img_2">
				</div>
				<div class="author__box_all">
					<div class="all_text">
						<h5>제이라운드</h5>
						<p>제이라운드만의 작품을 만나보세요.제이라운드만의 작품을 만나보세요.</p>
						<button type="button" class="btn_follow">
							<i class="fa fa-plus" aria-hidden="true"></i>
							팔로우
						</button>
						<button type="button" class="btn_home">
							<i class="fa fa-home" aria-hidden="true"></i>
							구경하기
						</button>
					</div>
				</div>
			</div>
			<div class="author__box__all_list">
				<div class="author__box_all">
					<img src="/img/pro.jpg" class="author_img_2">
				</div>
				<div class="author__box_all">
					<div class="all_text">
						<h5>제이라운드</h5>
						<p>제이라운드만의 작품을 만나보세요.제이라운드만의 작품을 만나보세요.</p>
						<button type="button" class="btn_follow">
							<i class="fa fa-plus" aria-hidden="true"></i>
							팔로우
						</button>
						<button type="button" class="btn_home">
							<i class="fa fa-home" aria-hidden="true"></i>
							구경하기
						</button>
					</div>
				</div>
			</div>
			<div class="author__box__all_list">
				<div class="author__box_all">
					<img src="/img/pro.jpg" class="author_img_2">
				</div>
				<div class="author__box_all">
					<div class="all_text">
						<h5>제이라운드</h5>
						<p>제이라운드만의 작품을 만나보세요.제이라운드만의 작품을 만나보세요.</p>
						<button type="button" class="btn_follow">
							<i class="fa fa-plus" aria-hidden="true"></i>
							팔로우
						</button>
						<button type="button" class="btn_home">
							<i class="fa fa-home" aria-hidden="true"></i>
							구경하기
						</button>
					</div>
				</div>
			</div>
			<div class="author__box__all_list">
				<div class="author__box_all">
					<img src="/img/pro.jpg" class="author_img_2">
				</div>
				<div class="author__box_all">
					<div class="all_text">
						<h5>제이라운드</h5>
						<p>제이라운드만의 작품을 만나보세요.제이라운드만의 작품을 만나보세요.</p>
						<button type="button" class="btn_follow">
							<i class="fa fa-plus" aria-hidden="true"></i>
							팔로우
						</button>
						<button type="button" class="btn_home">
							<i class="fa fa-home" aria-hidden="true"></i>
							구경하기
						</button>
					</div>
				</div>
			</div>
			<div class="author__box__all_list">
				<div class="author__box_all">
					<img src="/img/pro.jpg" class="author_img_2">
				</div>
				<div class="author__box_all">
					<div class="all_text">
						<h5>제이라운드</h5>
						<p>제이라운드만의 작품을 만나보세요.제이라운드만의 작품을 만나보세요.</p>
						<button type="button" class="btn_follow">
							<i class="fa fa-plus" aria-hidden="true"></i>
							팔로우
						</button>
						<button type="button" class="btn_home">
							<i class="fa fa-home" aria-hidden="true"></i>
							구경하기
						</button>
					</div>
				</div>
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
</div>