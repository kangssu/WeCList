<%@ page language="java" contentType="text/html; charset=utf-8"
    pageEncoding="utf-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<c:set var="root" value="<%=request.getContextPath()%>"/>
<div class="container">
	<div class="row">
		<div class="col-lg-9 col-md-7 shop_right_box">
			<div class="filter__item">
				<div class="row">
					<div class="filter__found">
						<h6> <span class="shop_option_category">${shopop}</span> 작품</h6>
					</div>
				</div>
			</div>
			<div class="row shop_all_list_box_1">
				<c:forEach var="a" items="${listcate}">
					<div class="col-lg-4 col-md-6 col-sm-6 shop_box_list_2">
						<div class="product__item">
							<a href="content?num=${a.num}&currentPage=${currentPage}&key=list">
								<div class="product__item__pic set-bg">
									<img src="/photo/${a.uploadfile1}" alt="" >
								</div>
								<div class="product__item__text">
									<h6>${a.shopop}</h6>
									<h6>${a.title}</h6>
									<h5>${a.shopprice}원</h5>
								</div>
							</a>
						</div>
					</div>
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
				<c:if test="${endPage<totalPage}">
					<a href="list?currentPage=${endPage+1}">다음</a>
				</c:if>
			</div>
		</div>
	</div>
</div>
