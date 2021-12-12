<%@ page language="java" contentType="text/html; charset=utf-8"
	pageEncoding="utf-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<c:set var="root" value="<%=request.getContextPath()%>" />
<div class="home_shop_content">
	<div class="home_tab_manu_all container">
		<ul class="home_tab__manu">
			<li><a onclick="location.href='/author/home?id=${aid}'">프로필</a></li><li><a onclick="location.href='/author/story?id=${aid}'">스토리</a></li><li class="on"><a onclick="location.href='/author/shop?id=${aid}'">작품</a></li><li><a onclick="location.href='/author/class?id=${aid}'">클래스</a></li>
		</ul>
	</div>
	<div class="home_content_background">
		<div class="shop__list container">
			<c:if test="${IdCount==0}">
				<div align="center" class="all_story_total">
					<h3>등록된 게시글이 없습니다!</h3>
				</div>
			</c:if>
			<c:if test="${IdCount>0}">
				<div class="row">
					<c:forEach var="a" items="${list}">
						<div class="col-lg-4 col-md-6 col-sm-6">
							<div class="shop__box">
								<a href="/author/shop/content?num=${a.num}&currentPage=${currentPage}&key=list">
									<div class="shop__box__1 set-bg">
										<img src="../photo/${a.uploadfile1}" alt="" >
									</div>
									<div class="shop__box__text">
										<h6>${a.name}</h6>
										<h6>${a.title}</h6>
										<h5>${a.shopprice}</h5>
									</div>
								</a>
							</div>
						</div>
					</c:forEach>
				</div>
			</c:if>
		</div>
		<!-- 페이징 여기다가 아래 코드 지우고 넣기! class 동일하게줘야 css 먹음!!! -->
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
			<!-- 다음 -->
			<c:if test="${endPage<totalPage}">
				<a href="list?currentPage=${endPage+1}">다음</a>
			</c:if>
		</div>
	</div>
</div>
