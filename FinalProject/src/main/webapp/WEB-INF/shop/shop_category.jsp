<%@ page language="java" contentType="text/html; charset=utf-8"
    pageEncoding="utf-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<c:set var="root" value="<%=request.getContextPath()%>"/>
<!-- Breadcrumb Section Begin -->
<section class="breadcrumb-section">
	<div class="container">
		<div class="row">
			<div class="col-lg-12 text-center">
				<div class="breadcrumb__text">
					<h2>작품</h2>
					<div class="breadcrumb__option">
						<a href="./index.html">Home</a>
						<span>상품 리스트</span>
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
					<li><a href="category?shopop=디저트">디저트</a></li>
					<li><a href="category?shopop=음료">음료</a></li>
					<li><a href="category?shopop=악세사리">악세서리</a></li>
				</ul>
			</div>
		</div>
	</div>
	
	<div class="container">
		<div class="row">
			<div class="col-lg-9 col-md-7">
				<div class="filter__item">
					<div class="row">
						<div class="col-lg-4 col-md-5">
							<div class="filter__found">
								<h6>총 <span>${totalCount}</span>개의 작품</h6>
							</div>
						</div>
						
					</div>
				</div>
					<div class="row">
						<c:forEach var="a" items="${listcate}">
						
							<div class="col-lg-4 col-md-6 col-sm-6">
								<div class="product__item">
									<a href="content?num=${a.num}&currentPage=${currentPage}&key=list">
										<div class="product__item__pic set-bg">
										<img style="width: 220px; height: 270px;" src="../photo/${a.uploadfile1}" alt="" >
										</div>
										<div class="product__item__text">
										<h6>${a.name}</h6>
										<h6>${a.title}</h6>
										<h5>${a.shopprice}</h5>
										</div>
									</a>
								</div>
								</div>
						</c:forEach>
					</div>
				<!-- 페이징 여기다가 아래 코드 지우고 넣기! class 동일하게줘야 css 먹음!!! -->
					<div class="product__pagination">
						<c:if test="${startPage>1}">
							<a href="list?currentPage=${startPage-1}">이전</a>
						</c:if>

						<c:forEach var="pp" begin="${startPage}" end="${endPage}">
							<c:if test="${currentPage==pp}">
								<li class="active"><a href="list?currentPage=${pp}">${pp}</a></li>
							</c:if>
							<c:if test="${currentPage!=pp}">
								<li class="active"><a href="list?currentPage=${pp}">${pp}</a></li>
							</c:if>
						</c:forEach>
						<!-- 다음 -->
						<c:if test="${endPage<totalPage}">
							<a href="list?currentPage=${endPage+1}">다음</a>
						</c:if>
					</div>
				</div>
		</div>
	</div>
</section>
<!-- Product Section End -->
