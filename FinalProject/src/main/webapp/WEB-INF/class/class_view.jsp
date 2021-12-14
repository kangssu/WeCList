<%@ page language="java" contentType="text/html; charset=utf-8"
	pageEncoding="utf-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions"%>
<c:set var="root" value="<%=request.getContextPath()%>" />
<!-- Breadcrumb Section Begin -->
<style>
.heart {
	cursor: pointer;
}
</style>
<script type="text/javascript">
$(function(){
loginok="${sessionScope.loginok}"; //로그인 여부
loginid="${sessionScope.id}"; //로그인 아이디 가져옴

//alert(loginok+","+loginid); //확인됨
           		
//좋아요 이벤트!(추가)
$(".fa-heart-o").click(function(){
	var class_heart=loginid;
	var num=$(this).attr("num");
           			
	//로그인 한 이후에 팔로우 가능!
	if(loginok==""){
		alert("회원만 가능합니다!");
		location.href ="/users/login";
	}else{
		$.ajax({
			type:"post",
			dataType:"text",
			url:"/class/hinsert",
			data:{"class_heart":class_heart,"num":num},
			success:function(data){
			alert("좋아요 되었습니다!");
			location.reload();
           	}
        });
    }
});
           		
//좋아요 이벤트!(취소)
$(".fa-heart").click(function(){
	var class_heart=loginid;
	var num=$(this).attr("num");
           			
	//팔로우!
		$.ajax({
			type:"post",
			dataType:"text",
			url:"/class/hdelete",
			data:{"class_heart":class_heart,"num":num},
			success:function(data){
			alert("좋아요 취소되었습니다!");
			location.reload();
       		}
        });
   	});
   	
//관심 이벤트!(추가)
$(".primary-btn-on").click(function(){
	var class_inter=loginid;
	var num=$(this).attr("num");
	//alert(id); //아이디 불러옴
	
	//로그인 한 이후에 팔로우 가능!
	if(loginok==""){
		alert("회원만 가능합니다!");
		location.href ="/users/login";
	}else{
		$.ajax({
			type:"post",
			dataType:"text",
			url:"/class/iinsert",
			data:{"class_inter":class_inter,"num":num},
			success:function(data){
				location.reload();
			}
		});
	}
});   

//관심 이벤트(취소)
$(".primary-btn-off").click(function(){
	var class_inter=loginid;
	var num=$(this).attr("num");
	//alert(to_id);
	
	//팔로우!
	$.ajax({
		type:"post",
		dataType:"text",
		url:"/class/idelete",
		data:{"class_inter":class_inter,"num":num},
		success:function(data){
			location.reload();
		}
	});
});
   	
   
});
</script>

<section class="breadcrumb-section">
	<div class="container">
		<div class="row">
			<div class="col-lg-12 text-center">
				<div class="breadcrumb__text">
					<h2>온라인 클래스</h2>
					<div class="breadcrumb__option">
						<a href="./index.html">Home</a> <span>온라인 클래스</span>
					</div>
				</div>
			</div>
		</div>
	</div>
</section>
<!-- Breadcrumb Section End -->

<!-- Product Details Section Begin -->
<section class="product-details spad">
	<div class="container">
		<div class="row">
			<div class="col-lg-6 col-md-6">
				<div class="product__details__pic">
					<div class="product__details__pic__item">
						<img class="product__details__pic__item--large"
							src="../photo/${dto.uploadfile}" alt="">
					</div>
					<div class="product__details__pic__slider owl-carousel">
						<img data-imgbigurl="../photo/${dto.uploadfile}"
							src="../photo/${dto.uploadfile}" alt=""> <img
							data-imgbigurl="../photo/${dto.uploadfile1}"
							src="../photo/${dto.uploadfile1}" alt=""> <img
							data-imgbigurl="../photo/${dto.uploadfile2}"
							src="../photo/${dto.uploadfile2}" alt=""> <img
							data-imgbigurl="../photo/${dto.uploadfile3}"
							src="../photo/${dto.uploadfile3}" alt=""> <img
							data-imgbigurl="../photo/${dto.uploadfile4}"
							src="../photo/${dto.uploadfile4}" alt=""> <img
							data-imgbigurl="../photo/${dto.uploadfile5}"
							src="../photo/${dto.uploadfile5}" alt="">
					</div>
				</div>
			</div>

			<c:if test="${InterCount>=15}">
				<div class="col-lg-6 col-md-6">
					<div class="product__details__text">
						<a onclick="location.href='/author/home?id=${dto.myid}'"> <span><img
								src="${root}/img/pro2.jpg">달콩작가의 그림작업실<i
								class="fa fa-angle-right"></i></span>
						</a>
						<h3>${dto.title}</h3>
						<div class="product__details__rating">
							<i class="fa fa-star"></i> <i class="fa fa-star"></i> <i
								class="fa fa-star"></i> <i class="fa fa-star"></i> <i
								class="fa fa-star-half-o"></i> <span>(15개의 리뷰)</span>
						</div>
						<div class="product__details__price">${dto.classprice}</div>
						<p>${dto.classinfo}</p>

						<div class="class_view_text_1">
							<dl>
								<dt>수강시작일</dt>
								<dd>신청 즉시</dd>
							</dl>
							<dl>
								<dt>난이도</dt>
								<dd>쉬움</dd>
							</dl>
							<dl>
								<dt>준비물</dt>
								<dd>없음</dd>
							</dl>
						</div>

						<div class="class_view_text_2">
							※ 해당 클래스 구매시 무한 스트리밍으로 평생 소장 가능합니다.<br> ※ 준비물이 포함된 가격입니다.<br>
							※ 준비물이 있을 경우 이메일 전달 또는 기입하신 배송지로 배달됩니다.
						</div>
						<button type="button" class="primary-btn"
							onclick="location.href='buy'">구매하기</button>
						<button type="button" class="heart-btn" onclick="">찜하기</button>
						<button type="button" class="list-btn"
							onclick="location.href='list'">목록보기</button>

						<c:if test="${loginok eq 'yes'}">
							<c:choose>
								<c:when test="${fn:contains(heartTrue, sessionScope.id)}">
									<a class="heart"><i class="fa fa-heart" num="${dto.num}">${cdto.classheart}</i></a>
								</c:when>
								<c:otherwise>
									<a class="heart"><i class="fa fa-heart-o" num="${dto.num}">${cdto.classheart}</i></a>
								</c:otherwise>
							</c:choose>
						</c:if>

						<c:if test="${loginok eq null}">
							<a class="heart"><i class="fa fa-heart-o"></i></a>
						</c:if>

						<span id="heart">${dto.classheart}</span>
					</div>
				</div>
				<div class="col-lg-12">
					<div class="product__details__tab">
						<ul class="nav nav-tabs" role="tablist">
							<li class="nav-item"><a class="nav-link active"
								data-toggle="tab" href="#tabs-1" role="tab" aria-selected="true">클래스
									소개</a></li>
							<li class="nav-item"><a class="nav-link" data-toggle="tab"
								href="#tabs-2" role="tab" aria-selected="false">진행과정</a></li>
							<li class="nav-item"><a class="nav-link" data-toggle="tab"
								href="#tabs-3" role="tab" aria-selected="false">수강 후기<span>(1)</span></a>
							</li>
							<li class="nav-item"><a class="nav-link" data-toggle="tab"
								href="#tabs-4" role="tab" aria-selected="false">환불정책</a></li>
						</ul>
						<div class="tab-content">
							<div class="tab-pane active" id="tabs-1" role="tabpanel">
								<div class="product__details__tab__desc">
									<p>${dto.classinfo}</p>
								</div>
							</div>
							<div class="tab-pane" id="tabs-2" role="tabpanel">
								<div class="product__details__tab__desc">
									<p>진행과정 영상 리스트 출력(폼 만들어야함)</p>
								</div>
							</div>
							<div class="tab-pane" id="tabs-3" role="tabpanel">
								<div class="product__details__tab__desc">
									<p>수강 후기 폼 작성(폼 만들어야함-작품(리뷰)와 동일한 폼!)</p>
								</div>
							</div>
							<div class="tab-pane" id="tabs-4" role="tabpanel">
								<div class="product__details__tab__desc">
									<p>환불정책 내용출력 (이미지+내용 전부 출력)</p>
								</div>
							</div>
						</div>
					</div>
				</div>
			</c:if>


			<c:if test="${InterCount<15}">
				<div class="col-lg-6 col-md-6">
					<div class="product__details__text">
						<a href="#"> <span><img src="${root}/img/pro2.jpg">달콩작가의
								그림작업실<i class="fa fa-angle-right"></i></span>
						</a>
						<h3>바퀴달린집2 출연진이 배운, 달콩이의 아이패드 드로잉</h3>
						<div class="count-box">
							<b style="color: #ffa500">관심있어요 ??명</b>
						</div>
						<br>
						<p>2021년의 수능 합격 기원을 위한 수제카라멜 선물세트로 공부하는 수험생들에게 힘을 주기 위한 선물세트
							입니다. 건강에도 좋은 성분으로 만든 카라멜을 직접 만들어서 선물해보세요!!!</p>

						<div class="class_view_text_1">
							<dl>
								<dt>수강시작일</dt>
								<dd>미정</dd>
							</dl>
							<dl>
								<dt>난이도</dt>
								<dd>쉬움</dd>
							</dl>
							<dl>
								<dt>준비물</dt>
								<dd>없음</dd>
							</dl>
						</div>

						<div class="class_view_text_2">
							※ 150명의 관심이 모이면 제작이 진행됩니다.<br> ※ 관심 등록시, 진행과정 소식을 보내드려요.<br>
						</div>

						<c:if test="${loginok eq 'yes'}">
							<c:choose>
								<c:when test="${fn:contains(interTrue, sessionScope.id)}">
									<button type="button" class="primary-btn-off" num="${dto.num}">
										<i class="fa fa-check" aria-hidden="true"></i>관심 가지는중
									</button>
									<button type="button" class="list-btn-inter" onclick="location.href='list'">목록보기</button>
								</c:when>
								<c:otherwise>
									<button type="button" class="primary-btn-on" num="${dto.num}"><i class='fa fa-plus' aria-hidden='true'></i>관심있어요</button>
									<button type="button" class="list-btn-inter" onclick="location.href='list'">목록보기</button>
								</c:otherwise>
							</c:choose>
						</c:if>

						<c:if test="${loginok eq null}">
							<button type="button" class="primary-btn-on" onclick="#">관심있어요</button>
							<button type="button" class="list-btn-inter" onclick="location.href='list'">목록보기</button>
						</c:if>
					</div>
				</div>
				<div class="col-lg-12">
					<div class="product__details__tab">
						<ul class="nav nav-tabs" role="tablist">
							<li class="nav-item"><a class="nav-link active"
								data-toggle="tab" href="#tabs-1" role="tab" aria-selected="true">클래스
									소개</a></li>
							<li class="nav-item"><a class="nav-link" data-toggle="tab"
								href="#tabs-2" role="tab" aria-selected="false">댓글</a></li>
						</ul>
					</div>
				</div>
			</c:if>


		</div>
	</div>
</section>
<!-- Product Details Section End -->

<!-- Related Product Section Begin -->
<section class="related-product">
	<div class="container">
		<div class="row">
			<div class="col-lg-12">
				<div class="section-title related__product__title">
					<h2>다른 클래스 구경하기</h2>
					<span>다양한 클래스를 구경해보세요!</span>
				</div>
			</div>
		</div>

		<div class="row">

			<div class="categories__slider owl-carousel">
				<c:forEach var="idto" items="${inter}">
					<c:forEach var="cdto" items="${classlist}">
						<c:if test="${idto.inter_cnt>=1 and idto.num==cdto.num}">
							<div style="float: left;">
								<div class="product__item">
									<a href="${root}/class/view?num=${cdto.num}">
										<div class="product__item__pic set-bg">
											<img src="../photo/${cdto.uploadfile}"
												style="width: 300px; height: 300px;">
										</div>
										<div class="product__item__text">
											<h6>${cdto.title}</h6>
											<h6>${cdto.class_op_cate}</h6>
											<h5>${cdto.classprice}원</h5>
										</div>
									</a>
								</div>
							</div>
						</c:if>
					</c:forEach>
				</c:forEach>
			</div>
		</div>
	</div>
</section>
<!-- Related Product Section End -->