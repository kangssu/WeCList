<%@ page language="java" contentType="text/html; charset=utf-8"
	pageEncoding="utf-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<c:set var="root" value="<%=request.getContextPath()%>" />
<script type="text/javascript">
	/* 삭제하기 클릭시 팝업!!! */
	function showDelPopup(num) {
		//alert(num); //num값 제대로 가져옴!
		$("#delnum").val(num);
		
		const popup2 = document.querySelector('#story_del_popup');
		popup2.classList.remove('hide');
		
		$("#btn_story_del").click(function(){
			//alert("1"); //1 제대로 나옴!
			var num=$("#delnum").val();
			location.href="/mypage/sdelete?num="+num;
		});
	}
	
	function closeDelPopup() {
		const popup2 = document.querySelector('#story_del_popup');
		popup2.classList.add('hide');
	}
</script>
<!-- 스토리 상세 -->
<div class="mypage__story">
	<h2>스토리 관리</h2>
	<div class="mypage__story__view">
		<div class="story__view__image">
			<img src="/photo/${dto.thumbnail_file}">
		</div>
		<div class="story__view__text">
			<h6>${dto.title}</h6>
			<p><fmt:formatDate value="${dto.writeday}" pattern="yyyy-MM-dd"/></p>
		</div>
		<div class="story__view__content">
			<p>${dto.content}</p>
		</div>
		<div class="story__view__btn__all">
			<button type="button" class="story_list_btn"
				onclick="location.href='/mypage/story/list'">목록</button>
			<button type="submit" class="story_su_btn"
			onclick="location.href='/mypage/story/updateform?num=${dto.num}&currentPage=${currentPage}'">수정하기</button>
			<button type="submit" class="story_del_btn"
			onclick="showDelPopup(${sdto.num})">삭제하기</button>
		</div>
	</div>
</div>
<!-- 삭제 클릭하면 나오는 팝업! -->
<div id="story_del_popup" class="hide">
	<div class="story_del_content">
		<p class="del_popup_title">삭제 확인</p>
		<span class="del_popup_text">
			해당 스토리를 삭제하시겠습니까?<br>
			삭제하시면 다시 원복하실 수 없습니다.<br>
			<b>※ 신중히 생각하시고 진행부탁드립니다.</b>	
		</span>
		<input type="hidden" id="delnum">
		<div class="popup_story_del_btn">
			<button type="button" id="btn_story_del">확인</button>
			<button type="button" id="btn_del_close" onclick="closeDelPopup()" >닫기</button>
		</div>
	</div>
</div>
