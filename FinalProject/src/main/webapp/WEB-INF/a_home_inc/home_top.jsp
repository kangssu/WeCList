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
		$(".btn_follow_home").click(function(){
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
<div class="container">
	<div class="top_home_all">
		<div class="top_home_img ">
			<img src="/photo/${ahdto.profileimg}" class="home_profile_img">
		</div>
		<div class="top_home_text">
			<h5>${ahdto.nickname}</h5>
			<c:choose>
				<c:when test="${ahdto.concise!=null}">
					<p>${ahdto.concise}</p>
				</c:when>
				<c:otherwise>
					<p>아직 등록된 소개글이 없습니다.<br>
					<span>※ 작가님께서 등록해주실 예정입니다.</span></p>
				</c:otherwise>
			</c:choose>
		</div>
		<c:choose>
			<c:when test="${fn:contains(followTrue, ahdto.id)}">
				<button type="button" class="btn_following_home" onclick="showUnFolPopup('${ahdto.id}')">
					<i class="fa fa-check" aria-hidden="true"></i> 팔로잉
				</button>
			</c:when>
			<c:otherwise>
				<button type="submit" class="btn_follow_home" id="${ahdto.id}">
					<i class='fa fa-plus' aria-hidden='true'></i>
					팔로우
				</button>
			</c:otherwise>
		</c:choose>
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