<%@ page language="java" contentType="text/html; charset=utf-8"
    pageEncoding="utf-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<c:set var="root" value="<%=request.getContextPath()%>"/>
<script type="text/javascript">
function getCartList(){
	let cartList = "";
}
$(document).ready(function (){
	$(".btn-delete").click(function (){
		let user_id = "${sessionScope.id}";
		let shop_num = $(this).parent().siblings().eq(1).attr('itemid');
		let shop_option = $(this).parent().siblings().eq(2).text();

		//console.log(user_id + ":" + shop_num + ":" + shop_option);

		$.ajax({
			type:"POST",
			url:"/cart/delete",
			dayaType:"text",
			data:{"user_id":user_id , "shop_num":shop_num , "shop_option":shop_option },
			success:function (data){
				location.reload();
			}
		});
	});
})
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
			<th><input title="전체선택" type="checkbox"><span>&nbsp;스토어</span></th>
			<th>썸네일</th>
			<th>작품명</th>
			<th>옵션</th>
			<th>갯수</th>
			<th>가격</th>
		</tr>
		</thead>
		<tbody>
		<c:forEach var="item" items="${list}">
			<tr>
				<th><input title="${item.name} 선택" type="checkbox" value=""> &nbsp;&nbsp; ${item.name}<button class="btn btn-warning btn-delete">삭제</button></th>
				<td>${item.itemImage}</td>
				<td class="cart-item-title" itemid="${item.shop_num}"><a href="${root}/shop/content?num=${item.shop_num}">${item.title}</a></td>
				<td class="cart-item-option" itemid="${item.shop_option}">${item.shop_option}</td>
				<td>${item.shop_qty} 개</td>
				<td><fmt:formatNumber value="${item.shop_price}" pattern="#,###,###"/> 원</td>
			</tr>
		</c:forEach>
		</tbody>
	</table>
</section>
