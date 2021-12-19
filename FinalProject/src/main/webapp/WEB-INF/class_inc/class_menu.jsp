<%@ page language="java" contentType="text/html; charset=utf-8" pageEncoding="utf-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<c:set var="root" value="<%=request.getContextPath()%>" />
<div class="sidebar">
	<div class="sub_menu_category">
		<ul>
			<li><a href="/class/list">전체보기</a></li>
			<li><a href="category?class_op_cate=공예">공예</a></li>
			<li><a href="category?class_op_cate=요리">요리</a></li>
			<li><a href="category?class_op_cate=미술">미술</a></li>
			<li><a href="category?class_op_cate=플라워">플라워</a></li>
			<li><a href="category?class_op_cate=뷰티">뷰티</a></li>
		</ul>
	</div>
</div>
