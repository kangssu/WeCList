<%@ page language="java" contentType="text/html; charset=utf-8"
    pageEncoding="utf-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<c:set var="root" value="<%=request.getContextPath()%>"/>
<!-- Breadcrumb Section Begin -->
<section class="breadcrumb-section">
	<div class="container">
		<div class="row">
			<div class="col-lg-12 text-center">
				<div class="breadcrumb__text">
					<h2>스토리</h2>
					<div class="breadcrumb__option">
						<a href="./index.html">Home</a>
						<span>스토리</span>
					</div>
				</div>
			</div>
		</div>
	</div>
</section>
<!-- Breadcrumb Section End -->
<!-- 스토리 상세 -->
<div class="story_view">
	<div class="container">
		<div class="story__view__page">
			<div class="story__view__top">
				<div class="story_img">
					<img src="/img/pro.jpg">
					<span>제이라운드</span>
				</div>
				<h6>${dto.title}</h6>
				<p><fmt:formatDate value="${dto.writeday}" pattern="yyyy-MM-dd"/></p>
				<div class="story_view_count">
					<p>VIEW</p>
					<p>${dto.read_count}</p>
				</div>
			</div>
			<div class="story__view__content__text">
				<p>${dto.content}</p>
			</div>
			<div class="story__view__comment__form">
				<table class="comment__table__all">
					<tr>
						<td>
							<textarea class="comment__form" name="comment"
							required="required" placeholder="댓글을 입력해주세요."></textarea>
							<button type="submit" class="comment__insert__btn">확인</button>
						</td>
					</tr>
				</table>
			</div>
			<div class="story__view__comment__count">
				<span>총 <b>0</b>개의 댓글</span>
			</div>
			<div class="story__view__comment__list">
				<ul>
					<li>
						<h6>홍길동</h6>
						<p>댓글 내용입니다!</p>
						<span>2021-11-27</span>
						<div class="comment_btn_all">
							<button type="button">댓글</button>
							<button type="button">수정</button>
							<button type="button">삭제</button>
						</div>
					</li>
					<li class="comment_plus">
						<h6><i class="fa fa-long-arrow-right" aria-hidden="true"></i>홍길동</h6>
						<p>댓글 내용입니다!</p>
						<span>2021-11-27</span>
						<div class="comment_btn_all">
							<button type="button">수정</button>
							<button type="button">삭제</button>
						</div>
					</li>
					<li>
						<h6>홍길동</h6>
						<p>댓글 내용입니다!</p>
						<span>2021-11-27</span>
						<div class="comment_btn_all">
							<button type="button">댓글</button>
							<button type="button">수정</button>
							<button type="button">삭제</button>
						</div>
					</li>
				</ul>
			</div>
			<div class="story__view__btn__list">
				<button type="button" class="story_list_btn"
					onclick="location.href='/story/list'">목록</button>
			</div>
		</div>
	</div>
</div>