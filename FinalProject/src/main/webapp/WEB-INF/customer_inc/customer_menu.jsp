<%@ page language="java" contentType="text/html; charset=utf-8"
	pageEncoding="utf-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<c:set var="root" value="<%=request.getContextPath()%>" />
<div class="customer__side_menu">
	<h2>고객센터</h2>
	<div class="customer__snb_all">
		<ul class="customer__snb">
			<li><a href="/customer/notice">공지사항</a></li>
			<li><a href="/customer/faq">FAQ</a></li>
			<li><a href="/customer/enquiry">문의사항</a></li>
		</ul>
	</div>
</div>
