<%@ page language="java" contentType="text/html; charset=utf-8"
    pageEncoding="utf-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions" %>
<c:set var="root" value="<%=request.getContextPath()%>"/>
<section class="breadcrumb-section">
	<div class="container">
		<div class="row">
			<div class="col-lg-12 text-center">
				<div class="breadcrumb__text">
					<h2>검색</h2>
					<div class="breadcrumb__option">
						<a href="./index.html">Home</a>
						<span>검색</span>
					</div>
				</div>
			</div>
		</div>
	</div>
</section>
<section>
	<div class="container">
		<ul class="search__tab__menu">
			<li><a onclick="location.href='/search/list?keyword=${keyword}'" class="search__click"><span>"${keyword}"</span>에 대한 작품 검색결과</a></li><li class="on"><a onclick="location.href='/search/clist?keyword=${keyword}'" class="search__click"><span>"${keyword}"</span>에 대한 클래스 검색결과</a></li>
		</ul>
	</div>
	<div class="container">
		<div class="row">
			<c:if test="${ctotalCount==0}">
				<div class="search__result">
					<h3>검색된 클래스가 없습니다! 다시 검색해주세요!</h3>
				</div>
			</c:if>
			<c:if test="${ctotalCount>0}">
				<c:forEach var="cdto" items="${csearch}">
					<div class="col-lg-4 col-md-6 col-sm-6">
						<div class="product__item">
							<a href="${root}/class/view?num=${cdto.num}">	
								<div class="product__item__pic set-bg">
									<img src="/photo/${cdto.uploadfile}" alt="">
								</div>
								<div class="product__item__text">
									<h6>${cdto.class_op_cate}</h6>
									<h6>${cdto.title}</h6>
									<h5>${cdto.classprice}원</h5>
								</div>
							</a>
						</div>
					</div>
				</c:forEach>
			</c:if>
		</div>
	</div>
</section>
