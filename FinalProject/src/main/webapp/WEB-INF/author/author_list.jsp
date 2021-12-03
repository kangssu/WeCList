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
						<div class="author__box set-bg">
							<img src="/img/pro.jpg" id="author_img_1">
							<h5>
								<a href="#">제이라운드</a>
							</h5>
						</div>
					</div>
					<div class="col-lg-3">
						<div class="author__box set-bg">
							<img src="/img/pro.jpg" id="author_img_1">
							<h5>
								<a href="#">제이라운드</a>
							</h5>
						</div>
					</div>
					<div class="col-lg-3">
						<div class="author__box set-bg">
							<img src="/img/pro.jpg" id="author_img_1">
							<h5>
								<a href="#">제이라운드</a>
							</h5>
						</div>
					</div>
					<div class="col-lg-3">
						<div class="author__box set-bg">
							<img src="/img/pro.jpg" id="author_img_1">
							<h5>
								<a href="#">제이라운드</a>
							</h5>
						</div>
					</div>
					<div class="col-lg-3">
						<div class="author__box set-bg">
							<img src="/img/pro.jpg" id="author_img_1">
							<h5>
								<a href="#">제이라운드</a>
							</h5>
						</div>
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
			<div class="author__box__list">
				<div class="col-lg-3">
					<div class="author__box set-bg">
						<img src="/img/pro.jpg" id="author_img_1">
						<h5>
							<a href="#">제이라운드</a>
						</h5>
					</div>
				</div>
			</div>
		</div>
	</div>
</div>