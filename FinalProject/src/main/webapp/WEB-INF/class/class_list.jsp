<%@ page language="java" contentType="text/html; charset=utf-8"
	pageEncoding="utf-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<c:set var="root" value="<%=request.getContextPath()%>" />
<!-- Product Section Begin -->
<div class="container">
	<div class="row">
		<div class="col-lg-9 col-md-7 shop_right_box">
			<div class="filter__item">
				<div class="row">
					<div class="filter__found">
						<h6>${cdto.class_op_cate}</h6>
						<h6><span class="shop_option_category_all">전체보기</span> 클래스</h6>
						<div class="shop_all_count_box">
							<h6 class="all_count_shop">WeCList의 다양한 클래스를 만나보세요!</h6>
							<span class="all_count_shop">총 <b>${totalCount}</b>개의 작품</span>
						</div>
					</div>
				</div>
			</div>
			<div class="row shop_all_list_box_1">
				<c:forEach var="cdto" items="${list}">
					<c:if test="${cdto.inter>=15}">
						<div class="col-lg-4">
							<div class="product__item">
								<a href="${root}/class/view?num=${cdto.num}">
									<div class="featured__item__pic set-bg">
										<img src="../photo/${cdto.uploadfile}">
									</div>
									<div class="product__item__text">
										<h6>${cdto.class_op_cate}</h6>
										<h6>${cdto.title}</h6>
										<h5>${cdto.classprice}원</h5>
									</div>
								</a>
							</div>
						</div>
					</c:if>
				</c:forEach>
			</div>
			<div class="product__pagination">
				<c:if test="${startPage>1}">
					<a href="list?currentPage=${startPage-1}">이전</a>
				</c:if>
				<c:forEach var="pp" begin="${startPage}" end="${endPage}">
					<c:if test="${currentPage==pp}">
						<li class="select"><a class="select2" href="list?currentPage=${pp}">${pp}</a></li>
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