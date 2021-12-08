<%@ page language="java" contentType="text/html; charset=utf-8"
    pageEncoding="utf-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="tiles" uri="http://tiles.apache.org/tags-tiles" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="utf-8">
<title>We C List</title>
	<script src="/js/jquery-3.3.1.min.js"></script>
	<!-- 네이버 에디터 -->
	<script type="text/javascript" src="/se2/js/HuskyEZCreator.js" charset="utf-8"></script> 
	<script type="text/javascript" src="/se2/photo_uploader/plugin/hp_SE2M_AttachQuickPhoto.js"
	charset="utf-8"></script>
	
	<!-- 아이콘 사용하기 위한 CDN 경로 -->
	<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/font-awesome/4.7.0/css/font-awesome.min.css">

	<!-- Css Styles start-->
    <link rel="stylesheet" href="/css/jquery-ui.min.css" type="text/css">
	<link rel="stylesheet" href="/css/bootstrap.min.css" type="text/css">
    <link rel="stylesheet" href="/css/font-awesome.min.css" type="text/css">
    <link rel="stylesheet" href="/css/elegant-icons.css" type="text/css">
    <link rel="stylesheet" href="/css/nice-select.css" type="text/css">
    <link rel="stylesheet" href="/css/owl.carousel.min.css" type="text/css">
    <link rel="stylesheet" href="/css/slicknav.min.css" type="text/css">
    <!-- <link rel="stylesheet" href="/css/header.css" type="text/css"> -->
    <link rel="stylesheet" href="/css/style.css" type="text/css">
	<!-- Css Styles end-->
</head>
<body>
	<div class="layout">
		<div class="header">
			<tiles:insertAttribute name="header"/>
		</div>
		<div class="sub_header">
			<tiles:insertAttribute name="sub_header"/>
		</div>
		<section class="author-details-middle">
			<div class="container">
				<div class="row">
					<div class="body_left">
						<tiles:insertAttribute name="body_left"/>
					</div>
					<div class="body_right">
						<tiles:insertAttribute name="body_right"/>
					</div>
				</div>
			</div>
		</section>
		<div class="footer">
			<tiles:insertAttribute name="footer"/>
		</div>
	</div>
	
	<!-- Js Plugins start-->
    <script src="/js/bootstrap.min.js"></script>
    <script src="/js/jquery.nice-select.min.js"></script>
    <script src="/js/jquery-ui.min.js"></script>
    <script src="/js/jquery.slicknav.js"></script>
    <script src="/js/mixitup.min.js"></script>
    <script src="/js/owl.carousel.min.js"></script>
    <script src="/js/main.js"></script>
	<!-- Js Plugins end-->
</body>
</html>