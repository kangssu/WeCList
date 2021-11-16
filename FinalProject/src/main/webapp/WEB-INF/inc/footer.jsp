<%@ page language="java" contentType="text/html; charset=utf-8"
    pageEncoding="utf-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!-- Footer Section Begin -->
<footer class="footer spad">
	<div class="container">
		<div class="row">
			<div class="col-lg-4 col-md-6 col-sm-6">
				<div class="footer__about">
					<div class="footer__about__logo">
						<c:set var="root" value="<%=request.getContextPath()%>"/>
						<a href="./index.html"><img src="${root}/img/logo.png" alt=""></a>
					</div>
					<ul>
						<li>주소: 서울 강남구 강남대로 94길 20</li>
						<li>사업자 등록번호 : 111-85-06789</li>
						<li>통신판매업신고 : 2021-서울강남-1111</li>
					</ul>
				</div>
			</div>
			<div class="col-lg-4 col-md-6 col-sm-6">
				<div class="footer__about__2">
					<h6>고객센터</h6>
					<ul>
						<li>영업시간 : AM10:00~PM10:00(매일)</li>
						<li>대표번호 : 02-3486-9600</li>
						<li>메 &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;일: bit@weclist.com</li>
						<li>제휴문의 : bit@weclist.com</li>
						<li>궁금하신 사항은 대표번호나 메일로 연락주세요.<br>
						최선을 다해 도와드리겠습니다.</li>
					</ul>
				</div>
			</div>
			<div class="col-lg-4 col-md-12">
				<div class="footer__widget">
					<h6>사이트맵</h6>
					<ul>
						<li><a href="#">HOME</a></li>
						<li><a href="#">작품</a></li>
						<li><a href="#">인기작품</a></li>
						<li><a href="#">클래스</a></li>
						<li><a href="#">작가 모아보기</a></li>
						<li><a href="#">작가 스토리</a></li>
					</ul>
					<ul>
						<li><a href="#">공지사항</a></li>
						<li><a href="#">FAQ</a></li>
						<li><a href="#">문의사항</a></li>
						<li><a href="#">로그인</a></li>
						<li><a href="#">회원가입</a></li>
					</ul>
				</div>
			</div>
			<div class="col-lg-4 col-md-12">
				<div class="footer__widget">
				<h6>약관정보<span>자세한 내용을 확인해주세요.</span></h6>
					<ul>
						<li><button>이용약관</button></li>
						<li><button>개인정보처리방침</button></li>
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
    