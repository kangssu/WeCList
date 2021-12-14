<%@ page language="java" contentType="text/html; charset=utf-8"
	pageEncoding="utf-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<c:set var="root" value="<%=request.getContextPath()%>" />
<!--summernote :S -->
<script
	src="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0-beta/js/bootstrap.min.js"></script>
<script
	src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.11.0/umd/popper.min.js"></script>

<link
	href="//cdnjs.cloudflare.com/ajax/libs/summernote/0.8.2/summernote.css"
	rel="stylesheet">
<script
	src="//cdnjs.cloudflare.com/ajax/libs/summernote/0.8.2/summernote.js"></script>
<!--summernote :E -->
<script type="text/javascript">
   $(document).ready(function() {

		$('#summernote1').summernote({
			placeholder : 'Write contents',
			height : 400,
			minHeight : null, // set minimum height of editor
			maxHeight : null, // set maximum height of editor
		});
		
		$('#summernote2').summernote({
			placeholder : 'Write contents',
			height : 400,
			minHeight : null, // set minimum height of editor
			maxHeight : null, // set maximum height of editor
		});
      
		//에디터에서 p를 br로 바꾸기 위함!
		$("#summernote1").on("summernote.enter", function(we, e) {
    	     $(this).summernote("pasteHTML", "<br><br>");
    	     e.preventDefault();
		});
		
		//에디터에서 p를 br로 바꾸기 위함!
	    $("#summernote2").on("summernote.enter", function(we, e) {
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
	<h2>클래스 등록하기</h2>
	<div class="mypage__story__form">
		<form action="/mypage/class/update" method="post" enctype="multipart/form-data">
			<input type="hidden" name="myid" value="kang" />
			<input type="hidden" name="num" value="${dto.num}">
			<input type="hidden" name="currentPage" value="${currentPage}">
			<table class="story__table__form">
				<tr>
					<th>제목</th>
					<td colspan="3"><input type="text" name="title" value="${dto.title}"></input></td>
				</tr>
				<tr>
					<th>옵 션</th>
					<td colspan="3"><select style="width: 500px"
						class="class_op_select" name="class_op_cate">
							<option>공예</option>
							<option>요리</option>
							<option>미술</option>
							<option>플라워</option>
							<option>뷰티</option>
					</select></td>
				</tr>
				<tr>
					<th>준비물 선택</th>
					<td colspan="3"><select style="width: 500px"
						class="class_op_detail_select" name="class_op_detail">
							<option>기본 준비물 패키지</option>
							<option>올인원 준비물 패키지</option>
					</select></td>
				</tr>
				<tr>
					<th>가 격</th>
					<td colspan="3"><input type="text" name="classprice"
						required="required" autofocus="autofocus"
						value="${dto.classprice}"></td>
				</tr>
				<tr>
					<th>클래스 소개</th>
					<td colspan="3"><textarea id="summernote1" name="classinfo">${dto.classinfo}</textarea></td>
				</tr>
				<tr>
					<th>진행 과정</th>
					<td colspan="3"><textarea id="summernote2" name="class_process">${dto.class_process}</textarea></td>
				</tr>
				<tr>
					<th>사진</th>
					<td colspan="3"><input type="file" name="upload" class="form-control"
						multiple></td>
				</tr>
				<tr>
					<th>사진1</th>
					<td colspan="3"><input type="file" name="upload1" class="form-control"
						multiple></td>
				</tr>
				<tr>
					<th>사진2</th>
					<td colspan="3"><input type="file" name="upload2" class="form-control"
						multiple></td>
				</tr>
				<tr>
					<th>사진3</th>
					<td colspan="3"><input type="file" name="upload3" class="form-control"
						multiple></td>
				</tr>
				<tr>
					<th>사진4</th>
					<td colspan="3"><input type="file" name="upload4" class="form-control"
						multiple></td>
				</tr>
				<tr>
					<th>사진5</th>
					<td colspan="3"><input type="file" name="upload5" class="form-control"
						multiple></td>
				</tr>
				
				
			</table>
			<div class="story_write_form_btn_all">
				<button type="button" class="story_list_btn"
					onclick="location.href='/mypage/class/list'">목록</button>
				<button type="submit" class="story_insert_btn">수정하기</button>
			</div>
		</form>
	</div>
</div>
