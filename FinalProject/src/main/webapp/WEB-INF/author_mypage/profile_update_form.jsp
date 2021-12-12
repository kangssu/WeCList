<%@ page language="java" contentType="text/html; charset=utf-8"
	pageEncoding="utf-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<c:set var="root" value="<%=request.getContextPath()%>" />
<script type="text/javascript">
	// 이미지 정보들을 담을 배열
	var sel_files = [];

	$(document).ready(function() {
		$("#uploadFile_1").on("change", handleImgFileSelect1);
		$("#uploadFile_2").on("change", handleImgFileSelect2);
		$("#uploadFile_3").on("change", handleImgFileSelect3);
	});

	function fileUploadAction1() {
		console.log("fileUploadAction1");
			$("#uploadFile_1").trigger('click');
	}
	
	function fileUploadAction2() {
		console.log("fileUploadAction2");
		$("#uploadFile_2").trigger('click');
	}
	
	function fileUploadAction3() {
		console.log("fileUploadAction3");
		$("#uploadFile_3").trigger('click');
	}

	//첫번째 버튼 클릭시!
	function handleImgFileSelect1(e) {

		// 정보들을 초기화
		sel_files = [];
		$(".imgs_wrap_1").empty();
		

		var files = e.target.files;
		var filesArr = Array.prototype.slice.call(files);
		
		//이미지 파일 개수 제한!(3장까지)
		if(files.length>3){
			alert("이미지 파일은 3장까지 업로드 가능합니다!");
			return false;
		}

		var index = 0;
		filesArr.forEach(function(f) {
			if (!f.type.match("image.*")) {
				alert("확장자는 이미지 확장자만 가능합니다.");
				return;
			}

		sel_files.push(f);

		var reader = new FileReader();
		reader.onload = function(e) {
			var html = "<li class='profile__form__inp'>";
			html += "<a href=\"javascript:void(0);\" onclick=\"deleteImageAction("
					+ index + ")\" id=\"img_id_" + index + "\">";
			html += "<img src=\"" + e.target.result + "\" data-file='"+f.name+"' class='selProductFile' title='Click to remove'>";
			html += "<button type='button' class='preview-del_3' ><i class='fa fa-times' aria-hidden='true'></i></button>";
			html += "</a></li>";
			$(".imgs_wrap_1").append(html);
			index++;
		}
					
		reader.readAsDataURL(f);

		});
	}
	
	//두번째 여러 이미지 버튼 클릭시!
	function handleImgFileSelect2(e) {

		// 정보들을 초기화
		sel_files = [];
		$(".imgs_wrap_2").empty();

		var files = e.target.files;
		var filesArr = Array.prototype.slice.call(files);
		
		//이미지 파일 개수 제한!(3장까지)
		if(files.length>3){
			alert("이미지 파일은 3장까지 업로드 가능합니다!");
			return false;
		}

		var index = 0;
		filesArr.forEach(function(f) {
			if (!f.type.match("image.*")) {
				alert("확장자는 이미지 확장자만 가능합니다.");
				return;
			}

		sel_files.push(f);
		
		var reader = new FileReader();
		reader.onload = function(e) {
			var html = "<li class='profile__form__inp'>";
			html += "<a href=\"javascript:void(0);\" onclick=\"deleteImageAction("
					+ index + ")\" id=\"img_id_" + index + "\">";
			html += "<img src=\"" + e.target.result + "\" data-file='"+f.name+"' class='selProductFile' title='Click to remove'>";
			html += "<button type='button' class='preview-del_3' ><i class='fa fa-times' aria-hidden='true'></i></button>";
			html += "</a></li>";
			$(".imgs_wrap_2").append(html);
			index++;
		}
					
		reader.readAsDataURL(f);

		});
	}
	
	//세번째 여러 이미지 버튼 클릭시!
	function handleImgFileSelect3(e) {

		// 정보들을 초기화
		sel_files = [];
		$(".imgs_wrap_3").empty();

		var files = e.target.files;
		var filesArr = Array.prototype.slice.call(files);
		
		//이미지 파일 개수 제한!(3장까지)
		if(files.length>3){
			alert("이미지 파일은 3장까지 업로드 가능합니다!");
			return false;
		}

		var index = 0;
		filesArr.forEach(function(f) {
			if (!f.type.match("image.*")) {
				alert("확장자는 이미지 확장자만 가능합니다.");
				return;
			}

		sel_files.push(f);

		var reader = new FileReader();
		reader.onload = function(e) {
			var html = "<li class='profile__form__inp'>";
			html += "<a href=\"javascript:void(0);\" onclick=\"deleteImageAction("
					+ index + ")\" id=\"img_id_" + index + "\">";
			html += "<img src=\"" + e.target.result + "\" data-file='"+f.name+"' class='selProductFile' title='Click to remove'>";
			html += "<button type='button' class='preview-del_3'><i class='fa fa-times' aria-hidden='true'></i></button>";
			html += "</a></li>";
			$(".imgs_wrap_3").append(html);
			index++;
		}
					
		reader.readAsDataURL(f);

		});
	}

	function deleteImageAction(index) {
		console.log("index : " + index);
		console.log("sel length : " + sel_files.length);

		sel_files.splice(index, 1);

		var img_id = "#img_id_" + index;
		$(img_id).remove();
	}
</script>
<!-- 프로필 입력 및수정폼! -->
<form action="/mypage/pupdate" method="post" enctype="multipart/form-data">
	<input type="hidden" name="myid" value="angel"/>
	<!-- 여기 수정해야함!(임시) -->
	<div class="mypage__profile">
		<h2>프로필 관리</h2>
		<div class="mypage__profile__form">
			<table class="profile__form__table">
				<tr>
					<th>간략소개</th>
				</tr>
				<tr>
					<td>
						<textarea name="concise" required="required"
							placeholder="※ 작가님의 소개를 간략하게 자세히 적어주세요.">${dto.concise}</textarea>
					</td>
				</tr>
				<tr>
					<th>History<span>※이미지 최대 3장까지 업로드 가능합니다! (이미지 사이즈:295*195 꼭 지켜주세요!)</span></th>
				</tr>
				<tr>
					<td>
						<textarea name="history" required="required">${dto.history}</textarea>
						<div class="image__preview__all">
							<div>
								<ul class="imgs_wrap_1"></ul>
							</div>
							<div class="input_wrap">
								<a href="javascript:" onclick="fileUploadAction1();" 
								class="input_file_btn" for="uploadFile_1">
									<i class="fa fa-plus" aria-hidden="true"></i>
								</a>
								<input type="file" name="upload1" id="uploadFile_1" multiple/>
        					</div>
   					 	</div>
					</td>
				</tr>
				<tr>
					<th>Idea<span>※이미지 최대 3장까지 업로드 가능합니다! (이미지 사이즈:295*195 꼭 지켜주세요!)</span></th>
				</tr>
				<tr>
					<td>
						<textarea name="idea" required="required">${dto.idea}</textarea>
						<div class="image__preview__all">
							<div>
								<ul class="imgs_wrap_2"></ul>
							</div>
							<div class="input_wrap">
								<a href="javascript:" onclick="fileUploadAction2();" 
								class="input_file_btn" for="uploadFile_2">
									<i class="fa fa-plus" aria-hidden="true"></i>
								</a>
								<input type="file" name="upload2" id="uploadFile_2" multiple/>
        					</div>
   					 	</div>
					</td>
				</tr>
				<tr>
					<th>Identity<span>※이미지 최대 3장까지 업로드 가능합니다! (이미지 사이즈:295*195 꼭 지켜주세요!)</span></th>
				</tr>
				<tr>
					<td>
						<textarea name="identity" required="required">${dto.identity}</textarea>
						<div class="image__preview__all">
							<div>
								<ul class="imgs_wrap_3"></ul>
							</div>
							<div class="input_wrap">
								<a href="javascript:" onclick="fileUploadAction3();" 
								class="input_file_btn" for="uploadFile_3">
									<i class="fa fa-plus" aria-hidden="true"></i>
								</a>
								<input type="file" name="upload3" id="uploadFile_3" multiple/>
        					</div>
   					 	</div>
					</td>
				</tr>
			</table>
			<div class="profile_btn_all">
				<button type="button" onclick="location.href='/mypage/profile'"
				class="list_btn">목록</button>
				<button type="submit" class="insert_btn">수정하기</button>
			</div>
		</div>
	</div>
</form>
