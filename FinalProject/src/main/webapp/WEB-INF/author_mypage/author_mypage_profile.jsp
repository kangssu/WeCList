<%@ page language="java" contentType="text/html; charset=utf-8"
    pageEncoding="utf-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<c:set var="root" value="<%=request.getContextPath()%>"/>
<script type="text/javascript">
	/* 이미지 폼 새로운 형식으로! */
	$(function() {
		$("#upload_img").change(function(e){

			//div 내용 비워주기
			//$("#img_wrap").empty();

			var files = e.target.files;
			var arr =Array.prototype.slice.call(files);

			preview(arr);
		});

		function preview(arr){
			arr.forEach(function(f){
				var str = '<div style="display: inline-flex; padding: 10px;"><li>';
				str += '<span>'+fileName+'</span><br>';
		        
		        //이미지 파일 미리보기
				if(f.type.match('image.*')){
					var reader = new FileReader(); //파일을 읽기 위한 FileReader객체 생성
					reader.onload = function (e) { //파일 읽어들이기를 성공했을때 호출되는 이벤트 핸들러
			            str += '<img src="'+e.target.result+'" title="'+f.name+'" width=100 height=100 />';
			            str += '</li></div>';
			            $(str).appendTo('#img_wrap');
					} 
					reader.readAsDataURL(f);
		        }else{
					str += '<img src="/resources/img/fileImg.png" title="'+f.name+'" width=100 height=100 />';
					$(str).appendTo('#img_wrap');
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
						<li class="on"><a href="#">프로필 관리</a></li>
						<li><a href="#">스토리 관리</a></li>
						<li><a href="#">정보 수정하기</a></li>
						<li><a href="#">회원 탈퇴</a></li>
					</ul>
				</div>
			</div>
			<!-- 프로필 입력 및수정폼! -->
			<form action="insert" method="post" enctype="multipart/form-data"> <!-- 여기 수정해야함!(임시) -->
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
									<div class="img_wrap">
									</div>
									<label class="input_file_btn" for="upload_img" id="test"><i class="fa fa-plus" aria-hidden="true"></i></label>
									<input type="file" id="upload_img" multiple="multiple"></input>
								</td>
							</tr>
							<tr>
								<th>Idea</th>
							</tr>
							<tr>
								<td>
									<textarea name="idea" required="required"
									placeholder="※ 작품만의 Idea를 자세히 적어주세요."></textarea>
									<label class="input_file_btn" for="upload_img"><i class="fa fa-plus" aria-hidden="true"></i></label>
									<input type="file" id="upload_img" multiple="multiple"></input>
								</td>
							</tr>
							<tr>
								<th>Identity</th>
							</tr>
							<tr>
								<td>
									<textarea name="identity" required="required"
									placeholder="※ 작품만의 Identity를 자세히 적어주세요."></textarea>
									<label class="input_file_btn" for="upload_img"><i class="fa fa-plus" aria-hidden="true"></i></label>
									<input type="file" id="upload_img" multiple="multiple"></input>
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
