<%@ page language="java" contentType="text/html; charset=utf-8"
    pageEncoding="utf-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<c:set var="root" value="<%=request.getContextPath()%>"/>
<script type="text/javascript">
/* 개인정보 취급방침 클릭시 팝업!!! */
function showPopup() {
	const popup = document.querySelector('#popup');
	 popup.classList.remove('hide');
	}
function closePopup() {
	const popup = document.querySelector('#popup');
	popup.classList.add('hide');
	}

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
					<h2>결제</h2>
					<div class="breadcrumb__option">
						<a href="./index.html">Home</a>
						<span>결제</span>
					</div>
				</div>
			</div>
		</div>
	</div>
</section>
<!-- Breadcrumb Section End -->

<!-- Checkout Section Begin -->
<section class="checkout spad cart">
	<div class="container">
		<div class="row">
			<div class="col-lg-12 view_buy_1">
				<h6>주문상품</h6>
				<c:choose>
					<c:when test="${map.count == 0}">
						cart is empty
					</c:when>
					<c:otherwise>
				<ul>
					<li>
						<img src="${root}/img/featured/main_con1.jpg" alt="">
						<span>[수능선물]수제카라멜 선물세트</span>
						<span class="buy_su">1개</span>
						<span class="buy_dan">11,000원</span>
					</li>
				</ul>
					</c:otherwise>
				</c:choose>
			</div>
		</div>
		<div class="checkout__form">
			<form action="#">
				<h4>주문자 정보</h4>
				<table class="view_buy_form_1">
					<tr class="checkout__input">
						<td>받는분</td>
						<td><input type="text" placeholder="받는분 이름을 작성해주세요." class="checkout__input__add"></td>
					</tr>
					<tr class="checkout__input">
						<td>휴대폰</td>
						<td><input type="text" placeholder="연락받을 휴대폰 번호를 작성해주세요." class="checkout__input__add"></td>
					</tr>
					<tr class="checkout__input">
						<td>이메일</td>
						<td><input type="text" placeholder="본인 이메일을 작성해주세요." class="checkout__input__add"></td>
					</tr>
					<tr class="checkout__input">
						<td>주소</td>
						<td><input type="text" placeholder="택배를 받을 주소를 입력해주세요." class="checkout__input__add"></td>
						<td><button type="button" class="addr-btn" onclick="location.href='buy'">주소찾기</button></td>
					</tr>
					<tr class="checkout__input">
						<td>상세 주소</td>
						<td><input type="text" placeholder="상세 주소를 입력해주세요." class="checkout__input__add"></td>
					</tr>
				</table>
				
				<h4>결제수단<span class="view_buy_form_1_ex">※ 만약 환불 받으실 경우 해당 계좌로 환불됩니다.</span></h4>
				<table>
					<tr class="checkout__input">
						<td>결제방법</td>
						<td class="checkout__input__select">
							<select>
								<option>무통장입금(신한은행:110-333-33333)</option>
							</select>
						</td>
					</tr>
					<tr class="checkout__input">
						<td>환불계좌</td>
						<td><input type="text" placeholder="환불받을 계좌를 입력해주세요." class="checkout__input__add"></td>
					</tr>
				</table>
				
				<h4>개인정보 수집/제공</h4>
				<div class="view_order_ok_check_1">
					<input type="checkbox"><span class="view_order_ok_check_1_sm">결제 진행 필수 동의</span><br>
					<div class="view_order_ok_check_2">
						<a onclick="showPopup();">	
							<span>개인정보 수집·이용 및 처리 동의<i class="fa fa-angle-right"></i></span>
						</a>
					</div>
				</div>
				
				<div class="view_order_total_dan">
					<p>총 결제금액</p>
					<span>14,500원</span>
				</div>

				<div class="view_order_btn">
					<button type="button" class="buy-btn" onclick="">결제하기</button>
				</div>
			</form>
		</div>
	</div>
</section>
<!-- Checkout Section End -->

<!-- 개인정보 내용 나오는 팝업! -->
<div id="popup" class="hide">
	<div class="content">
		<p class="popup_info_check">개인정보 수집·이용 및 처리 동의</p>
		<span class="popup_info_check_2">- 제공받는 자 : 판매작가
		- 목적 : 판매자와 구매자 사이의 원활한 거래 진행, 상품의 배송을 위한 배송지 확인, 고객상담 및 불만처리 등<br>
		- 정보 : 주문자 정보(성명, 연락처), 수령인 정보(성명, 연락처, 주소)<br>
		- 보유기간 : 발송완료 후 15일<br>
		※ 아이디어스는 통신판매중개자이며 통신판매의 당사자가 아닙니다.<br>
		  따라서 아이디어스는 상품 거래정보 및 거래에 대하여 책임을 지지 않습니다.<br>
		  고객님께서는 개인정보 제공에 대하여 동의를 거부하실 수 있으나, 거부 시 상품 구매가 어렵습니다.</span>
		<div class="popup_info_btn">
			<button type="button" id="btn_submit_1" onclick="">확인</button>
			<button type="button" id="btn_close_1" onclick="closePopup()" >닫기</button>
		</div>
	</div>
</div>