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

<!-- Product Section Begin -->
<section class="product spad">
	<div class="container">
		<div class="row">
			<div class="col-lg-9 col-md-7">
				<div class="section-title product__discount__title">
					<h2>
						<b>인기 클래스 1위부터 10위까지 넣기</b>
					</h2>
				</div>
				<div class="container">
		<div class="row">
			<div class="categories__slider owl-carousel">
				<div class="col-lg-3">
					<a href="#">
						<div class="categories__item set-bg" data-setbg="${root}/img/latest-product/main_con3.jpg">
						</div>
					</a>
				</div>
				<div class="col-lg-3">
					<a href="#">
						<div class="categories__item set-bg" data-setbg="${root}/img/latest-product/main_con3.jpg">
						</div>
					</a>	
				</div>
				<div class="col-lg-3">
					<a href="#">
						<div class="categories__item set-bg" data-setbg="${root}/img/latest-product/main_con3.jpg">
						</div>
					</a>
				</div>
				<div class="col-lg-3">
					<a href="#">
						<div class="categories__item set-bg" data-setbg="${root}/img/latest-product/main_con3.jpg">
						</div>
					</a>
				</div>
				<div class="col-lg-3">
					<a href="#">
						<div class="categories__item set-bg" data-setbg="${root}/img/latest-product/main_con3.jpg">
						</div>
					</a>
				</div>
			</div>
		</div>
	</div>
				
				<div class="filter__item">
					<div class="row">
						<div class="col-lg-4 col-md-5">
							<div class="filter__found">
								<h6>
									총 <span>16</span>개의 온라인 클래스
								</h6>
							</div>
						</div>
						<div class="col-lg-4 col-md-3">
							<div class="filter__sort">
								<select>
									<option value="0">최신순</option>
									<option value="0">인기순</option>
								</select>
							</div>
						</div>
					</div>
				</div>
				<div class="row">
					<div class="col-lg-4 col-md-6 col-sm-6">
						<div class="product__item">
							<a href="${root}/class/view">
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
					<div class="col-lg-4 col-md-6 col-sm-6">
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
					<div class="col-lg-4 col-md-6 col-sm-6">
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
					<div class="col-lg-4 col-md-6 col-sm-6">
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
					<div class="col-lg-4 col-md-6 col-sm-6">
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
					<div class="col-lg-4 col-md-6 col-sm-6">
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
					<div class="col-lg-4 col-md-6 col-sm-6">
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
					<div class="col-lg-4 col-md-6 col-sm-6">
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
					<div class="col-lg-4 col-md-6 col-sm-6">
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
					<div class="col-lg-4 col-md-6 col-sm-6">
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
					<div class="col-lg-4 col-md-6 col-sm-6">
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
					<div class="col-lg-4 col-md-6 col-sm-6">
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
				<div class="product__discount">
					<div class="section-title product__discount__title">
						<h2>
							<b>100% 달성시 클래스 제작!</b>
						</h2>
					</div>
					<div class="row">
						<div class="product__discount__slider owl-carousel">
							<div class="col-lg-4">
								<div class="product__discount__item">
									<a href="#">
										<div class="product__item__pic set-bg">
											<img src="${root}/img/latest-product/main_con3.jpg" alt="">
										</div>
										<div class="product__discount__item__text">
											<span>달콩작가의 그림작업실</span>
											<h5>바퀴달린집2 출연진이 배운,</h5>
											<div class="product__item__price">16,500원</div>
										</div>
										<div class="progress">
											<div class="progress-bar" style="width: 45%">45%</div>
										</div>
									</a>
								</div>
							</div>
							<div class="col-lg-4">
								<div class="product__discount__item">
									<a href="#">
										<div class="product__item__pic set-bg">
											<img src="${root}/img/latest-product/main_con3.jpg" alt="">
										</div>
										<div class="product__discount__item__text">
											<span>달콩작가의 그림작업실</span>
											<h5>바퀴달린집2 출연진이 배운,</h5>
											<div class="product__item__price">16,500원</div>
										</div>
										<div class="progress">
											<div class="progress-bar" style="width: 10%">10%</div>
										</div>
									</a>
								</div>
							</div>
							<div class="col-lg-4">
								<div class="product__discount__item">
									<a href="#">
										<div class="product__item__pic set-bg">
											<img src="${root}/img/latest-product/main_con3.jpg" alt="">
										</div>
										<div class="product__discount__item__text">
											<span>달콩작가의 그림작업실</span>
											<h5>바퀴달린집2 출연진이 배운,</h5>
											<div class="product__item__price">16,500원</div>
										</div>
										<div class="progress">
											<div class="progress-bar" style="width: 20%">20%</div>
										</div>
									</a>
								</div>
							</div>
							<div class="col-lg-4">
								<div class="product__discount__item">
									<a href="#">
										<div class="product__item__pic set-bg">
											<img src="${root}/img/latest-product/main_con3.jpg" alt="">
										</div>
										<div class="product__discount__item__text">
											<span>달콩작가의 그림작업실</span>
											<h5>바퀴달린집2 출연진이 배운,</h5>
											<div class="product__item__price">16,500원</div>
										</div>
										<div class="progress">
											<div class="progress-bar" style="width: 15%">15%</div>
										</div>
									</a>
								</div>
							</div>
							<div class="col-lg-4">
								<div class="product__discount__item">
									<a href="#">
										<div class="product__item__pic set-bg">
											<img src="${root}/img/latest-product/main_con3.jpg" alt="">
										</div>
										<div class="product__discount__item__text">
											<span>달콩작가의 그림작업실</span>
											<h5>바퀴달린집2 출연진이 배운,</h5>
											<div class="product__item__price">16,500원</div>
										</div>
										<div class="progress">
											<div class="progress-bar" style="width: 40%">40%</div>
										</div>
									</a>
								</div>
							</div>
							<div class="col-lg-4">
								<div class="product__discount__item">
									<a href="#">
										<div class="product__item__pic set-bg">
											<img src="${root}/img/latest-product/main_con3.jpg" alt="">
										</div>
										<div class="product__discount__item__text">
											<span>달콩작가의 그림작업실</span>
											<h5>바퀴달린집2 출연진이 배운,</h5>
											<div class="product__item__price">16,500원</div>
										</div>
										<div class="progress">
											<div class="progress-bar" style="width: 90%">90%</div>
										</div>
									</a>
								</div>
							</div>
						</div>
					</div>
				</div>
				<!-- 페이징 여기다가 아래 코드 지우고 넣기! class 동일하게줘야 css 먹음!!! -->
				<div class="product__pagination">
					<a href="#">1</a> <a href="#">2</a> <a href="#">3</a> <a href="#"><i
						class="fa fa-long-arrow-right"></i></a>
				</div>
			</div>
		</div>
	</div>
</section>
<!-- Product Section End -->
