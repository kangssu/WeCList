<%@ page language="java" contentType="text/html; charset=utf-8"
	pageEncoding="utf-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<c:set var="root" value="<%=request.getContextPath()%>" />
<div class="sidebar">
	<div class="sub_menu_category">
		<ul>
			<li><a href="/shop/list">전체보기</a></li>
			<li><a href="category?shopop=수제먹거리">수제먹거리</a></li>
			<li><a href="category?shopop=디저트">디저트</a></li>
			<li><a href="category?shopop=패션잡화">패션잡화</a></li>
			<li><a href="category?shopop=액세서리">액세서리</a></li>
			<li><a href="category?shopop=파인아트">파인아트</a></li>
		</ul>
	</div>
</div>
