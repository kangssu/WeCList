<%@ page language="java" contentType="text/html; charset=utf-8"
    pageEncoding="utf-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<c:set var="root" value="<%=request.getContextPath()%>"/>
<!-- Breadcrumb Section Begin -->
<section class="breadcrumb-section">
	<div class="container">
		<div class="row">
			<div class="col-lg-12 text-center">
				<div class="breadcrumb__text">
					<h2>온라인 클래스</h2>
					<div class="breadcrumb__option">
						<a href="./index.html">Home</a>
						<span>온라인 클래스</span>
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
                                src="${root}/img/product/details/main_con3.jpg" alt="">
						<img data-imgbigurl="img/product/details/product-details-3.jpg"
                                src="${root}/img/product/details/main_con3.jpg" alt="">
						<img data-imgbigurl="img/product/details/product-details-5.jpg"
                                src="${root}/img/product/details/main_con3.jpg" alt="">
						<img data-imgbigurl="img/product/details/product-details-4.jpg"
                                src="${root}/img/product/details/main_con3.jpg" alt="">
					</div>
				</div>
			</div>
			<div class="col-lg-6 col-md-6">
				<div class="product__details__text">
					<a href="#">	
						<span><img src="${root}/img/pro2.jpg" >달콩작가의 그림작업실<i class="fa fa-angle-right"></i></span>
					</a>
					<h3>바퀴달린집2 출연진이 배운, 달콩이의 아이패드 드로잉</h3>
					<div class="product__details__rating">
						<i class="fa fa-star"></i>
						<i class="fa fa-star"></i>
						<i class="fa fa-star"></i>
						<i class="fa fa-star"></i>
						<i class="fa fa-star-half-o"></i>
						<span>(15개의 리뷰)</span>
					</div>
					<div class="product__details__price">149,000원</div>
					<p>2021년의 수능 합격 기원을 위한 수제카라멜 선물세트로 공부하는 수험생들에게 힘을 주기 위한 선물세트 입니다.
					건강에도 좋은 성분으로 만든 카라멜을 직접 만들어서 선물해보세요!!!</p>
					
					<div class="class_view_text_1">
						<dl>
							<dt>수강시작일</dt>
							<dd>신청 즉시</dd>
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
						※ 해당 클래스 구매시 무한 스트리밍으로 평생 소장 가능합니다.<br>
						※ 준비물이 포함된 가격입니다.<br>
						※ 준비물이 있을 경우 이메일 전달 또는 기입하신 배송지로 배달됩니다.
					</div>
					<!-- <div class="product__details__quantity">
						<div class="quantity">
							<div class="pro-qty">
								<input type="text" value="1">
							</div>
						</div>
					</div> -->
					<button type="button" class="primary-btn" onclick="#">구매하기</button>
					<button type="button" class="heart-btn" onclick="">찜하기</button>
					<button type="button" class="list-btn" onclick="location.href='list'">목록보기</button>
				</div>
			</div>
			<div class="col-lg-12">
				<div class="product__details__tab">
					<ul class="nav nav-tabs" role="tablist">
						<li class="nav-item">
							<a class="nav-link active" data-toggle="tab" href="#tabs-1" role="tab"
                                    aria-selected="true">클래스 소개</a>
						</li>
						<li class="nav-item">
							<a class="nav-link" data-toggle="tab" href="#tabs-2" role="tab"
                                    aria-selected="false">진행과정</a>
						</li>
						<li class="nav-item">
							<a class="nav-link" data-toggle="tab" href="#tabs-3" role="tab"
                                    aria-selected="false">수강 후기<span>(1)</span></a>
						</li>
						<li class="nav-item">
							<a class="nav-link" data-toggle="tab" href="#tabs-4" role="tab"
                                    aria-selected="false">환불정책</a>
						</li>
					</ul>
					<div class="tab-content">
						<div class="tab-pane active" id="tabs-1" role="tabpanel">
							<div class="product__details__tab__desc">
								<p>클래스 진행과정 내용출력(이미지+내용 전부 출력)</p>
							</div>
						</div>
						<div class="tab-pane" id="tabs-2" role="tabpanel">
							<div class="product__details__tab__desc">
								<p>진행과정 영상 리스트 출력(폼 만들어야함)</p>
							</div>
						</div>
						<div class="tab-pane" id="tabs-3" role="tabpanel">
							<div class="product__details__tab__desc">
								<p>수강 후기 폼 작성(폼 만들어야함-작품(리뷰)와 동일한 폼!)</p>
							</div>
						</div>
						<div class="tab-pane" id="tabs-4" role="tabpanel">
							<div class="product__details__tab__desc">
								<p>환불정책 내용출력 (이미지+내용 전부 출력)</p>
							</div>
						</div>
					</div>
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
			<div class="col-lg-3 col-md-4 col-sm-6">
				<div class="product__item">
					<a href="#">	
						<div class="product__item__pic set-bg">
							<img src="${root}/img/latest-product/main_con3.jpg" alt="">
						</div>
						<div class="product__item__text">
							<h6>달콩작가의 그림작업실</h6>
							<h6>바퀴달린집2 출연진이 배운,</h6>
							<h5>16,500원</h5>
						</div>
					</a>
				</div>
			</div>
			<div class="col-lg-3 col-md-4 col-sm-6">
				<div class="product__item">
					<a href="#">	
						<div class="product__item__pic set-bg">
							<img src="${root}/img/latest-product/main_con3.jpg" alt="">
						</div>
						<div class="product__item__text">
							<h6>달콩작가의 그림작업실</h6>
							<h6>바퀴달린집2 출연진이 배운,</h6>
							<h5>16,500원</h5>
						</div>
					</a>
				</div>
			</div>
			<div class="col-lg-3 col-md-4 col-sm-6">
				<div class="product__item">
					<a href="#">	
						<div class="product__item__pic set-bg">
							<img src="${root}/img/latest-product/main_con3.jpg" alt="">
						</div>
						<div class="product__item__text">
							<h6>달콩작가의 그림작업실</h6>
							<h6>바퀴달린집2 출연진이 배운,</h6>
							<h5>16,500원</h5>
						</div>
					</a>
				</div>
			</div>
			<div class="col-lg-3 col-md-4 col-sm-6">
				<div class="product__item">
					<a href="#">	
						<div class="product__item__pic set-bg">
							<img src="${root}/img/latest-product/main_con3.jpg" alt="">
						</div>
						<div class="product__item__text">
							<h6>달콩작가의 그림작업실</h6>
							<h6>바퀴달린집2 출연진이 배운,</h6>
							<h5>16,500원</h5>
						</div>
					</a>
				</div>
			</div>
			<div class="col-lg-3 col-md-4 col-sm-6">
				<div class="product__item">
					<a href="#">	
						<div class="product__item__pic set-bg">
							<img src="${root}/img/latest-product/main_con3.jpg" alt="">
						</div>
						<div class="product__item__text">
							<h6>달콩작가의 그림작업실</h6>
							<h6>바퀴달린집2 출연진이 배운,</h6>
							<h5>16,500원</h5>
						</div>
					</a>
				</div>
			</div>
		</div>
	</div>
</section>
<!-- Related Product Section End -->