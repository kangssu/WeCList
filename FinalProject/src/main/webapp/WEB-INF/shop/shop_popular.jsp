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
						<a href="./index.html">Home</a> <span>인기 클래스</span>
					</div>
				</div>
			</div>
		</div>
	</div>
</section>
<!-- Breadcrumb Section End -->

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
				
		<c:forEach var="a" items="${listpopul}" varStatus="status">
				
			<div class="col-lg-3 col-md-4 col-sm-6 mix oranges fresh-meat">
			
					<div class="featured__item">
						<a href="/shop/	content?num=${a.num}"  >
							<div class="featured__item__pic set-bg">
							<img src="../photo/${a.uploadfile1}" alt="" >
							
								<span class="shop_rank_number first">${status.count}</span>
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
</section>
<!-- Featured Section End -->


