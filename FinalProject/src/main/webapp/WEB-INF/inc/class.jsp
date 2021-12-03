<%@ page language="java" contentType="text/html; charset=utf-8"
    pageEncoding="utf-8"%>
 <!-- Hero Section Begin -->
<script>
	$(document).ready(function (){
		$("#btn_class_page").closest("li").addClass("active");
	})
</script>
<section class="hero">
	<div class="main_container">
		<!-- Start Banner Hero -->
		<div class="banner-wrapper bg-light">

			<div id="demo" class="carousel slide" data-ride="carousel">

				<!-- Indicators -->
				<ul class="carousel-indicators">
					<li data-target="#demo" data-slide-to="0" class="active"></li>
					<li data-target="#demo" data-slide-to="1"></li>
					<li data-target="#demo" data-slide-to="2"></li>
				</ul>

				<!-- The slideshow -->
				<div class="carousel-inner">
					<div class="carousel-item active">
						<img src="img/hero/main3.jpg" alt="Los Angeles">
					</div>
					<div class="carousel-item">
						<img src="img/hero/main3.jpg" alt="Chicago">
					</div>
					<div class="carousel-item">
						<img src="img/hero/main3.jpg" alt="New York">
					</div>
				</div>

				<!-- Left and right controls -->
				<a class="carousel-control-prev" href="#demo" data-slide="prev">
					<span class="carousel-control-prev-icon"></span>
				</a> <a class="carousel-control-next" href="#demo" data-slide="next">
					<span class="carousel-control-next-icon"></span>
				</a>

			</div>

		</div>
		<!-- End Banner Hero -->
	</div>
</section>
<!-- Hero Section End -->

<!-- Featured Section Begin -->
<section class="featured spad">
	<div class="container">
		<div class="row">
			<div class="col-lg-12 section-title_top">
				<div class="section-title">
					<h2>TOP 12 온라인 클래스</h2>
					<span class="fa fa-angle-right"></span>
				</div>
			</div>
		</div>
		<div class="row featured__filter">
 			<div class="col-lg-4 col-md-6 col-sm-6">
				<div class="featured__item">
					<a href="#">
						<div class="product__item__pic set-bg">
							<img src="${root}/img/latest-product/main_con3.jpg" alt="">
							<span class="shop_rank_number first">1</span>
						</div>
						<div class="product__discount__item__text">
							<span>달콩작가의 그림작업실</span>
							<h5>바퀴달린집2 출연진이 배운,</h5>
							<div class="product__item__price">16,500원</div>
						</div>
					</a>
				</div>
			</div>
			<button type="button" class="main__hot__shop__1" onclick="location.href='class/popul'">인기 온라인 클래스 더보기</button>
		</div>
	</div>
</section>
<!-- Featured Section End -->

<!-- Featured Section Begin -->
<section class="featured spad commingsoon__class">
	<div class="container">
		<div class="row">
			<div class="col-lg-12 section-title_top">
				<div class="section-title commingsoon__class__title">
					<h2>100% 달성시 클래스 제작!</h2>
					<span class="fa fa-angle-right"></span>
				</div>
			</div>
		</div>
		<div class="row">
			<div class="product__discount__slider owl-carousel">
				<div class="col-lg-4">
					<div class="product__discount__item">
						<a href="class/view_news">
							<div class="product__item__pic set-bg">
								<img src="${root}/img/latest-product/main_con3.jpg" alt="">
							</div>
							<div class="product__discount__item__text">
								<span>달콩작가의 그림작업실</span>
								<h5>바퀴달린집2 출연진이 배운,</h5>
								<div class="product__item__price">16,500원</div>
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
						</a>
					</div>
				</div>
			</div>
		</div>
	</div>	
</section>
<!-- Featured Section End -->

<!-- Banner Begin -->
<div class="banner">
	<div class="set-bg main_banner_1" data-setbg="img/hero/banner.png">
	</div>
</div>
<!-- Banner End -->

<!-- Featured Section Begin -->
<section class="featured spad">
	<div class="container">
		<div class="row">
			<div class="col-lg-12 section-title_top">
				<div class="section-title">
					<h2>신규 온라인 클래스</h2>
					<span class="fa fa-angle-right"></span>
				</div>
			</div>
		</div>
		<div class="row featured__filter">
 			<div class="col-lg-4 col-md-6 col-sm-6">
				<div class="featured__item">
					<a href="#">
						<div class="product__item__pic set-bg">
							<img src="${root}/img/latest-product/main_con3.jpg" alt="">
						</div>
						<div class="product__discount__item__text">
							<span>달콩작가의 그림작업실</span>
							<h5>바퀴달린집2 출연진이 배운,</h5>
							<div class="product__item__price">16,500원</div>
						</div>
					</a>
				</div>
			</div>
			<div class="col-lg-4 col-md-6 col-sm-6">
				<div class="featured__item">
					<a href="#">
						<div class="product__item__pic set-bg">
							<img src="${root}/img/latest-product/main_con3.jpg" alt="">
						</div>
						<div class="product__discount__item__text">
							<span>달콩작가의 그림작업실</span>
							<h5>바퀴달린집2 출연진이 배운,</h5>
							<div class="product__item__price">16,500원</div>
						</div>
					</a>
				</div>
			</div>
			<div class="col-lg-4 col-md-6 col-sm-6">
				<div class="featured__item">
					<a href="#">
						<div class="product__item__pic set-bg">
							<img src="${root}/img/latest-product/main_con3.jpg" alt="">
						</div>
						<div class="product__discount__item__text">
							<span>달콩작가의 그림작업실</span>
							<h5>바퀴달린집2 출연진이 배운,</h5>
							<div class="product__item__price">16,500원</div>
						</div>
					</a>
				</div>
			</div>
			<div class="col-lg-4 col-md-6 col-sm-6">
				<div class="featured__item">
					<a href="#">
						<div class="product__item__pic set-bg">
							<img src="${root}/img/latest-product/main_con3.jpg" alt="">
						</div>
						<div class="product__discount__item__text">
							<span>달콩작가의 그림작업실</span>
							<h5>바퀴달린집2 출연진이 배운,</h5>
							<div class="product__item__price">16,500원</div>
						</div>
					</a>
				</div>
			</div>
			<div class="col-lg-4 col-md-6 col-sm-6">
				<div class="featured__item">
					<a href="#">
						<div class="product__item__pic set-bg">
							<img src="${root}/img/latest-product/main_con3.jpg" alt="">
						</div>
						<div class="product__discount__item__text">
							<span>달콩작가의 그림작업실</span>
							<h5>바퀴달린집2 출연진이 배운,</h5>
							<div class="product__item__price">16,500원</div>
						</div>
					</a>
				</div>
			</div>
			<div class="col-lg-4 col-md-6 col-sm-6">
				<div class="featured__item">
					<a href="#">
						<div class="product__item__pic set-bg">
							<img src="${root}/img/latest-product/main_con3.jpg" alt="">
						</div>
						<div class="product__discount__item__text">
							<span>달콩작가의 그림작업실</span>
							<h5>바퀴달린집2 출연진이 배운,</h5>
							<div class="product__item__price">16,500원</div>
						</div>
					</a>
				</div>
			</div>
			<div class="col-lg-4 col-md-6 col-sm-6">
				<div class="featured__item">
					<a href="#">
						<div class="product__item__pic set-bg">
							<img src="${root}/img/latest-product/main_con3.jpg" alt="">
						</div>
						<div class="product__discount__item__text">
							<span>달콩작가의 그림작업실</span>
							<h5>바퀴달린집2 출연진이 배운,</h5>
							<div class="product__item__price">16,500원</div>
						</div>
					</a>
				</div>
			</div>
			<div class="col-lg-4 col-md-6 col-sm-6">
				<div class="featured__item">
					<a href="#">
						<div class="product__item__pic set-bg">
							<img src="${root}/img/latest-product/main_con3.jpg" alt="">
						</div>
						<div class="product__discount__item__text">
							<span>달콩작가의 그림작업실</span>
							<h5>바퀴달린집2 출연진이 배운,</h5>
							<div class="product__item__price">16,500원</div>
						</div>
					</a>
				</div>
			</div>
			<button type="button" class="main__hot__shop__1" onclick="location.href='class/news'">신규 온라인 클래스 더보기</button>
		</div>
	</div>
</section>
<!-- Featured Section End -->
