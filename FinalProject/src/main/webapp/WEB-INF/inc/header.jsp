<%@ page language="java" contentType="text/html; charset=utf-8"
    pageEncoding="utf-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<c:set var="root" value="<%=request.getContextPath()%>"/>
<script type="text/javascript">
$(document).ready(function (){
	/* $("#btn_item_page").click(function(){
		$(this).removeClass("color_f");
		$(this).addClass("on");
	}); */
	
	loginok="${sessionScope.loginok}";
	
	$(".login_check").click(function(){
		if(loginok==""){
			alert("로그인 후 이용가능합니다!");
		}
	});

	$.ajax({
		type: "POST",
		url: "/main/getCartCount",
		data: {"user_id": "${sessionScope.id}"},
		success: function (data){
			document.getElementById('cart-count').innerText = data;
		}
	});

	//메뉴가 동일하면 class 추가하기위함
	var url = window.location;
	//alert(url); //해당 url 가져옴
	// for sidebar menu entirely but not cover treeview 
	$('ul.sidebar-menu a').filter(function() { 
		//alert(url);
		return this.href == url; 
	}).parent().addClass('active'); 

	// for treeview 
	/* $('ul.treeview-menu a').filter(function() { 
		return this.href == url; 
	}).parentsUntil(".sidebar-menu > .treeview-menu").addClass('active'); */


 });
 </script>
<!-- Header Section Begin -->
<header class="header">
	<a href="#">
		<div class="header__high__top">
			<span>WE C LIST의 다양한 작품과 클래스를 구경해보세요!<i class="fa fa-angle-right"></i></span>
		</div>
	</a>
	<div class="header__top">
		<div class="container">
			<div class="header__top__right">
				<!-- <span class="header_text1">WE C2 LIST의 다양한 작품과 클래스를 구경해보세요!</span>
				<button type="button" class="header_btn1">GO</button> -->
				<button type="button" class="header_btn1"><b>인기 작품</b> 바로보기<i class="fa fa-angle-right"></i></button>
				<div class="header__top__right__auth">
					<c:set var="root" value="<%=request.getContextPath()%>" />
					<c:if test="${sessionScope.loginok!=null }">
						<span class="user__login__id">${sessionScope.id }님</span><span class="header_login_1">|</span>
						<a href="${root}/login/logoutprocess">로그아웃</a><span class="header_login_1">|</span>
						<%-- <button type="button" class="btn btn-danger" style="width: 100px"
						 onclick="location.href='${root}/login/logoutprocess'">로그아웃</button> --%>
					</c:if>
					<c:if test="${sessionScope.loginok==null }">
						<a href="${root}/users/login">로그인</a><span class="header_login_1">|</span>
						<a href="${root}/users/join">회원가입</a><span class="header_login_1">|</span>
					</c:if>
					<a href="/customer/notice">고객센터</a>
				</div>
			</div>
		</div>
	</div>
	<div class="header__middle">
		<div class="container">
			<div class="row">
	  			<div class="col-lg-3">
					<div class="header__logo">
						<a href="/"><img src="${root}/img/logo_new.png" alt=""></a>
					</div>
				</div>
				<div>
					<nav class="header__menu">
						<ul class="sidebar-menu">
							<c:set var="root" value="<%=request.getContextPath() %>"/>
							<li id="btn_item_page" >
								<a href="${root}/" class="color_f">작품</a>
							</li>
							<li id="btn_item_page_2">
								<a href="${root}/class" class="color_f">온라인 클래스</a>
							</li>
						</ul>
					</nav>
				</div>
				<div class="hero__search ">
					<div class="hero__search__form">
						<form action="search">
							<input type="text" name="keyword" placeholder="검색어를 입력해주세요.">
							<button type="submit" class="site-btn"><i class="fa fa-search" aria-hidden="true"></i></button>
						</form>
					</div>
				</div>
				<div class="hero__mypage">
					<div class="hero__mypage__1">
						<c:choose>
							<c:when test="${sessionScope.loginok!=null}">
								<c:choose>
									<c:when test="${sessionScope.category == 2}">
										<a href="${root}/mypage/shop/list" class="login_check">
											<i class="fa fa-user" aria-hidden="true"></i>
											<p>마이페이지</p>
										</a>
									</c:when>
									<c:otherwise>
										<a href="${root}/mypage/order/list" class="login_check">
											<i class="fa fa-user" aria-hidden="true"></i>
											<p>마이페이지</p>
										</a>
									</c:otherwise>
								</c:choose>
							</c:when>
							<c:otherwise>
								<a href="${root}/users/login" class="login_check">
									<i class="fa fa-user" aria-hidden="true"></i>
									<p>마이페이지</p>
								</a>
							</c:otherwise>
						</c:choose>
					</div>
					<div class="hero__mypage__2">
						<c:choose>
							<c:when test="${sessionScope.loginok==null}">
								<a href="${root}/users/login" class="login_check">
									<span class="cart-count">0</span>
									<i class="fa fa-shopping-cart" aria-hidden="true"></i>
									<p>장바구니</p>
								</a>
							</c:when>
							<c:otherwise>
								<a href="${root}/cart/list" class="login_check">
									<span id="cart-count" class="cart-count">0</span>
									<i class="fa fa-shopping-cart" aria-hidden="true"></i>
									<p>장바구니</p>
								</a>
							</c:otherwise>
						</c:choose>
					</div>
				</div>
			</div>
		</div>
	</div>	
	<div class="humberger__open">
		<i class="fa fa-bars"></i>
	</div>
</header>
<!-- Header Section End -->