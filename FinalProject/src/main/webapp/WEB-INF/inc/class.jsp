<%@ page language="java" contentType="text/html; charset=utf-8"
	pageEncoding="utf-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!-- Hero Section Begin -->
<script>
	$(document).ready(function() {
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
		<div class="row">
		
			<c:forEach var="cdto" items="${listpopulMain}" begin="0" end="14">
				
				<div style="float: left;">
					<div class="product__item">
						<a href="${root}/class/view?num=${cdto.num}">
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
		<button type="button" class="main__hot__shop__1"
			onclick="location.href='class/popul'">인기 온라인 클래스 더보기</button>
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
			<div class="categories__slider owl-carousel">
				<c:forEach var="cdto" items="${listnewsMain}">
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
			
			<button type="button" class="main__hot__shop__1"
				onclick="location.href='class/news'">신규 온라인 클래스 더보기</button>
		</div>
	</div>
</section>
<!-- Featured Section End -->
