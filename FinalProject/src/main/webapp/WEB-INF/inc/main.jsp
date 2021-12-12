<%@ page language="java" contentType="text/html; charset=utf-8"
	pageEncoding="utf-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<c:set var="root" value="<%=request.getContextPath()%>" />
<!-- Hero Section Begin -->

<script>
	$(document).ready(function() {
		$("#btn_item_page").closest("li").addClass("active");
	})
</script>

<section class="hero">
	<div class="main_container">
		<!-- Start Banner Hero -->
		<div class="banner-wrapper bg-light">

			<div id="demo" class="carousel slide" data-ride="carousel">

				<!-- Indicators -->
				<ul class="carousel-indicators">
					<li data-target="#demo" data-slide-to="033" class="active"></li>
					<li data-target="#demo" data-slide-to="1"></li>
					<li data-target="#demo" data-slide-to="2"></li>
				</ul>

				<!-- The slideshow -->
				<div class="carousel-inner">
					<div class="carousel-item active">
						<img src="img/hero/main2.jpg" alt="Los Angeles">
					</div>
					<div class="carousel-item">
						<img src="img/hero/main2.jpg" alt="Chicago">
					</div>
					<div class="carousel-item">
						<img src="img/hero/main2.jpg" alt="New York">
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

			<div class="col-lg-9 col-md-7">
				<div class="col-lg-12 section-title_top">
					<div class="section-title">
						<h2>TOP 15 인기 작품</h2>
						<span class="fa fa-angle-right"></span>
					</div>
				</div>

				<div class="row">
					<c:forEach var="a" items="${listpopul}" varStatus="status">
						<div class="col-lg-4 col-md-6 col-sm-6">
							<div class="featured__item">
								<a href="/shop/	content?num=${a.num}">
									<div class="featured__item__pic set-bg">
										<img src="../photo/${a.uploadfile1}" alt=""> <span
											class="shop_rank_number first">${status.count}</span>
									</div>
									<div class="featured__item__text">
										<h6>${a.name}</h6>
										<h6>${a.title}</h6>
										<h5>${a.shopprice}</h5>
									</div>
								</a>
							</div>
						</div>
					</c:forEach>
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
			<div class="col-lg-9 col-md-7">

				<div class="col-lg-12 section-title_top">
					<div class="section-title">
						<h2>최신 작품</h2>
						<span class="fa fa-angle-right"></span>
					</div>
				</div>
				<div class="row">

					<c:forEach var="a" items="${list}">
						<div class="col-lg-4 col-md-6 col-sm-6">

							<div class="featured__item">
								<a href="/shop/	content?num=${a.num}">
									<div class="featured__item__pic set-bg">
										<img src="../photo/${a.uploadfile1}" alt="">
									</div>
									<div class="featured__item__text">
										<h6>${a.name}</h6>
										<h6>${a.title}</h6>
										<h5>${a.shopprice}</h5>
									</div>
								</a>
							</div>
						</div>
					</c:forEach>
				</div>
			</div>
		</div>

	</div>
</section>
<!-- Featured Section End -->

<!-- Blog Section Begin -->
<section class="from-blog spad">
	<div class="container">
		<div class="row">
			<div class="col-lg-12">
				<div class="section-title from-blog__title">
					<h2>작가 스토리</h2>
					<span class="fa fa-angle-right"></span>
				</div>
			</div>
		</div>
		<div class="row">
			<div class="col-lg-4 col-md-4 col-sm-6">
				<div class="story__item__main">
					<a href="#">
						<div class="story_img">
							<img src="/img/pro.jpg"> <span>제이라운드</span>
						</div>
						<div class="story__item__pic">
							<img src="${root}/img/blog/main_con3.jpg" alt="">
						</div>
						<div class="story__item__text">
							<h5>대구 신세계 백화점 8층 클래스 오픈입니다!</h5>
							<p>안녕하세요. 메블랑입니다. 이번달에 대구 신세계 백화점 8층에서 클래스를 오픈하게 되었습니다. 위치는
								아웃백 옆 취미상점 카페입니다!</p>
							<ul>
								<li><i class="fa fa-calendar-o"></i> 2021.11.11</li>
								<li><i class="fa fa-comment-o"></i> 5</li>
							</ul>
						</div>
					</a>
				</div>
			</div>
			<div class="col-lg-4 col-md-4 col-sm-6">
				<div class="story__item__main">
					<a href="#">
						<div class="story_img">
							<img src="/img/pro.jpg"> <span>제이라운드</span>
						</div>
						<div class="story__item__pic">
							<img src="${root}/img/blog/main_con3.jpg" alt="">
						</div>
						<div class="story__item__text">
							<h5>대구 신세계 백화점 8층 클래스 오픈입니다!</h5>
							<p>안녕하세요. 메블랑입니다. 이번달에 대구 신세계 백화점 8층에서 클래스를 오픈하게 되었습니다. 위치는
								아웃백 옆 취미상점 카페입니다!</p>
							<ul>
								<li><i class="fa fa-calendar-o"></i> 2021.11.11</li>
								<li><i class="fa fa-comment-o"></i> 5</li>
							</ul>
						</div>
					</a>
				</div>
			</div>
			<div class="col-lg-4 col-md-4 col-sm-6">
				<div class="story__item__main">
					<a href="#">
						<div class="story_img">
							<img src="/img/pro.jpg"> <span>제이라운드</span>
						</div>
						<div class="story__item__pic">
							<img src="${root}/img/blog/main_con3.jpg" alt="">
						</div>
						<div class="story__item__text">
							<h5>대구 신세계 백화점 8층 클래스 오픈입니다!</h5>
							<p>안녕하세요. 메블랑입니다. 이번달에 대구 신세계 백화점 8층에서 클래스를 오픈하게 되었습니다. 위치는
								아웃백 옆 취미상점 카페입니다!</p>
							<ul>
								<li><i class="fa fa-calendar-o"></i> 2021.11.11</li>
								<li><i class="fa fa-comment-o"></i> 5</li>
							</ul>
						</div>
					</a>
				</div>
			</div>
		</div>
	</div>
</section>
<!-- Blog Section End -->