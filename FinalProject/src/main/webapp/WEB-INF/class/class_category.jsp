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
						<a href="./index.html">Home</a> <span>전체 클래스</span>
					</div>
				</div>
			</div>
		</div>
	</div>
</section>
<!-- Breadcrumb Section End -->

<!-- Product Section Begin -->
<section class="product spad">
	<div class="container"
		style="margin-left: 70px; float: left; width: 100px;">
		<div class="sidebar">
			<div class="sidebar__item">
				<h4>Category</h4>
				<ul>
					<li><a href="category?class_op_cate=디저트">디저트</a></li>
					<li><a href="category?class_op_cate=음료">음료</a></li>
					<li><a href="category?class_op_cate=악세사리">악세서리</a></li>
				</ul>
			</div>
		</div>
	</div>
	
	<div class="filter__item" style="margin-left: 300px;">
		<div class="cate">
			<b>Category>세부>세부</b>
		</div>
	</div>
	<div class="row" style="margin-left: 250px;">
		<c:forEach var="cdto" items="${listcate}"> 
		
			<div style="float:left;">
			<div class="product__item" >
				<a href="${root}/class/view?num=${cdto.num}">
					<div class="product__item__pic set-bg">
						<img src="../photo/${cdto.uploadfile}" style="width: 300px; height: 300px;">
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
		
</section>
<!-- Product Section End -->


