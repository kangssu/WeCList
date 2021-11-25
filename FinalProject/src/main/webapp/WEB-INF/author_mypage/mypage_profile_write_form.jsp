<%@ page language="java" contentType="text/html; charset=utf-8"
	pageEncoding="utf-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<c:set var="root" value="<%=request.getContextPath()%>" />
<script type="text/javascript">
	/* 이미지 여러개 미리보기(디자인 다른 형식!) */
	$(document).ready(function (e){
		//미리보기 이벤트 첫번째!!!
		$("#uploadFile").change(function(e){

			//div 내용 비워주기
			$("#preview").empty();
	
			var files = e.target.files;
			var arr =Array.prototype.slice.call(files);
	      
			//업로드 가능 파일인지 체크
			for(var i=0;i<files.length;i++){
				if(!checkExtension(files[i].name,files[i].size)){
					return false;
				}
			}
	      
			//이미지 파일 개수 제한!(3장까지)
			if(files.length>3){
				alert("이미지 파일은 3장까지 업로드 가능합니다!");
				return false;
			}
			
			preview(arr);
		});
		
		//미리보기 삭제하기 위한 이벤트!
		$(document).on("click",".preview-del",function(){
		    $("#preview").empty();
		    $("#uploadFile").val("");
		});
		
		function preview(arr){
			arr.forEach(function(f){
        
		        //div에 이미지 추가
		        var str = "<li class='profile__form__inp'>";
	        
		        //이미지 파일 미리보기
				if(f.type.match("image.*")){
					var reader = new FileReader(); //파일을 읽기 위한 FileReader객체 생성
					reader.onload = function (e) { //파일 읽어들이기를 성공했을때 호출되는 이벤트 핸들러
			            str += "<img src='"+e.target.result+"' title='"+f.name+"' width=100 height=100 />";
			            str += "<button type='button' class='preview-del'><i class='fa fa-times' aria-hidden='true'></i></button>"
			            str += "</li>";
			            $(str).appendTo("#preview");
		          	} 
		          	reader.readAsDataURL(f);
		        }else{
					str += "<img src='/resources/img/fileImg.png' title='"+f.name+"' width=100 height=100 />";
					$(str).appendTo("#preview");
		        }
			});
		}
		
		/////////////////////////////////////////////////
		//미리보기 이벤트 두번째!!!
		$("#uploadFile_2").change(function(e){

			//div 내용 비워주기
			$("#preview_2").empty();
	
			var files = e.target.files;
			var arr =Array.prototype.slice.call(files);
	      
			//업로드 가능 파일인지 체크
			for(var i=0;i<files.length;i++){
				if(!checkExtension(files[i].name,files[i].size)){
					return false;
				}
			}
	      
			//이미지 파일 개수 제한!(3장까지)
			if(files.length>3){
				alert("이미지 파일은 3장까지 업로드 가능합니다!");
				return false;
			}
			
			preview2(arr);
		});
		
		//미리보기 삭제하기 위한 이벤트!
		$(document).on("click",".preview-del_2",function(){
		    $("#preview_2").empty();
		    $("#uploadFile_2").val("");
		});
		
		function preview2(arr){
			arr.forEach(function(f){
        
		        //div에 이미지 추가
		        var str = "<li class='profile__form__inp'>";
	        
		        //이미지 파일 미리보기
				if(f.type.match("image.*")){
					var reader = new FileReader(); //파일을 읽기 위한 FileReader객체 생성
					reader.onload = function (e) { //파일 읽어들이기를 성공했을때 호출되는 이벤트 핸들러
			            str += "<img src='"+e.target.result+"' title='"+f.name+"' width=100 height=100 />";
			            str += "<button type='button' class='preview-del_2'><i class='fa fa-times' aria-hidden='true'></i></button>"
			            str += "</li>";
			            $(str).appendTo("#preview_2");
		          	} 
		          	reader.readAsDataURL(f);
		        }else{
					str += "<img src='/resources/img/fileImg.png' title='"+f.name+"' width=100 height=100 />";
					$(str).appendTo("#preview_2");
		        }
			});
		}
		
		/////////////////////////////////////////////////
		//미리보기 이벤트 세번째!!!
		$("#uploadFile_3").change(function(e){

			//div 내용 비워주기
			$("#preview_3").empty();
	
			var files = e.target.files;
			var arr =Array.prototype.slice.call(files);
	      
			//업로드 가능 파일인지 체크
			for(var i=0;i<files.length;i++){
				if(!checkExtension(files[i].name,files[i].size)){
					return false;
				}
			}
	      
			//이미지 파일 개수 제한!(3장까지)
			if(files.length>3){
				alert("이미지 파일은 3장까지 업로드 가능합니다!");
				return false;
			}
			
			preview3(arr);
		});
		
		//미리보기 삭제하기 위한 이벤트!
		$(document).on("click",".preview-del_3",function(){
		    $("#preview_3").empty();
		    $("#uploadFile_3").val("");
		});
		
		function preview3(arr){
			arr.forEach(function(f){
        
		        //div에 이미지 추가
		        var str = "<li class='profile__form__inp'>";
	        
		        //이미지 파일 미리보기
				if(f.type.match("image.*")){
					var reader = new FileReader(); //파일을 읽기 위한 FileReader객체 생성
					reader.onload = function (e) { //파일 읽어들이기를 성공했을때 호출되는 이벤트 핸들러
			            str += "<img src='"+e.target.result+"' title='"+f.name+"' width=100 height=100 />";
			            str += "<button type='button' class='preview-del_3'><i class='fa fa-times' aria-hidden='true'></i></button>"
			            str += "</li>";
			            $(str).appendTo("#preview_3");
		          	} 
		          	reader.readAsDataURL(f);
		        }else{
					str += "<img src='/resources/img/fileImg.png' title='"+f.name+"' width=100 height=100 />";
					$(str).appendTo("#preview_3");
		        }
			});
		}
    
		/////////////////////////////////////////////////
		//공통사용!!!
		function checkExtension(fileName,fileSize){

			var regex = new RegExp("(.*?)\.(exe|sh|zip|alz)$");
			var maxSize = 20971520; //20MB
      
			if(fileSize >= maxSize){
				alert("파일 사이즈 초과");
				$("input[type='file']").val(""); //파일 초기화
				return false;
			}
	      
			if(regex.test(fileName)){
				alert("업로드 불가능한 파일이 있습니다.");
				$("input[type='file']").val(""); //파일 초기화
				return false;
			}
			return true;
		}
	});
</script>
<!-- 프로필 입력 및수정폼! -->
<form action="/mypage/pinsert" method="post" enctype="multipart/form-data">
	<!-- 여기 수정해야함!(임시) -->
	<div class="mypage__profile">
		<h2>프로필 관리</h2>
		<div class="mypage__profile__form">
			<table class="profile__form__table">
				<tr>
					<th>History</th>
				</tr>
				<tr>
					<td>
						<textarea name="history" required="required"
							placeholder="※ 작품만의 History를 자세히 적어주세요."></textarea>
						<div class="image__preview__all">
							<ul id="preview"></ul>
							<!-- 여기 안에 li로 image가 추가됨 -->
							<div class="preview__inp">
								<label class="input_file_btn" for="uploadFile">
									<i class="fa fa-plus" aria-hidden="true"></i>
								</label> 
								<input type="file" name="upload1" id="uploadFile" multiple maxlength="5" />
							</div>
						</div>
					</td>
				</tr>
				<tr>
					<th>Idea</th>
				</tr>
				<tr>
					<td>
						<textarea name="idea" required="required"
							placeholder="※ 작품만의 Idea를 자세히 적어주세요."></textarea>
						<div class="image__preview__all">
							<ul id="preview_2"></ul>
							<!-- 여기 안에 li로 image가 추가됨 -->
							<div class="preview__inp">
								<label class="input_file_btn" for="uploadFile_2">
									<i class="fa fa-plus" aria-hidden="true"></i>
								</label> 
								<input type="file" name="upload2" id="uploadFile_2" multiple />
							</div>
						</div>
					</td>
				</tr>
				<tr>
					<th>Identity</th>
				</tr>
				<tr>
					<td>
						<textarea name="identity" required="required"
							placeholder="※ 작품만의 Identity를 자세히 적어주세요."></textarea>
						<div class="image__preview__all">
							<ul id="preview_3"></ul>
							<!-- 여기 안에 li로 image가 추가됨 -->
							<div class="preview__inp">
								<label class="input_file_btn" for="uploadFile_3">
									<i class="fa fa-plus" aria-hidden="true"></i>
								</label> 
							<input type="file" name="upload3" id="uploadFile_3" multiple />
							</div>
						</div>
					</td>
				</tr>
			</table>
			<div class="profile_btn_all">
				<button type="submit" class="insert_btn">등록하기</button>
			</div>
		</div>
	</div>
</form>
