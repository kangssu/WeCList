<%@ page language="java" contentType="text/html; charset=utf-8"
	pageEncoding="utf-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<c:set var="root" value="<%=request.getContextPath()%>" />
	<div class="home_profile_content">
		<div class="home_tab_manu_all container">
			<ul class="home_tab__manu">
				<li class="on"><a onclick="location.href='/author/home?id=${aid}'">프로필</a></li><li><a onclick="location.href='/author/story?id=${aid}'">스토리</a></li><li><a onclick="location.href='/author/shop?id=${aid}'">작품</a></li><li><a onclick="location.href='/author/class?id=${aid}'">클래스</a></li>
			</ul>
		</div>
		<div class="home_content_back">
			<div class="home_profile_content_box_all container">
				<div class="home_profile_content_box">
					<h4>간략소개</h4>
					<c:choose>
						<c:when test="${totalCount>0}">
							<p>${apdto.concise}</p>
						</c:when>
						<c:otherwise>
							<p>아직 간략소개가 등록되지 않았습니다.</p>
			    		</c:otherwise>
					</c:choose>
				</div>
				<div class="home_profile_content_box">
					<h4>History</h4>
					<c:choose>
						<c:when test="${totalCount>0}">
							<p>${apdto.history}</p>
							<c:if test="${apdto.history_file!='no'}">
								<c:forTokens var="pp" items="${apdto.history_file}" delims=",">
									<img src="/photo/${pp}">
								</c:forTokens>
							</c:if>
						</c:when>
						<c:otherwise>
							<p>아직 History가 등록되지 않았습니다.</p>
			    		</c:otherwise>
					</c:choose>
				</div>
				<div class="home_profile_content_box">
					<h4>Idea</h4>
					<c:choose>
						<c:when test="${totalCount>0}">
							<p>${apdto.idea}</p>
							<c:if test="${apdto.idea_file!='no'}">
								<c:forTokens var="pp" items="${apdto.idea_file}" delims=",">
									<img src="/photo/${pp}">
								</c:forTokens>
							</c:if>
						</c:when>
						<c:otherwise>
							<p>아직 Idea가 등록되지 않았습니다.</p>
			    		</c:otherwise>
					</c:choose>
				</div>
				<div class="home_profile_content_box">
					<h4>Identity</h4>
					<c:choose>
						<c:when test="${totalCount>0}">
							<p>${apdto.identity}</p>
							<c:if test="${apdto.identity_file!='no'}">
								<c:forTokens var="pp" items="${apdto.identity_file}" delims=",">
									<img src="/photo/${pp}">
								</c:forTokens>
							</c:if>
						</c:when>
						<c:otherwise>
							<p>아직 Identity가 등록되지 않았습니다.</p>
			    		</c:otherwise>
					</c:choose>
				</div>
			</div>
		</div>
	</div>
