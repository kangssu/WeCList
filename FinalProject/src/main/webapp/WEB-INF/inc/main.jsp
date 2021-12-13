<%@ page language="java" contentType="text/html; charset=utf-8"
    pageEncoding="utf-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<c:set var="root" value="<%=request.getContextPath()%>"/>
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
						<div class="col-lg-4 col-md-6 col-sm-6 shop_box_all">
							<div class="featured__item">
								<a href="/shop/	content?num=${a.num}">
									<div class="featured__item__pic set-bg">
										<img src="../photo/${a.uploadfile1}" alt="">
										<span class="shop_rank_number_${status.count}">${status.count}</span>
									</div>
									<div class="featured__item__text">
										<h6>${a.shopop}</h6>
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

<!-- Banner Begin -->
<div class="banner">
	<div class="set-bg main_banner_1" data-setbg="img/mainbanner.png">
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
										<h6>${a.shopop}</h6>
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
			<c:forEach var="sldto" items="${MainStoryList}" begin="0" end="2">
				<div class="col-lg-4 col-md-4 col-sm-6">
					<div class="story__item__main">
						<a href="/story/view?num=${sldto.num}">
							<div class="story_img">
								<img src="/photo/${sldto.profileimg}"> <span>${sldto.nickname}</span>
							</div>
							<div class="story__item__pic">
								<img src="/photo/${sldto.thumbnail_file}" alt="">
							</div>
							<div class="story__item__text">
								<h5>${sldto.title}</h5>
								<!-- 이미 content에 p태그가 존재해서 아래에 p태그 제거함! -->
								${sldto.content}
								<ul>
									<li class="cal_icon_margin"><i class="fa fa-calendar-o"></i><fmt:formatDate value="${sldto.writeday}" pattern="yyyy-MM-dd"/></li>
									<li class="cal_icon_margin"><i class="fa fa-eye" aria-hidden="true"></i>${sldto.read_count}</li>
								</ul>
							</div>
						</a>
					</div>
				</div>
			</c:forEach>
		</div>
	</div>
</section>
<!-- Blog Section End -->