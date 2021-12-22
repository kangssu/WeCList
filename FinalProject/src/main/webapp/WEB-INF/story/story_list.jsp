<%@ page language="java" contentType="text/html; charset=utf-8"
    pageEncoding="utf-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<c:set var="root" value="<%=request.getContextPath()%>"/>
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
<section class="product spad">
	<div class="container">
		<div class="story__list">
			<c:if test="${atotalCount==0}">
				<div align="center" class="all_story_total">
					<h3>등록된 게시글이 없습니다!</h3>
				</div>
			</c:if>
			<c:if test="${atotalCount>0}">
				<div class="row">
					<c:forEach var="dto" items="${list}">
						<div class="col-lg-4 col-md-4 col-sm-6">
							<div class="story__item">
								<a href="/story/view?num=${dto.num}&currentPage=${currentPage}&key=list">
									<div class="story_img">
										<img src="/photo/${dto.profileimg}">
										<span>${dto.nickname}</span>
									</div>
									<div class="story__item__pic">
										<img src="/photo/${dto.thumbnail_file}" alt="">
									</div>
									<div class="story__item__text">
										<h5>${dto.title}</h5>
										<!-- 이미 content에 p태그가 존재해서 아래에 p태그 제거함! -->
										${dto.content}
										<ul>
											<li class="cal_icon_margin"><i class="fa fa-calendar-o"></i><fmt:formatDate value="${dto.writeday}" pattern="yyyy-MM-dd"/></li>
											<li class="cal_icon_margin"><i class="fa fa-eye" aria-hidden="true"></i>${dto.read_count}</li>
										</ul>
									</div>
								</a>
							</div>
						</div>
					</c:forEach>
				</div>
			</c:if>
		</div>
		<div class="product__pagination">
			<c:if test="${startPage>1}">
				<a href="list?currentPage=${startPage-1}">이전</a>
			</c:if>

			<c:forEach var="pp" begin="${startPage}" end="${endPage}">
				<c:if test="${currentPage==pp}">
					<li class="select"><a class="select2" href="list?currentPage=${pp}">${pp}</a></li>
				</c:if>
				<c:if test="${currentPage!=pp}">
					<li class="active"><a href="list?currentPage=${pp}">${pp}</a></li>
				</c:if>
			</c:forEach>
			<c:if test="${endPage<totalPage}">
				<a href="list?currentPage=${endPage+1}">다음</a>
			</c:if>
		</div>
	</div>
</section>
