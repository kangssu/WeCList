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
					<h2>검색</h2>
					<div class="breadcrumb__option">
						<a href="./index.html">Home</a> <span>검색</span>
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
				<div class="row">
					<c:forEach var="cdto" items="${Search}">
						<div class="col-lg-4">
							<div class="product__item">
								<a href="${root}/class/view?num=${cdto.num}">
									<div class="featured__item__pic set-bg">
										<img src="/photo/${cdto.uploadfile}">
									</div>
									<div class="product__item__text">
										<h6>${cdto.class_op_cate}</h6>
										<h6>${cdto.title}</h6>
										<h5>${cdto.classprice}원</h5>
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
<!-- Product Section End -->
