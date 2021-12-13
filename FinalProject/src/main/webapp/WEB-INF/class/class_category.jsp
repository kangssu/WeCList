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
	
	<div class="filter__item">
		<div class="row">
			<div class="filter__found">
				<h6> <span class="shop_option_category">${class_op_cate}</span> 작품</h6>
			</div>
		</div>
	</div>
	
	<div class="row" style="margin-left: 250px;">
		<c:forEach var="idto" items="${inter}">
			<c:forEach var="cdto" items="${listcate}">
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

	<div class="product__pagination">
		<c:if test="${startPage>1}">
			<a href="category?currentPage=${startPage-1}">이전</a>
		</c:if>

		<c:forEach var="pp" begin="${startPage}" end="${endPage}">
			<c:if test="${currentPage==pp}">
				<li class="active"><a
					href="category?class_op_cate=${class_op_cate}&currentPage=${pp}">${pp}</a></li>
			</c:if>
			<c:if test="${currentPage!=pp}">
				<li class="active"><a
					href="category?class_op_cate=${class_op_cate}&currentPage=${pp}">${pp}</a></li>
			</c:if>
		</c:forEach>
		<!-- 다음 -->
		<c:if test="${endPage<totalPage}">
			<a href="category?currentPage=${endPage+1}">다음</a>
		</c:if>
	</div>
</section>
<!-- Product Section End -->


