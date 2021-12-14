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
					<h2>최신 작품</h2>
					<div class="breadcrumb__option">
						<a href="./index.html">Home</a> <span>최신 작품</span>
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
		<div class="row new_list_all_box">
						<c:forEach var="a" items="${list}">
							<div class="col-lg-4 col-md-6 col-sm-6">
								<div class="product__item">
									<a href="content?num=${a.num}&currentPage=${currentPage}&key=list">
										<div class="featured__item__pic set-bg">
										<img src="/photo/${a.uploadfile1}" alt="" >
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

	</div>
</section>
<!-- Featured Section End -->


