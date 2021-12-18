<%@page import="data.dto.ClassBoardDto"%>
<%@page import="java.util.Date"%>
<%@ page language="java" contentType="text/html; charset=utf-8"
	pageEncoding="utf-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>
<c:set var="root" value="<%=request.getContextPath()%>" />
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
<section class="product spad">
	<div class="container">
		<div class="row">
			<div class="col-lg-12 section-title_top">
				<div class="section-title section-title__new__title">
					<h2>오픈예정 클래스</h2>
					<span class="fa fa-angle-right"></span>
				</div>
			</div>
		</div>
		<div class="row">
			<div class="categories__slider owl-carousel">
				<c:forEach var="cdto" items="${list}">
					<c:if test="${cdto.inter>=15}">
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

			</div>
		</div>
	</div>
</section>
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
				<c:forEach var="cdto" items="${listseven}">
					<c:if test="${cdto.inter>=15}">
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

			</div>
		</div>
	</div>


</section>
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
				<c:forEach var="cdto" items="${list}">
					<c:if test="${cdto.inter<15}">
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
			</div>
		</div>

	</div>
</section>


