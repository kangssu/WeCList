<%@ page language="java" contentType="text/html; charset=utf-8"
    pageEncoding="utf-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!-- Page Preloder (이거 넣으면 계속 무한루프만돔..!)-->
<!-- <div id="preloder">
	<div class="loader"></div>
</div> -->

<!-- Humberger Begin -->
<!-- <div class="humberger__menu__overlay"></div>
<div class="humberger__menu__wrapper">
	<div class="humberger__menu__logo">
		<a href="#"><img src="img/logo.png" alt=""></a>
	</div>
	<div class="humberger__menu__cart">
		<ul>
			<li><a href="#"><i class="fa fa-heart"></i> <span>1</span></a></li>
			<li><a href="#"><i class="fa fa-shopping-bag"></i> <span>3</span></a></li>
		</ul>
		<div class="header__cart__price">item: <span>$150.00</span></div>
	</div>
	<div class="humberger__menu__widget">
		<div class="header__top__right__language">
			<img src="img/language.png" alt="">
			<div>English</div>
			<span class="arrow_carrot-down"></span>
			<ul>
				<li><a href="#">Spanis</a></li>
				<li><a href="#">English</a></li>
			</ul>
		</div>
		<div class="header__top__right__auth">
			<a href="#"><i class="fa fa-user"></i> Login</a>
		</div>
	</div>
	<nav class="humberger__menu__nav mobile-menu">
		<ul>
			<li class="active"><a href="./index.html">Home</a></li>
			<li><a href="./shop-grid.html">Shop</a></li>
			<li><a href="#">Pages</a>
				<ul class="header__menu__dropdown">
					<li><a href="./shop-details.html">Shop Details</a></li>
					<li><a href="./shoping-cart.html">Shoping Cart</a></li>
					<li><a href="./checkout.html">Check Out</a></li>
					<li><a href="./blog-details.html">Blog Details</a></li>
				</ul>
			</li>
			<li><a href="./blog.html">Blog</a></li>
			<li><a href="./contact.html">Contact</a></li>
		</ul>
	</nav>
	<div id="mobile-menu-wrap"></div>
	<div class="header__top__right__social">
		<a href="#"><i class="fa fa-facebook"></i></a>
		<a href="#"><i class="fa fa-twitter"></i></a>
		<a href="#"><i class="fa fa-linkedin"></i></a>
		<a href="#"><i class="fa fa-pinterest-p"></i></a>
	</div>
	<div class="humberger__menu__contact">
		<ul>
			<li><i class="fa fa-envelope"></i> hello@colorlib.com</li>
			<li>Free Shipping for all Order of $99</li>
		</ul>
	</div>
</div> -->
<!-- Humberger End -->

<!-- Header Section Begin -->
<header class="header">
	<a href="#">
		<div class="header__high__top">
			<span>WE C2 LIST의 다양한 작품과 클래스를 구경해보세요!<i class="fa fa-angle-right"></i></span>
		</div>
	</a>
	<div class="header__top">
		<div class="container">
			<div class="header__top__right">
				<!-- <span class="header_text1">WE C2 LIST의 다양한 작품과 클래스를 구경해보세요!</span>
				<button type="button" class="header_btn1">GO</button> -->
				<button type="button" class="header_btn1"><b>인기 작품</b> 바로보기<i class="fa fa-angle-right"></i></button>
				<div class="header__top__right__auth">
					<a href="#">로그인</a><span class="header_login_1">|</span>
					<a href="/users/join">회원가입</a><span class="header_login_1">|</span>
					<a href="#">고객센터</a>
				</div>
			</div>
		</div>
	</div>
	<div class="header__middle">
		<div class="container">
			<div class="row">
	  			<div class="col-lg-3">
					<div class="header__logo">
						<!-- <a href="./index.html"><img src="img/logo.png" alt=""></a> -->
						<a href="${root}/" class="logo">WE C LIST</a>
					</div>
				</div>
				<div>
					<nav class="header__menu">
						<ul>
							<c:set var="root" value="<%=request.getContextPath() %>"/>
							<li class="active"><a href="${root}/">작품</a>
								<%-- <ul class="header__menu__dropdown">
									<li><a href="${root}/shop/list">전체작품</a></li>
									<li><a href="${root}/shop/list">식품</a></li>
									<li><a href="${root}/shop/list">공예</a></li>
									<li><a href="${root}/shop/list">생활용품</a></li>
								</ul> --%>
							</li>
							<li class="div2"><a href="${root}/class">온라인 클래스</a>
								<%-- <ul class="header__menu__dropdown">
									<li><a href="${root}/class/list">전체클래스</a></li>
									<li><a href="${root}/class/list">디지털</a></li>
									<li><a href="${root}/class/list">미술</a></li>
									<li><a href="${root}/class/list">코딩</a></li>
								</ul> --%>
							</li>
						</ul>
					</nav>
				</div>
				<div class="hero__search ">
					<div class="hero__search__form">
						<form action="#">
							<input type="text" placeholder="검색어를 입력해주세요.">
							<button type="submit" class="site-btn"><i class="fa fa-search" aria-hidden="true"></i></button>
						</form>
					</div>
				</div>
				<div class="hero__mypage">
					<div class="hero__mypage__1">
						<a href="">
							<i class="fa fa-user" aria-hidden="true"></i>
							<p>마이페이지</p>
						</a>
					</div>
					<div class="hero__mypage__2">
						<a href="">
							<span>0</span>
							<i class="fa fa-shopping-cart" aria-hidden="true"></i>
							<p>장바구니</p>
						</a>
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
