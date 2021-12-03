<%@ page language="java" contentType="text/html; charset=utf-8"
	pageEncoding="utf-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<c:set var="root" value="<%=request.getContextPath()%>" />
<!-- Breadcrumb Section Begin -->
<section class="breadcrumb-section">
	<div class="container">
		<div class="row">
			<div class="col-lg-12 text-center">
				<div class="breadcrumb__text">
					<h2>온라인 클래스</h2>
					<div class="breadcrumb__option">
						<a href="./index.html">Home</a> <span>온라인 클래스</span>
					</div>
				</div>
			</div>
		</div>
	</div>
</section>
<!-- Breadcrumb Section End -->

<!-- Product Details Section Begin -->
<section class="product-details spad">
	<div class="container">
		<div class="row">
			<div class="col-lg-6 col-md-6">
				<div class="product__details__pic">
					<div class="product__details__pic__item">
						<img class="product__details__pic__item--large"
							src="${root}/img/product/details/main_con3.jpg" alt="">
					</div>
					<div class="product__details__pic__slider owl-carousel">
						<img data-imgbigurl="img/product/details/product-details-2.jpg"
							src="${root}/img/product/details/main_con3.jpg" alt=""> <img
							data-imgbigurl="img/product/details/product-details-3.jpg"
							src="${root}/img/product/details/main_con3.jpg" alt=""> <img
							data-imgbigurl="img/product/details/product-details-5.jpg"
							src="${root}/img/product/details/main_con3.jpg" alt=""> <img
							data-imgbigurl="img/product/details/product-details-4.jpg"
							src="${root}/img/product/details/main_con3.jpg" alt="">
					</div>
				</div>
			</div>
			<div class="col-lg-6 col-md-6">
				<div class="product__details__text">
					<a href="#"> <span><img src="${root}/img/pro2.jpg">달콩작가의
							그림작업실<i class="fa fa-angle-right"></i></span>
					</a>
					<h3>바퀴달린집2 출연진이 배운, 달콩이의 아이패드 드로잉</h3>
					<div class="count-box">
						<b style="color: #ffa500">관심있어요 48명</b>
					</div>
					<br>
					<p>2021년의 수능 합격 기원을 위한 수제카라멜 선물세트로 공부하는 수험생들에게 힘을 주기 위한 선물세트
						입니다. 건강에도 좋은 성분으로 만든 카라멜을 직접 만들어서 선물해보세요!!!</p>

					<div class="class_view_text_1">
						<dl>
							<dt>수강시작일</dt>
							<dd>미정</dd>
						</dl>
						<dl>
							<dt>난이도</dt>
							<dd>쉬움</dd>
						</dl>
						<dl>
							<dt>준비물</dt>
							<dd>없음</dd>
						</dl>
					</div>

					<div class="class_view_text_2">
						※ 150명의 관심이 모이면 제작이 진행됩니다.<br> ※ 관심 등록시, 진행과정 소식을 보내드려요.<br>
					</div>
					<!-- <div class="product__details__quantity">
						<div class="quantity">
							<div class="pro-qty">
								<input type="text" value="1">
							</div>
						</div>
					</div> -->
					<button type="button" class="primary-btn" onclick="#"
						style="width: 100%;">관심있어요</button>
				</div>
			</div>
			<div class="col-lg-12">
				<div class="product__details__tab">
					<ul class="nav nav-tabs" role="tablist">
						<li class="nav-item"><a class="nav-link active"
							data-toggle="tab" href="#tabs-1" role="tab" aria-selected="true">클래스
								소개</a></li>
						<li class="nav-item"><a class="nav-link" data-toggle="tab"
							href="#tabs-2" role="tab" aria-selected="false">댓글</a></li>
					</ul>
				</div>
			</div>
		</div>
	</div>
</section>
<!-- Product Details Section End -->

<!-- Related Product Section Begin -->
<section class="related-product">
	<div class="container">
		<div class="row">
			<div class="col-lg-12">
				<div class="section-title related__product__title">
					<h2>다른 클래스 구경하기</h2>
					<span>다양한 클래스를 구경해보세요!</span>
				</div>
			</div>
		</div>
		<div class="row">
			<div class="categories__slider owl-carousel">
				<c:forEach var="cdto" items="${listnews}">
					<div style="float: left;">
						<div class="product__item">
							<a href="${root}/class/view_news?num=${cdto.num}">
								<div class="product__item__pic set-bg">
									<img src="../photo/${cdto.uploadfile}"
										style="width: 300px; height: 300px;">
								</div>
								<div class="product__item__text">
									<h6>${cdto.title}</h6>
									<h6>${cdto.class_op_cate}</h6>
									<h5>${cdto.classprice}원</h5>
								</div>
							</a>
						</div>
					</div>
				</c:forEach>

			</div>
		</div>
	</div>
</section>
<!-- Related Product Section End -->