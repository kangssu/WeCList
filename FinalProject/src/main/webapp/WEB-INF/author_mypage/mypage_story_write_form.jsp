<%@ page language="java" contentType="text/html; charset=utf-8"
	pageEncoding="utf-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<c:set var="root" value="<%=request.getContextPath()%>" />
<!-- 스토리 리스트 -->
<div class="mypage__story">
	<h2>스토리 등록하기</h2>
	<div class="mypage__story__form">
		<form action="" method="post">
			<table class="story__table__form">
				<tr>
					<th>제목</th>
					<td><input type="text" placeholder="※ 스토리에 대한 제목을 입력해주세요."></input></td>
				</tr>
				<tr>
					<th>내용</th>
					<td><textarea name="content" id="content" required="required"></textarea>
				</tr>
				<tr>
					<th>대표 이미지</th>
					<td><input type="file"></input></td>
				</tr>
			</table>
			<div class="story_write_form_btn_all">
				<button type="button" class="story_list_btn"
					onclick="location.href='/mypage/story/list'">목록</button>
				<button type="submit" class="story_insert_btn">등록하기</button>
			</div>
		</form>
	</div>
</div>
<!-- 스마트게시판에 대한 스크립트 코드 넣기 -->
<script type="text/javascript">
	var oEditors = [];
	nhn.husky.EZCreator.createInIFrame({
	    oAppRef: oEditors,
	    elPlaceHolder: "content",
	    sSkinURI: "<%=request.getContextPath()%>/se2/SmartEditor2Skin.html",
	    fCreator: "createSEditor2"
	}); 
	
	function submitContents(elClickedObj) {
	    oEditors.getById["content"].exec("UPDATE_CONTENTS_FIELD", [ ]);
	    try {
	        elClickedObj.form.submit();
	    } catch(e) { 
	    }
	}
	
	function pasteHTML(filepath){
	    var sHTML = '<img src="<%=request.getContextPath()%>/save/'+filepath+'">';
	    oEditors.getById["content"].exec("PASTE_HTML", [sHTML]); 
	}
</script>