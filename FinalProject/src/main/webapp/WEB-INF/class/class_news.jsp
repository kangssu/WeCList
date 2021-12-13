<%@page import="data.dto.ClassNewBoardDto"%>
<%@page import="java.util.Date"%>
<%@ page language="java" contentType="text/html; charset=utf-8"
	pageEncoding="utf-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>
<c:set var="root" value="<%=request.getContextPath()%>" />
<!-- Breadcrumb Section Begin -->
<section class="breadcrumb-section">
	<div class="container">
		<div class="row">
			<div class="col-lg-12 text-center">
				<div class="breadcrumb__text">
					<h2>온라인 클래스</h2>
					<div class="breadcrumb__option">
						<a href="./index.html">Home</a> <span>신규 클래스</span>
					</div>
				</div>
			</div>
		</div>
	</div>
</section>
<!-- Breadcrumb Section End -->
<br>
<!-- 커밍쑨 -->
<section class="product spad">
	<div class="container">
		<div class="row">
			<div class="col-lg-12 section-title_top">
				<div class="section-title">
					<h2>커밍 쑨!! 오픈 예정!!</h2>
					<span class="fa fa-angle-right"></span>
				</div>
			</div>
		</div>
		<div class="row">
			<div class="categories__slider owl-carousel">
				<c:forEach var="idto" items="${inter}">
					<c:forEach var="cdto" items="${list}">
						<c:if test="${idto.inter_cnt>=1 and idto.num==cdto.num}">
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
						</c:if>
					</c:forEach>
				</c:forEach>

			</div>
		</div>
	</div>
</section>
<!-- 커밍쑨 end -->


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
		<div class="row">
			<div class="categories__slider owl-carousel">
			<c:forEach var="idto" items="${inter}">
				<c:forEach var="cdto" items="${listseven}">
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
			</c:forEach>

			</div>
		</div>
	</div>


</section>
<!-- Featured Section End -->

<!-- Product Section Begin -->
<section class="product spad">
	<div class="container">
		<div class="row">
			<div class="col-lg-12 section-title_top">
				<div class="section-title">
					<h2>100% 달성시 클래스 제작!</h2>
					<span class="fa fa-angle-right"></span>
				</div>
			</div>
		</div>
		<div class="row">
			<div class="categories__slider owl-carousel">
				<c:forEach var="idto" items="${inter}">
					<c:forEach var="cdto" items="${list}">
						<c:if test="${idto.inter_cnt<5 and idto.num==cdto.num}">
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
						</c:if>
					</c:forEach>
				</c:forEach>
			</div>
		</div>

	</div>
</section>
<!-- Product Section End -->


