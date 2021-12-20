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
	$(".cart_buy_del_btn").click(function (){
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
	<div class="container">
		<table class="cart_table_list">
			<thead>
				<tr class="cart_table_list_title">
					<th><input title="전체선택" type="checkbox"><span>&nbsp;작가</span></th>
					<th>상품 이미지</th>
					<th>작품명</th>
					<th>옵션</th>
					<th>갯수</th>
					<th>가격</th>
					<th>비고</th>
				</tr>
			</thead>
			<tbody>
			<c:forEach var="item" items="${list}">
				<tr class="cart_table_list_content">
					<td><input title="${item.name} 선택" type="checkbox" value=""> &nbsp;&nbsp; ${item.name}</td>
					<td class="cart_img_view"><img src="/photo/${item.uploadimage}"></td>
				<tr>
					<td class="cart-item-title" itemid="${item.shop_num}"><a href="${root}/shop/content?num=${item.shop_num}">${item.title}</a></td>
					<td class="cart-item-option" itemid="${item.shop_option}">${item.shop_option}</td>
					<td>${item.shop_qty} 개</td>
					<td><fmt:formatNumber value="${item.shop_price}" pattern="#,###,###"/> 원</td>
					<td><button class="cart_buy_del_btn">삭제</button></td>
				</tr>
			</c:forEach>
			</tbody>
		</table>
		<div class="buy_btn_all">
			<button type="button" class="cart_buy_btn" onclick="location.href='buy'">구매하기</button>
		</div>
	</div>
</section>
