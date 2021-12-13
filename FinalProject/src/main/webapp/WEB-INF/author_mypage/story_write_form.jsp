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
      
		//에디터에서 p를 br로 바꾸기 위함!
		$("#summernote").on("summernote.enter", function(we, e) {
    	     $(this).summernote("pasteHTML", "<br><br>");
    	     e.preventDefault();
		});
      
		//이미지 한개 미리보기!
		function readURL(input) {
			if (input.files && input.files[0]) {
			var reader = new FileReader();
    	   
			reader.onload = function (e) {
				$('#image_section').attr('src', e.target.result);  
			}
    	   
			reader.readAsDataURL(input.files[0]);
			}
		}
    	  
		$("#imgInput").change(function(){
    	    readURL(this);
    	 });
   });
</script>
<!-- 스토리 리스트 -->
<div class="mypage__story">
	<h2>스토리 등록하기</h2>
	<div class="mypage__story__form">
		<form action="/mypage/sinsert" method="post" enctype="multipart/form-data">
			<input type="hidden" name="myid" value="${sessionScope.id}"/>
			<table class="story__table__form">
				<tr>
					<th>제목</th>
					<td colspan="3"><input type="text" name="title" placeholder="※ 스토리에 대한 제목을 입력해주세요."></input></td>
				</tr>
				<tr>
					<th>내용</th>
					<td colspan="3"><textarea id="summernote" name="content"></textarea></td>
				</tr>
				<tr>
					<th>
						썸네일<br>
						<span class="form_image_size_text">※ 이미지 사이즈:442*258</span>
					</th>
					<td><input class="table_input_width" type="file" id="imgInput" name="upload"></input></td>
					<th>썸네일 미리보기</th>
					<td class="table_width_fix"><img id="image_section" src="/img/noimg.jpg"/></td>
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
