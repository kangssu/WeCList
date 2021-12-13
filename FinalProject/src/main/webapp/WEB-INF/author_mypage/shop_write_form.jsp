<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<c:set var="root" value="<%=request.getContextPath()%>" />
<!--summernote :S -->
<script
	src="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0-beta/js/bootstrap.min.js"></script>
<script
	src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.11.0/umd/popper.min.js"></script>

<link
	href="http://cdnjs.cloudflare.com/ajax/libs/summernote/0.8.2/summernote.css"
	rel="stylesheet">
<script
	src="http://cdnjs.cloudflare.com/ajax/libs/summernote/0.8.2/summernote.js"></script>

<script type="text/javascript">
   $(document).ready(function() {

		$('#summernote').summernote({
			placeholder : 'Write contents',
			height : 400, 
			minHeight : null, // set minimum height of editor
			maxHeight : null, // set maximum height of editor
		});
		

		$('#shopde').summernote({
			placeholder : 'Write contents',
			height : 200, 
			minHeight : null, // set minimum height of editor
			maxHeight : null, // set maximum height of editor
		});
      
		//에디터에서 p를 br로 바꾸기 위함!
		$("#summernote").on("summernote.enter", function(we, e) {
    	     $(this).summernote("pasteHTML", "<br><br>");
    	     e.preventDefault();
		});
		});
	</script>
<div class="mypage__story">
	<h2>작품 등록하기</h2>
	<div class="mypage__story__form">

		<form action="insert" method="post" enctype="multipart/form-data">
			<input type="hidden" name="num" value="${dto.num}">
			<input type="hidden" name="myid" value="${sessionScope.id}">
			<input type="text" name="shopheart" value=0>
			<table class="story__table__form">
				<tr>
					<th>옵 션</th>
					<td colspan="3"><select style="width: 500px" name="shopop"
						class="shop_op_select">
							<option>디저트</option>
							<option>음료</option>
							<option>악세사리</option>
							<option>시계</option>
							<option>의류</option>
					</select></td>
				</tr>
				<tr>
					<th>제 목</th>
					<td colspan="3"><input type="text" name="title"
						required="required" autofocus="autofocus"
						placeholder="※ 작품에 대한 제목을 입력해주세요."></td>
				</tr>
				<tr>
					<th>가 격</th>
					<td colspan="3"><input type="text" name="shopprice"
						required="required" autofocus="autofocus"
						placeholder="※ 작품에 대한 가격을 입력해주세요"></td>
				</tr>
				<tr>
					<th>태 그</th>
					<td colspan="3"><input type="text" name="shoptag"
						placeholder="※ 작품에 관련된 태그를 입력해주세요"></td>
				</tr>
				<tr>
					<th>1번 이름과 가격</th>
					<td ><input type="text" name="suboption1"
						required="required" autofocus="autofocus"
						placeholder="※ 1번 제품에 대한 이름."> 
						<input type="text" name="subprice1" required="required" autofocus="autofocus"
						placeholder="※ 1번 제품에 대한 가격."></td>
				</tr>
				<tr>
					<th>2번 이름과 가격</th>
					<td><input type="text" name="suboption2"
						placeholder="※ 2번 제품에 대한 이름."> 
						<input type="text" name="subprice2" placeholder="※ 2번 제품에 대한 가격."></td>
				</tr>
				<tr>
					<th>3번 이름과 가격</th>
					<td><input type="text" name="suboption3"
						placeholder="※ 3번 제품에 대한 이름."> 
						<input type="text" name="subprice3"></td>
				</tr>
				<tr>
					<th>4번 이름과 가격</th>
					<td><input type="text" name="suboption4"
						placeholder="※ 4번 제품에 대한 이름."> 
						<input type="text" name="subprice4" ></td>
				</tr>
				<tr>
					<th>5번 이름과 가격</th>
					<td><input type="text" name="suboption5"
						placeholder="※ 5번 제품에 대한 이름."> 
						<input type="text" name="subprice5"></td>
				</tr>
				<tr>
					<th colspan="3">상품 설명</th>
				</tr>
				<tr>
					<td colspan="3">
					<input type="text" name="shopsub"
						required="required" placeholder="간략한 상품 소개"></input>
					</td>
				</tr>
				<tr>
					<th colspan="3">제품 상세 정보</th>
				</tr>

				<tr>
					<td colspan="3"><textarea class="form-control"
							id="summernote" name="shopcontent" autofocus="autofocus"
							required="required"></textarea></td>
				</tr>
				<tr>
					<th colspan="3">배송/교환/환불정보</th>
				</tr>
				<tr>
					<td colspan="3"><textarea id="shopde" class="form-control"
							style="height: 300px;" name="shopdelivery" autofocus="autofocus"
							required="required">
								</textarea></td>
				</tr>

				<tr>
					<th>섬네일사진</th>
					<td colspan="3"><input type="file" name="upload1"
						class="form-control" multiple autofocus="autofocus"
						required="required"></td>
				</tr>
				<tr>
					<th>추가 사진</th>
					<td colspan="3"><input type="file" name="upload2"
						class="form-control" multiple></td>
				</tr>
				<tr>
					<th>추가 사진 2</th>
					<td colspan="3"><input type="file" name="upload3"
						class="form-control" multiple></td>
				</tr>
				<tr>
					<th>추가 사진 3</th>
					<td colspan="3"><input type="file" name="upload4"
						class="form-control" multiple></td>
				</tr>
				<tr>
					<th>추가 사진 4</th>
					<td colspan="3"><input type="file" name="upload5"
						class="form-control" multiple></td>
				</tr>
				<tr>
					<td colspan="2" align="center">
						<button type="button" class="story_list_btn"
							onclick="location.href='/mypage/shop/list'">목록</button>
						<button type="submit" class="story_insert_btn">등록하기</button>
					</td>

				</tr>
				<tr>
					<td class="form_image_size_text" colspan="3">* 이미지는 442*258로
						고정됩니다</td>
				</tr>
			</table>
		</form>
	</div>
</div>
