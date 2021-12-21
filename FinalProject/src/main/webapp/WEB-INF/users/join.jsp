<%@ page language="java" contentType="text/html; charset=utf-8"
    pageEncoding="utf-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<c:set var="root" value="<%=request.getContextPath()%>"/>
<section class="breadcrumb-section">
	<div class="container">
		<div class="row">
			<div class="col-lg-12 text-center">
				<div class="breadcrumb__text">
					<h2>회원가입</h2>
					<div class="breadcrumb__option">
						<a href="./index.html">Home</a>
						<span>회원가입</span>
					</div>
				</div>
			</div>
		</div>
	</div>
</section>
<section class="checkout spad">
	<div class="container">
		<div class="checkout__form2 user_choice">
			<div class="user_join_btn" style="display: inline-block;">
				<button type="button" class="buy-btn" onclick="location.href='userJoin'">일반회원 가입</button>
			</div>
			<div class="author_join_btn">
				<button type="button" class="buy-btn" onclick="location.href='authorJoin'">작가회원 가입</button>
			</div>
		</div>
	</div>
</section>
