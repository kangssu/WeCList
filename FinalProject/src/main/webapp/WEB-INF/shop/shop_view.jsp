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
					<h2>작품</h2>
					<div class="breadcrumb__option">
						<a href="./index.html">Home</a>
						<span>작품</span>
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
                                src="${root}/img/product/details/main_con1.jpg" alt="">
					</div>
					<div class="product__details__pic__slider owl-carousel">
						<img data-imgbigurl="img/product/details/product-details-2.jpg"
                                src="${root}/img/product/details/main_con1.jpg" alt="">
						<img data-imgbigurl="img/product/details/product-details-3.jpg"
                                src="${root}/img/product/details/main_con1.jpg" alt="">
						<img data-imgbigurl="img/product/details/product-details-5.jpg"
                                src="${root}/img/product/details/main_con1.jpg" alt="">
						<img data-imgbigurl="img/product/details/product-details-4.jpg"
                                src="${root}/img/product/details/main_con1.jpg" alt="">
					</div>
				</div>
			</div>
			<div class="col-lg-6 col-md-6">
				<div class="product__details__text">
					<a href="#">	
						<span><img src="${root}/img/pro.jpg" >제이라운드<i class="fa fa-angle-right"></i></span>
					</a>
					<h3>[수능선물]수제카라멜 선물세트</h3>
					<div class="product__details__rating">
						<i class="fa fa-star"></i>
						<i class="fa fa-star"></i>
						<i class="fa fa-star"></i>
						<i class="fa fa-star"></i>
						<i class="fa fa-star-half-o"></i>
						<span>(18개의 리뷰)</span>
					</div>
					<div class="product__details__price">11,000원</div>
					<p>2021년의 수능 합격 기원을 위한 수제카라멜 선물세트로 공부하는 수험생들에게 힘을 주기 위한 선물세트 입니다.
					건강에도 좋은 성분으로 만든 카라멜을 직접 만들어서 선물해보세요!!!</p>
					<ul class="view_option_select">
						<li class="view_option_select_su"><b>수량</b> <span>주문시 제작</span></li>
						<li><b>배송비</b> <span>2,500원 <samp>(모든 지역 동일)</samp></span></li>
						<li><b>배송시작</b> <span>평균 1일, 최대 30일 이내</span></li>
						<li><b>옵션선택</b>
							<select>
								<option>--선택안함--</option>
								<option>선물포장(+1000)</option>
								<option>박스(+1박스)</option>
								<option>박스(+1박스)+선물포장(+1000)</option>
							</select>
						</li>
					</ul>
					
					<div class="product__details__text__option__list">
						<p>옵션:선물포장(+1000)</p>
						<div class="product__details__quantity">
							<div class="quantity">
								<div class="pro-qty">
									<input type="text" value="1">
								</div>
							</div>
						</div>
						<div class="product__details__quantity">
							<div class="quantity-del">
								<span class="quantity-del-dan">13,500원</span>
								<button>X</button>
							</div>
						</div>
					</div>
					
					<div class="product__details__price__total">
						<p>총 작품금액</p>
						<span>14,500원</span>
					</div>
					
					<button type="button" class="primary-btn" onclick="location.href='buy'">구매하기</button>
					<button type="button" class="heart-btn" onclick="">찜하기</button>
					<button type="button" class="list-btn" onclick="location.href='list'">목록보기</button>
				</div>
			</div>
			<div class="col-lg-12">
				<div class="product__details__tab">
					<ul class="nav nav-tabs" role="tablist">
						<li class="nav-item">
							<a class="nav-link active" data-toggle="tab" href="#tabs-1" role="tab"
                                    aria-selected="true">상세정보</a>
						</li>
						<li class="nav-item">
							<a class="nav-link" data-toggle="tab" href="#tabs-2" role="tab"
                                    aria-selected="false">배송/교환/환불정보</a>
						</li>
						<li class="nav-item">
							<a class="nav-link" data-toggle="tab" href="#tabs-3" role="tab"
                                    aria-selected="false">리뷰 <span>(1)</span></a>
						</li>
					</ul>
					<div class="tab-content">
						<div class="tab-pane active" id="tabs-1" role="tabpanel">
							<div class="product__details__tab__desc">
								<p>상세정보 내용출력(이미지+내용 전부 출력)</p>
							</div>
						</div>
						<div class="tab-pane" id="tabs-2" role="tabpanel">
							<div class="product__details__tab__desc">
								<p>배송/교환/환불 내용출력(이미지+내용 전부 출력)</p>
							</div>
						</div>
						<div class="tab-pane" id="tabs-3" role="tabpanel">
							<div class="product__details__tab__desc">
									<p>리뷰 폼 출력(폼 만들어야함)</p>
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
					<h2>다른 작품 구경하기</h2>
					<span>다양한 작품을 구경해보세요!</span>
				</div>
			</div>
		</div>
		<div class="row">
			<div class="col-lg-3 col-md-4 col-sm-6">
				<div class="product__item">
					<a href="#">	
						<div class="product__item__pic">
							<img src="${root}/img/featured/main_con1.jpg" alt="">
						</div>
						<div class="product__item__text">
							<h6>제이라운드</h6>
							<h6>[수능선물]수제카라멜 선물세트</h6>
							<h5>11,000원</h5>
						</div>
					</a>
				</div>
			</div>
			<div class="col-lg-3 col-md-4 col-sm-6">
				<div class="product__item">
					<a href="#">	
						<div class="product__item__pic">
							<img src="${root}/img/featured/main_con1.jpg" alt="">
						</div>
						<div class="product__item__text">
							<h6>제이라운드</h6>
							<h6>[수능선물]수제카라멜 선물세트</h6>
							<h5>11,000원</h5>
						</div>
					</a>
				</div>
			</div>
			<div class="col-lg-3 col-md-4 col-sm-6">
				<div class="product__item">
					<a href="#">	
						<div class="product__item__pic">
							<img src="${root}/img/featured/main_con1.jpg" alt="">
						</div>
						<div class="product__item__text">
							<h6>제이라운드</h6>
							<h6>[수능선물]수제카라멜 선물세트</h6>
							<h5>11,000원</h5>
						</div>
					</a>
				</div>
			</div>
			<div class="col-lg-3 col-md-4 col-sm-6">
				<div class="product__item">
					<a href="#">	
						<div class="product__item__pic">
							<img src="${root}/img/featured/main_con1.jpg" alt="">
						</div>
						<div class="product__item__text">
							<h6>제이라운드</h6>
							<h6>[수능선물]수제카라멜 선물세트</h6>
							<h5>11,000원</h5>
						</div>
					</a>
				</div>
			</div>
			<div class="col-lg-3 col-md-4 col-sm-6">
				<div class="product__item">
					<a href="#">	
						<div class="product__item__pic">
							<img src="${root}/img/featured/main_con1.jpg" alt="">
						</div>
						<div class="product__item__text">
							<h6>제이라운드</h6>
							<h6>[수능선물]수제카라멜 선물세트</h6>
							<h5>11,000원</h5>
						</div>
					</a>
				</div>
			</div>
		</div>
	</div>
</section>
<!-- Related Product Section End -->