<%@ page language="java" contentType="text/html; charset=utf-8"
	pageEncoding="utf-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<c:set var="root" value="<%=request.getContextPath()%>" />
<div class="home_story_content">
	<div class="home_tab_manu_all container">
		<ul class="home_tab__manu">
			<li><a onclick="location.href='/author/home?id=${aid}'">프로필</a></li><li class="on"><a onclick="/author/story?id=${aid}">스토리</a></li><li><a onclick="location.href='/author/shop?id=${aid}'">작품</a></li><li><a onclick="location.href='/author/class?id=${aid}'">클래스</a></li>
		</ul>
	</div>
	<div class="home_content_background_1">
		<div class="story__list container">
			<c:if test="${totalCount==0}">
				<div align="center" class="all_story_total">
					<h3>등록된 게시글이 없습니다!</h3>
				</div>
			</c:if>
			<c:if test="${totalCount>0}">
				<div class="row">
					<c:forEach var="dto" items="${list}">
						<div class="col-lg-4 col-md-4 col-sm-6">
							<div class="story__item__home">
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
</div>
