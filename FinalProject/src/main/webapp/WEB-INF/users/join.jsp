<%@ page language="java" contentType="text/html; charset=utf-8"
    pageEncoding="utf-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<c:set var="root" value="<%=request.getContextPath()%>"/>
<script type="text/javascript">
$(function(){});
</script>

<!-- Breadcrumb Section Begin -->
<section class="breadcrumb-section" style="background:none; background-color:#F5F5F5">
	<div class="container">
		<div class="row">
			<div class="col-lg-12 text-center">
				<div style="color:black">
					<h2>회원가입 종류 선택</h2>
				</div>
			</div>
		</div>
	</div>
</section>
<!-- Breadcrumb Section End -->

<!-- Checkout Section Begin -->
<section class="checkout spad">
	<div class="container">
		<div class="checkout__form2" style="text-align: center;">
			<div class="user_join_btn" style="display: inline-block;">
				<button type="button" class="buy-btn" onclick="location.href='userJoin'">일반회원으로 가입하기</button>
			</div>
			<div class="author_join_btn" style="display: inline-block;">
				<button type="button" class="buy-btn" onclick="location.href='authorJoin'">작가로 가입하기</button>
			</div>
		</div>
	</div>
</section>
<!-- Checkout Section End -->
