<%@ page language="java" contentType="text/html; charset=utf-8"
    pageEncoding="utf-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions" %>
<c:set var="root" value="<%=request.getContextPath()%>"/>
<script type="text/javascript">
	$(function(){
		loginok="${sessionScope.loginok}"; //로그인 여부
		from_id="${sessionScope.id}"; //로그인 아이디 가져옴
		autor_ok="${sessionScope.category}";
		//alert(loginok+","+myid); //확인됨
		
		//팔로우 이벤트!(추가)
		$(".btn_follow").click(function(){
			var to_id=$(this).attr("id");
			//alert(id); //아이디 불러옴
			
			//로그인 한 이후에 팔로우 가능!
			if(loginok==""){
				alert("회원만 가능합니다!");
				location.href ="/users/login";
			}else if(autor_ok==2){
				alert("작가님은 다른 작가님을 팔로우 하실 수 없습니다!");
			}else{
				$.ajax({
					type:"post",
					dataType:"text",
					url:"/author/finsert",
					data:{"to_id":to_id,"from_id":from_id},
					success:function(data){
						showFolPopup();
						location.reload();
					}
				});
			}
			
		});
	});
	
	/* 팔로잉 클릭시 팝업!!! */
	function showUnFolPopup(id) {
		//alert(id);
		$("#follow_id").val(id);
		
		//팔로잉 이벤트!(취소)
		$("#btn_following_submit").click(function(){
			var from_id="${sessionScope.id}";
			var to_id=$("#follow_id").val();
			//alert(to_id);
			
			//팔로우!
			$.ajax({
				type:"post",
				dataType:"text",
				url:"/author/fdelete",
				data:{"from_id":from_id,"to_id":to_id},
				success:function(data){
					location.reload();
				}
			});
		});
		
		const popup2 = document.querySelector('#following_popup');
		popup2.classList.remove('hide');
	}
	
	function closeUnFolaPopup() {
		const popup2 = document.querySelector('#following_popup');
		popup2.classList.add('hide');
	}
	
	//팔로우 했을 경우 팝업!
	function showFolPopup() {
		const popup2 = document.querySelector('#follow_popup');
		popup2.classList.remove('hide');
	}
</script>
<!-- Breadcrumb Section Begin -->
<section class="breadcrumb-section">
	<div class="container">
		<div class="row">
			<div class="col-lg-12 text-center">
				<div class="breadcrumb__text">
					<h2>작가 구경하기</h2>
					<div class="breadcrumb__option">
						<a href="./index.html">Home</a>
						<span>작가 구경하기</span>
					</div>
				</div>
			</div>
		</div>
	</div>
</section>
<!-- Breadcrumb Section End -->
<!-- 작가 리스트 -->
<div class="author_list">
	<section class="hot_author">
		<div class="container">
			<div class="row">
				<div class="col-lg-12 section-title_top">
					<div class="author_list_hot_title">
						<h2>TOP 10 작가</h2>
					</div>
				</div>
				<div class="categories__slider owl-carousel">
					<c:forEach var="hdto" items="${Hotlist}" varStatus="status" begin="0" end="9">
						<div class="col-lg-3 hot_author_list">
							<c:forEach var="adto" items="${list}" begin="0" end="9">
								<c:if test="${hdto.to_id==adto.id}">
									<a onclick="location.href='/author/home?id=${adto.id}'">
										<div class="author__box set-bg">
											<p class="hot__author__count">top <b class="hot_number">${status.count}</b></p>
											<img src="/img/pro.jpg" id="author_img_1">
											<h5>${adto.nickname}</h5>
										</div>
									</a>
								</c:if>
							</c:forEach>
						</div>
					</c:forEach>
				</div>
			</div>
		</div>
	</section>
	<div class="author_all_list">
		<div class="container">
			<div class="author_title">
				<span>We C List의 작가 총 <b>${totalCount}</b>명</span>
			</div>
			<c:if test="${totalCount>0}">
				<c:forEach var="dto" items="${list}" varStatus="status">
					<div class="author__box__all_list">
						<%-- <input type="text" value="${status.count}"> --%>
						<div class="author__box_all">
							<img src="/photo/${dto.profileimg}" class="author_img_2">
						</div>
						<div class="author__box_all">
							<div class="all_text">
								<h5>${dto.nickname}</h5>
								<c:choose>
									<c:when test="${dto.concise!=null}">
										<p>${dto.concise}</p>
									</c:when>
									<c:otherwise>
										<p>아직 등록된 소개글이 없습니다.<br>
										<span>※ 작가님께서 등록해주실 예정입니다.</span></p>
						    		</c:otherwise>
								</c:choose>
								<c:choose>
									<c:when test="${fn:contains(followTrue, dto.id)}">
										<button type="button" class="btn_following" onclick="showUnFolPopup('${dto.id}')">
											<i class="fa fa-check" aria-hidden="true"></i> 팔로잉
										</button>
									</c:when>
									<c:otherwise>
										<button type="submit" class="btn_follow" id="${dto.id}">
											<i class='fa fa-plus' aria-hidden='true'></i>
											팔로우
										</button>
									</c:otherwise>
								</c:choose>
								<button type="button" class="btn_home" onclick="location.href='/author/home?id=${dto.id}'">
									<i class="fa fa-home" aria-hidden="truse"></i> 구경하기
								</button>
							</div>
						</div>
					</div>
				</c:forEach>
			</c:if>
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
</div>
<!-- 팔로잉 클릭하면 나오는 팝업! -->
<div id="following_popup" class="hide">
	<div class="following_content">
		<p class="following_title">팔로우를 해지하겠습니까?</p>
		<span class="following_text">
			해지하시면 팔로우한 작가 목록에서 보실 수 없습니다.<br>
			<b>※ 다시 작가를 팔로우 하실 수 있습니다.</b>	
		</span>
		<input type="hidden" id="follow_id">
		<div class="popup_following_btn">
			<button type="button" id="btn_following_submit">확인</button>
			<button type="button" id="btn_following_close" onclick="closeUnFolaPopup()" >닫기</button>
		</div>
	</div>
</div>

<!-- 팔로우 완료되면 나오는 팝업! -->
<div id="follow_popup" class="hide">
	<div class="following_content">
		<span class="follow_text">
			작가를 팔로우 하였습니다.<br>
		</span>
	</div>
</div>
