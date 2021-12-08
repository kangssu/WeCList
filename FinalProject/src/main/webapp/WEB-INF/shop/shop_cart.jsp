<%@ page language="java" contentType="text/html; charset=utf-8"
    pageEncoding="utf-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<c:set var="root" value="<%=request.getContextPath()%>"/>
<script type="text/javascript">
function getCartList(){
	let cartList = "";
}
</script>

<!-- Breadcrumb Section Begin -->
<section class="breadcrumb-section">
	<div class="container">
		<div class="row">
			<div class="col-lg-12 text-center">
				<div class="breadcrumb__text">
					<h2>장바구니</h2>
					<div class="breadcrumb__option">
						<a href="./index.html">Home</a>
						<span>장바구니</span>
					</div>
				</div>
			</div>
		</div>
	</div>
</section>
<!-- Breadcrumb Section End -->
<section class="table-responsive">
	<table class="table table-hover">
		<thead>
		<tr>
			<th>스토어</th>
			<th>썸네일</th>
			<th>작품명</th>
			<th>옵션</th>
			<th>갯수</th>
			<th>가격</th>
			<th>배송비</th>
			<th>삭제</th>
		</tr>
		</thead>
		<tbody>
		<c:forEach var="item" items="${list}">
			<tr>
				<td>${item.name}</td>
				<td>${item.itemImage}</td>
				<td><a href="${root}/shop/content?num=${item.shop_num}">${item.title}</a></td>
				<td>${item.shop_option}</td>
				<td>${item.shop_qty}</td>
				<td><fmt:formatNumber value="${item.shop_price}" pattern="#,###,###"/> 원</td>
				<td>전국 2,500 원 !!</td>
				<td><button class="btn btn-warning" onclick="">삭제</button> </td>
			</tr>
		</c:forEach>
		</tbody>
	</table>
</section>
