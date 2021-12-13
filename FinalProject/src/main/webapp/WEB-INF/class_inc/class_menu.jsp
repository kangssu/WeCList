<%@ page language="java" contentType="text/html; charset=utf-8"
	pageEncoding="utf-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<c:set var="root" value="<%=request.getContextPath()%>" />
<div class="sidebar">
	<div class="sub_menu_category">
		<ul>
			<li><a href="/class/list">전체보기</a></li>
			<li><a href="category?class_op_cate=디저트">디저트</a></li>
			<li><a href="category?class_op_cate=음료">음료</a></li>
			<li><a href="category?class_op_cate=악세사리">악세서리</a></li>
		</ul>
	</div>
</div>
