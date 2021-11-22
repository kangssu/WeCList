<%@ page language="java" contentType="text/html; charset=utf-8"
    pageEncoding="utf-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<c:set var="root" value="<%=request.getContextPath()%>"/>
<script type="text/javascript">
	/* 이미지 여러개 미리보기(디자인 다른 형식!) */
	$(document).ready(function (e){
		//미리보기 이벤트!!!
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
	});
</script>
<!-- 상단 풀 정보 영역 -->
<section class="author-details-top">
	<div class="mypage__top">
		<div class="container">
			<div class="mypage__top__user">
				<div class="row">
					<div class="grade_user">
						<div class="profile_img">
							<img src="/img/pro.jpg">
							<span>제이라운드님</span>
						</div>
						<div class="profile_btn">
							<button type="button">정보수정</button>
							<button type="button">로그아웃</button>
						</div>
					</div>
					<div class="grade_shopbox">
						<span>총 등록한 작품</span>
						<p class="shop_box_text">10개</p>
					</div>
					<div class="grade_shopbox">
						<span>총 등록한 클래스</span>
						<p class="shop_box_text">10건</p>
					</div>
					<div class="grade_shopbox">
						<span>총 주문현황</span>
						<p class="shop_box_text">작품&nbsp;10개</p>
						<p>클래스&nbsp;20건</p>
					</div>
					<div class="grade_shopbox">
						<span>총 결제현황</span>
						<p class="shop_box_text">승인&nbsp;20건</p>
						<p>미승인&nbsp;30건</p>
					</div>
				</div>
			</div>
		</div>
	</div>
</section>
<!-- 좌측 메뉴 -->
<section class="author-details-middle">
	<div class="container">
		<div class="row">
			<div class="mypage__side_menu">
				<h2>마이페이지</h2>
				<div class="mypage__snb_all">
					<ul class="mypage__snb">
						<li><a href="#">작품/클래스 관리</a></li>
						<li><a href="#">주문 관리</a></li>
						<li class="on"><a href="/mypage/profile">프로필 관리</a></li>
						<li><a href="/mypage/story/list">스토리 관리</a></li>
						<li><a href="#">정보 수정하기</a></li>
						<li><a href="#">회원 탈퇴</a></li>
					</ul>
				</div>
			</div>
			<!-- 프로필 입력 및수정폼! -->
			<form action="pinsert" method="post" enctype="multipart/form-data"> <!-- 여기 수정해야함!(임시) -->
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
										<ul id="preview"></ul> <!-- 여기 안에 li로 image가 추가됨 -->
										<div class="preview__inp">
											<label class="input_file_btn" for="uploadFile"><i class="fa fa-plus" aria-hidden="true"></i></label>
											<input type="file" name="uploadFile" id="uploadFile" multiple maxlength="5"/>
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
										<ul id="preview"></ul> <!-- 여기 안에 li로 image가 추가됨 -->
										<div class="preview__inp">
											<label class="input_file_btn" for="uploadFile"><i class="fa fa-plus" aria-hidden="true"></i></label>
											<input type="file" name="uploadFile" id="uploadFile" multiple/>
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
										<ul id="preview"></ul> <!-- 여기 안에 li로 image가 추가됨 -->
										<div class="preview__inp">
											<label class="input_file_btn" for="uploadFile"><i class="fa fa-plus" aria-hidden="true"></i></label>
											<input type="file" name="uploadFile" id="uploadFile" multiple/>
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
		</div>
	</div>
</section>
