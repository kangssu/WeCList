<%@ page language="java" contentType="text/html; charset=utf-8"
    pageEncoding="utf-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!-- Footer Section Begin -->
<footer class="footer spad">
	<div class="container">
		<div class="row">
			<div class="col-lg-12">
				<div class="footer__about">
					<div class="footer__about__logo">
						<c:set var="root" value="<%=request.getContextPath()%>"/>
						<a href="./index.html"><img src="${root}/img/logo.png" alt=""></a>
					</div>
					<ul>
						<li>주소: 서울 강남구 강남대로 94길 20 &nbsp;&nbsp;|&nbsp;&nbsp; 사업자 등록번호 : 111-85-06789 &nbsp;&nbsp;|&nbsp;&nbsp; 통신판매업신고 : 2021-서울강남-1111</li>
						<li>영업시간 : AM10:00~PM10:00(매일) &nbsp;&nbsp;|&nbsp;&nbsp; 대표번호 : 02-3486-9600 &nbsp;&nbsp;|&nbsp;&nbsp; 대표메일: bit@weclist.com</li>
						<li class="footer__btn"><button>이용약관</button><button>개인정보처리방침</button></li>
					</ul>
				</div>
			</div>
		</div>
		<div class="row">
			<div class="col-lg-12">
				<div class="footer__copyright">
					<div class="footer__copyright__text"><p>Copyright © 2021 WE C LIST All right reserved.</p></div>
				</div>
			</div>
		</div>
	</div>
</footer>
<!-- Footer Section End -->
    