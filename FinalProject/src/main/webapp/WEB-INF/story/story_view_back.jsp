<%@ page language="java" contentType="text/html; charset=utf-8"
    pageEncoding="utf-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<c:set var="root" value="<%=request.getContextPath()%>"/>
<script type="text/javascript">
	$(function(){
		num=$("#num").val(); //input num 값 가져오기!
		//alert(num);//17로 잘나옴!
		list();
		
		$("#comment_add").click(function(){
			// alert("1"); //클릭잘됨!
			var content=$("#content").val();
			
			if(content.trim().length==0){
				alert("댓글 내용 입력해주세요!"); //잘나옴!
				return;
			}
			
			//댓글 내용 입력을 했을 경우
			$.ajax({
				type:"post",
				dataType:"text",
				url:"/story/cinsert",
				data:{"num":num,"content":content},
				success:function(data){
					alert("댓글이 등록되었습니다!"); //나옴 ㅠㅠ
					
					//댓글 목록 가져오기
					list();
					
					//입력값 지우기
					$("#content").val("");
					$("#content").focus("");
				}
			});
		});
		
		//댓글 버튼을 클릭했을때 이벤트!
		$(document).on("click","#author_add_comment",function(){
			//alert("클릭"); //클릭은됨
			
			// alert(idx); //해당 댓글의 idx 값 불러옴!
			
		});
	});
	
	function list(){
		$.ajax({
			type:"get",
			dataType:"json",
			url:"/story/clist",
			data:{"num":num},
			success:function(data){
				var com="";
				com+="<ul>";
				$.each(data, function(i,dto){
					com+="<li class='comment_plus'>";
					com+="<h6>";
					//댓글은 reidx가 1일 경우 즉 작가 댓글을 등록할 경우!
					if(dto.reidx==1){
						com+="<img src='/img/re.png'><i class='fa fa-star' aria-hidden='true'></i>";
					}
					com+=dto.writer+"</h6>";
					com+="<p>"+dto.content+"</p>";
					com+="<span>"+dto.writeday+"</span>";
					com+="<div class='comment_btn_all'>";
					if(dto.reidx==0){
						com+="<button type='button' id ='author_add_comment' idx='"+dto.idx+"' regroup='"+dto.regroup+"' onclick='showPopup("+dto.idx+")'>댓글</button>";
					}
					com+="<button type='button' idx='"+dto.idx+"'>수정</button>";
					com+="<button type='button' idx='"+dto.idx+"'>삭제</button>";
					com+="</div>";
					com+="</li>";
				});
				com+="</ul>";
				$("#sclist").html(com);
			}
		});
	}
	
	//댓글을 클릭했을 때 idx를 가져온 이후에 팝업창 열리게 하기!
	function showPopup(idx) {
		aidx=$("#author_add_comment").attr("idx");
		aregroup=$("#author_add_comment").attr("regroup");
		//alert(aregroup); //댓글 idx 번호 가져옴!
		const popup = document.querySelector('#author_comment_popup');
		 popup.classList.remove('hide');
	}
	function closePopup() {
		const popup = document.querySelector('#author_comment_popup');
		popup.classList.add('hide');
	}
	
	//대댓글 입력(작가만)
	$(document).on("click","#btn_submit_1",function(){
		var content=$("#re_content").val();
		var num=$("#num").val();
		alert(aregroup); 
		//여기까지는 aregroup의 값이 넘어오니까 이거를 컨트롤러로 넘겨서 같이 저장..?
		
		$.ajax({
			type:"post",
			dataType:"text",
			url:"/story/acinsert",
			data:{"num":num,"aidx":aidx,"content":content},
			success:function(data){		
				alert("작가님의 댓글이 등록되었습니다!");
				location.reload();
				list();
			}
		});	
	});
	
</script>
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
				<!-- 댓글 관련 input_hidden 아래 5줄! -->
				<input type="hidden" name="writer" value="kang"/>
				<input type="hidden" name="num" id="num" value="${dto.num}">
				<table class="comment__table__all">
					<tr>
						<td>
							<textarea class="comment__form" id="content" name="comment"
							required="required" placeholder="댓글을 입력해주세요."></textarea>
							<button type="submit" id="comment_add" class="comment__insert__btn">확인</button>
						</td>
					</tr>
				</table>
			</div>
			<div class="story__view__comment__count">
				<span>총 <b>0</b>개의 댓글</span>
			</div>
			<div class="story__view__comment__list" id="sclist">
				<!-- <ul>
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
						<h6>
						<img src="/img/re.png">
						<i class="fa fa-star" aria-hidden="true"></i>
						제이라운드</h6>
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
				</ul> -->
			</div>
			<div class="story__view__btn__list">
				<button type="button" class="story_list_btn"
					onclick="location.href='/story/list'">목록</button>
			</div>
		</div>
	</div>
</div>
<!-- 작가가 댓글 클릭시 팝업! -->
<div id="author_comment_popup" class="hide">
	<div class="content">
		<p class="popup_info_check">댓글 등록하기</p>
		<input type="hidden" name="num" id="num" value="${dto.num}">
		<textarea class="comment__form" id="re_content" name="comment"
		required="required" placeholder="댓글을 입력해주세요."></textarea>
		<div class="popup_info_btn">
			<button type="button" id="btn_submit_1">확인</button>
			<button type="button" id="btn_close_1" onclick="closePopup()" >닫기</button>
		</div>
	</div>
</div>