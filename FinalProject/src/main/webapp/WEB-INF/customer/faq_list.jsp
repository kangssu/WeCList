<%@ page language="java" contentType="text/html; charset=utf-8"
	pageEncoding="utf-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<c:set var="root" value="<%=request.getContextPath()%>" />
<script>
	$(document).ready( function() {
		$(".toggle-wrap").hide();
		
		$(".faq-q").click( function() {
			$(this).siblings(".toggle-wrap").slideToggle();
		});
	});
</script>
<!-- faq 리스트 -->
<div class="faq__list">
	<h2>FAQ</h2>
	<div class="customer__faq__list">
		<ul>
			<li class="faq-type">
				<div class="faq-q">
					<span>Q.</span>
					<span class="faq-info">We C List의 작가가 되려면 어떻게 해야하나요?
					<i class="fa fa-angle-down" aria-hidden="true"></i>
					</span>
				</div>
				<div class="toggle-wrap">
					<span>A</span>
					<span>회원가입 진행시 작가로 진행 하시면 관리자의 승인 이후 작가로 운영가능합니다.</span>
				</div>
			</li>
			<li class="faq-type">
				<div class="faq-q">
					<span>Q.</span>
					<span class="faq-info">환불 처리는 어떻게 진행을 해야하나요?
					<i class="fa fa-angle-down" aria-hidden="true"></i>
					</span>
				</div>
				<div class="toggle-wrap">
					<span>A</span>
					<span>작가에게 직접 환불 요청을 드려야하며, 마이페이지 구매내역에서 진행해주시면 됩니다.</span>
				</div>
			</li>
		</ul>
		
	</div>
</div>
