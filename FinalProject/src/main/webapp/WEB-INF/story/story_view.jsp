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
	});
	
	function list(){
		$.ajax({
			type:"get",
			dataType:"json",
			url:"/story/clist",
			data:{"num":num},
			success:function(data){
				$("b.acount").text(data.length);
				var com="";
				com+="<ul>";
				$.each(data, function(i,dto){
					com+="<li class='comment_plus'>";
					com+="<h6>";
					//댓글은 reidx가 1일 경우 즉 작가 댓글을 등록할 경우!
					if(dto.reidx==1){
						com+="<div><img src='/img/re.png' class='author_re'>";
					}
					com+="<img src='/img/pro.jpg' class='profile_re'>"+dto.writer;
					if(dto.reidx==1){
						com+="<i class='fa fa-star' aria-hidden='true'></i>";
					}
					com+="</h6></div>";
					com+="<p>"+dto.content+"</p>";
					com+="<span>"+dto.writeday+"</span>";
					com+="<div class='comment_btn_all'>";
					if(dto.reidx==0){
						com+="<button type='button' id ='author_add_comment' onclick='rePopup("+dto.idx+","+dto.regroup+")'>댓글</button>";
					}
					com+="<button type='button' id='update_comment' onclick='upPopup("+dto.idx+")'>수정</button>";
					com+="<button type='button' id='delete_comment' onclick='delPopup("+dto.idx+")'>삭제</button>";
					com+="</div>";
					com+="</li>";
				});
				com+="</ul>";
				$("#sclist").html(com);
			}
		});
	}
	
	//댓글을 클릭했을 때 idx를 가져온 이후에 팝업창 열리게 하기!
	function rePopup(idx,regroup) {
  		
		//대댓글 입력(작가만)
		$(document).on("click","#btn_submit_1",function(){
	  		$("#reg").val(regroup); 
	  		regroup=$("#reg").val(); 
			content=$("#re_content").val();
			//var num=$("#num").val();
	  		document.getElementById("reg").value = regroup;
			
			$.ajax({
				type:"post",
				dataType:"text",
				url:"/story/acinsert",
				data:{"num":num,"regroup":regroup,"content":content},
				success:function(data){		
					alert("작가님의 댓글이 등록되었습니다!");
					location.reload();
					list();
				}
			});
		});
		
		const popup = document.querySelector('#author_comment_popup');
		 popup.classList.remove('hide');
	}
	function rePopupClose() {
		const popup = document.querySelector('#author_comment_popup');
		popup.classList.add('hide');
	}
	
	//수정을 클릭했을 때 나오는 팝업! (회원은 자신의 글만, 작가도 가능하게)
	function upPopup(idx) {
		
		//댓글 수정 버튼 클릭시 안에 데이터 값 불러와야함
		$(document).on("click","#update_comment",function(){
			$("#idx").val(idx);
			idx=$("#idx").val();
			$.ajax({
				type:"get",
				dataType:"json",
				url:"/story/cdata",
				data:{"idx":idx},
				success:function(data){						
					$("#up_content").val(data.content);
				}
			});
		});
  		
		//댓글 수정 팝업에서 수정 버튼 클릭시!
		$(document).on("click","#btn_submit_2" ,function(){
			$("#idx").val(idx);
			idx=$("#idx").val();
			//alert(idx);
			content=$("#up_content").val();
			
			$.ajax({
				type:"post",
				dataType:"text",
				url:"/story/cupdate",
				data:{"idx":idx,"content":content},
				success:function(data){		
					alert("댓글이 수정되었습니다!");
					location.reload();
					list();
				}
			});
		});
		
		const popup = document.querySelector('#update_popup');
		 popup.classList.remove('hide');
	}
	function upPopupClose() {
		const popup = document.querySelector('#update_popup');
		popup.classList.add('hide');
	}
	
	//삭제를 클릭했을 때 나오는 팝업! (회원은 자신의 글만, 작가도 가능하게)
	function delPopup(idx) {
		
		//댓글 삭제 팝업에서 삭제 버튼 클릭시!
		$(document).on("click","#btn_submit_3",function(){
			$("#idx").val(idx);
			idx=$("#idx").val();
			alert("2");
			$.ajax({
				type:"get",
				dataType:"text",
				url:"/story/cdelete",
				data:{"idx":idx},
				success:function(data){	
					location.reload();
					list();
				}
			});
		});
		
		const popup = document.querySelector('#delete_popup');
		 popup.classList.remove('hide');
	}
	function delPopupClose() {
		const popup = document.querySelector('#delete_popup');
		popup.classList.add('hide');
	}
	
	
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
				<input type="hidden" name="writer" value="${sessionScope.id}"/>
				<input type="hidden" name="num" id="num" value="${dto.num}">
				<table class="comment__table__all">
					<tr>
						<td>
							<!-- 로그인 상태일 경우에만 댓글을 쓸 수 있게! -->
							<c:choose>
								<c:when test="${sessionScope.loginok!=null}">
									<textarea class="comment__form" id="content" name="comment"
									required="required" placeholder="댓글을 입력해주세요."></textarea>
									<button type="submit" id="comment_add" class="comment__insert__btn">확인</button>
								</c:when>
								<c:otherwise>
									<p class="only_member_text">※ 회원들만 댓글을 작성할 수 있습니다.</p>
					    		</c:otherwise>
							</c:choose>
						</td>
					</tr>
				</table>
			</div>
			<div class="story__view__comment__count">
				<span>총 <b class="acount"></b>개의 댓글</span>
			</div>
			<div class="story__view__comment__list" id="sclist">
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
		<input type="hidden" name="num" id="num" value="${dto.num}"/>
		<input type="hidden" name="regroup" id="reg" value=""/>
		<textarea class="comment__form" id="re_content" name="content"
		required="required" placeholder="댓글을 입력해주세요."></textarea>
		<div class="popup_info_btn">
			<button type="submit" id="btn_submit_1">확인</button>
			<button type="button" id="btn_close_1" onclick="rePopupClose()" >닫기</button>
		</div>
	</div>
</div>

<!-- 수정 클릭시 팝업! -->
<div id="update_popup" class="hide">
	<div class="content">
		<p class="popup_info_check">댓글 수정하기</p>
		<input type="hidden" name="idx" id="idx" value=""/>
		<textarea class="comment__form" id="up_content" name="content"
		required="required" placeholder="수정할 댓글을 입력해주세요."></textarea>
		<div class="popup_info_btn">
			<button type="submit" id="btn_submit_2">확인</button>
			<button type="button" id="btn_close_2" onclick="upPopupClose()" >닫기</button>
		</div>
	</div>
</div>

<!-- 삭제 클릭시 팝업! -->
<div id="delete_popup" class="hide">
	<div class="content">
		<p class="popup_info_check">해당 댓글을 삭제하시겠습니까?</p>
		<input type="hidden" name="idx" id="idx" value=""/>
		<span class="del_popup_text">
			해당 댓글를 삭제하시겠습니까?<br>
			삭제하시면 다시 원복하실 수 없습니다.<br>
			<b>※ 신중히 생각하시고 진행부탁드립니다.</b>	
		</span>
		<div class="popup_info_btn">
			<button type="submit" id="btn_submit_3">확인</button>
			<button type="button" id="btn_close_3" onclick="delPopupClose()" >닫기</button>
		</div>
	</div>
</div>
