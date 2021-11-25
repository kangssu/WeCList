<%@ page language="java" contentType="text/html; charset=utf-8"
	pageEncoding="utf-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<c:set var="root" value="<%=request.getContextPath()%>" />
<!--summernote :S -->
<script src="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0-beta/js/bootstrap.min.js"></script>
<script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.11.0/umd/popper.min.js"></script>
  
<link href="http://cdnjs.cloudflare.com/ajax/libs/summernote/0.8.2/summernote.css" rel="stylesheet">
<script src="http://cdnjs.cloudflare.com/ajax/libs/summernote/0.8.2/summernote.js"></script>
<!--summernote :E -->
<script type="text/javascript">
   $(document).ready(function() {

      $('#summernote').summernote({
         placeholder : 'Write contents',
         height : 400,
         minHeight : null, // set minimum height of editor
         maxHeight : null, // set maximum height of editor
      });
   });
</script>
<!-- 스토리 리스트 -->
<div class="mypage__story">
	<h2>스토리 등록하기</h2>
	<div class="mypage__story__form">
		<form action="/mypage/sinsert" method="post" enctype="multipart/form-data">
			<input type="hidden" name="myid" value="angel"/>
			<table class="story__table__form">
				<tr>
					<th>제목</th>
					<td><input type="text" name="title" placeholder="※ 스토리에 대한 제목을 입력해주세요."></input></td>
				</tr>
				<tr>
					<th>내용</th>
					<td><textarea id="summernote" name="content"></textarea></td>
				</tr>
				<tr>
					<th>대표 이미지</th>
					<td><input type="file" name="upload"></input></td>
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