<%@ page language="java" contentType="text/html; charset=utf-8"
    pageEncoding="utf-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions" %>
<c:set var="root" value="<%=request.getContextPath()%>"/>
<script type="text/javascript">
	/* $(document).ready(function(){
		$(".search__click").click(function(){
			$(this).parent().addClass("on");
			$(this).parent().siblings().removeClass("on");
		}); */
	});
</script>
<section class="breadcrumb-section">
	<div class="container">
		<div class="row">
			<div class="col-lg-12 text-center">
				<div class="breadcrumb__text">
					<h2>검색</h2>
					<div class="breadcrumb__option">
						<a href="./index.html">Home</a>
						<span>검색</span>
					</div>
				</div>
			</div>
		</div>
	</div>
</section>
<section class="search__list__all__box">
	<div class="container">
		<ul class="search__tab__menu">
			<li class="on"><a onclick="location.href='/search/list'" class="search__click"><span>"사탕"</span>에 대한 작품 검색결과</a></li><li><a onclick="location.href='/search/clist'" class="search__click"><span>"사탕"</span>에 대한 클래스 검색결과</a></li>
		</ul>
	</div>
	<div class="container">
		<div class="row">
			<div class="col-lg-4 col-md-6 col-sm-6">
				<div class="product__item">
					<a href="${root}/shop/view">	
						<div class="product__item__pic set-bg">
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
					<div class="col-lg-4 col-md-6 col-sm-6">
						<div class="product__item">
							<a href="#">	
								<div class="product__item__pic set-bg">
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
					<div class="col-lg-4 col-md-6 col-sm-6">
						<div class="product__item">
							<a href="#">	
								<div class="product__item__pic set-bg">
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
					<div class="col-lg-4 col-md-6 col-sm-6">
						<div class="product__item">
							<a href="#">	
								<div class="product__item__pic set-bg">
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
					<div class="col-lg-4 col-md-6 col-sm-6">
						<div class="product__item">
							<a href="#">	
								<div class="product__item__pic set-bg">
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
					<div class="col-lg-4 col-md-6 col-sm-6">
						<div class="product__item">
							<a href="#">	
								<div class="product__item__pic set-bg">
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
					<div class="col-lg-4 col-md-6 col-sm-6">
						<div class="product__item">
							<a href="#">	
								<div class="product__item__pic set-bg">
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
					<div class="col-lg-4 col-md-6 col-sm-6">
						<div class="product__item">
							<a href="#">	
								<div class="product__item__pic set-bg">
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
					<div class="col-lg-4 col-md-6 col-sm-6">
						<div class="product__item">
							<a href="#">	
								<div class="product__item__pic set-bg">
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
					<div class="col-lg-4 col-md-6 col-sm-6">
						<div class="product__item">
							<a href="#">	
								<div class="product__item__pic set-bg">
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
					<div class="col-lg-4 col-md-6 col-sm-6">
						<div class="product__item">
							<a href="#">	
								<div class="product__item__pic set-bg">
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
					<div class="col-lg-4 col-md-6 col-sm-6">
						<div class="product__item">
							<a href="#">	
								<div class="product__item__pic set-bg">
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
