<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<div class="container"> 
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<c:set var="root" value="<%=request.getContextPath()%>" />
<!--summernote :S -->
<script src="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0-beta/js/bootstrap.min.js"></script>
<script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.11.0/umd/popper.min.js"></script>
  
<link href="http://cdnjs.cloudflare.com/ajax/libs/summernote/0.8.2/summernote.css" rel="stylesheet">
<script src="http://cdnjs.cloudflare.com/ajax/libs/summernote/0.8.2/summernote.js"></script>

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
      
		
   });
</script>
<form action="update" method="post" enctype="multipart/form-data">
	<input type="hidden" name="num" value="${dto.num}">
	<table class="table table-bordered" style="margin:100px 100px; width: 700px;">
		<caption style="caption-side: top;"><b>작가의 글작성</b></caption>
		<tr>
			<th width="120" bgcolor="#ddd">옵 션</th>
			<td>
				<select  style="width: 500px"  name="shopop" class="shop_op_select">
					<option>디저트</option>
					<option>음료</option>
					<option>악세사리</option>
					<option>시계</option>
					<option>의류</option>
				</select>
			
			</td>
		</tr>
		<tr>
			<th width="120" bgcolor="#ddd">제 목</th>
			<td>
				<input type="text" name="title" class="form-control"
				value="${dto.title}"  required="required" autofocus="autofocus">
			
			</td>
		</tr>
		<tr>
			<th width="120" bgcolor="#ddd">가 격</th>
			<td>
				<input type="text" name="shopprice" class="form-control"
				required="required" autofocus="autofocus"
				value="${dto.shopprice}">
			
			</td>
		</tr>
		<tr>
			<th width="120" bgcolor="#ddd">태 그</th>
			<td>
				<input type="text" name="shoptag" class="inline-control"
				value="${dto.shoptag}">
			</td>
		</tr>
		<tr>
			<th width="120" bgcolor="#ddd">1번 가격, 이름</th>
			<td>
				<input type="text" name="suboption1" class="form-control"
				required="required" autofocus="autofocus"
				value="${dto.suboption1}">
				<input type="text" name="subprice1" class="form-control"
				required="required" autofocus="autofocus"
				value="${dto.subprice1}">
			
				
			</td>
		</tr>
		<tr>
			<th width="120" bgcolor="#ddd">2번 가격, 이름</th>
			<td>
			
				<input type="text" name="suboption2" class="form-control"
				value="${dto.suboption2}">
				
				<input type="text" name="subprice2" class="form-control"
				value="${dto.subprice2}">
			</td>
		</tr>
		<tr>
			<th width="120" bgcolor="#ddd">3번 가격, 이름</th>
			<td>
			
				<input type="text" name="suboption3" class="form-control"
				value="${dto.suboption3}">
				
				<input type="text" name="subprice3" class="form-control"
				value="${dto.subprice3}">
			</td>
		</tr>
		<tr>
			<th width="120" bgcolor="#ddd">4번 가격, 이름</th>
			<td>
			
				<input type="text" name="suboption4" class="form-control"
				value="${dto.suboption4}" >
				
				<input type="text" name="subprice4" class="form-control"
				 value="${dto.subprice4}">
			</td>
		</tr>
		<tr>
			<th width="120" bgcolor="#ddd">5번 가격, 이름</th>
			<td>
			
				<input type="text" name="suboption5" class="form-control"
				value="${dto.suboption5}">
				<input type="text" name="subprice5" class="form-control"
				value="${dto.subprice5}">
			</td>
		</tr>
		<tr>
			<th width="120" bgcolor="#ddd" colspan="2">상품 설명</th>
		</tr>
		<tr>
				<td colspan="2">
				<textarea style="width: 700px;height: 200px;"
				class="form-control"
				name = "shopsub" autofocus="autofocus" required="required"
				value="${dto.shopsub}">${dto.shopsub}</textarea>
			</td>
		<tr>
			<th width="120" bgcolor="#ddd" colspan="2">제품 상세 정보</th>
		</tr>
		
		<tr>
			<td colspan="2">
				<textarea style="width: 700px;height: 200px;"
				class="form-control" id="summernote"
				name = "shopcontent" autofocus="autofocus" required="required"
				value="${dto.shopcontent}">${dto.shopcontent}</textarea>
			</td>
		</tr>
		<tr>
			<th width="120" bgcolor="#ddd" colspan="2">배송/교환/환불정보</th>
		</tr>
		<tr>
			<td colspan="2">
				<textarea style="width: 700px;height: 100px;"
				class="form-control"
				name = "shopdelivery" autofocus="autofocus" required="required"
				value="${dto.shopdelivery}">${dto.shopdelivery}</textarea>
			</td>
		</tr>
		
		<tr>
			<th width="120" bgcolor="#ddd">섬네일사진</th>
			<td>
				<input type="file" name="upload1" class="form-control" multiple
				autofocus="autofocus" required="required" 
				value="${dto.upload1}">
			
			</td>
		</tr>
		<tr>
			<th width="120" bgcolor="#ddd">추가 사진</th>
			<td>
				<input type="file" name="upload2" class="form-control" multiple
				value="${dto.upload2}">
			
			</td>
		</tr>
		<tr>
			<th width="120" bgcolor="#ddd">추가 사진 2</th>
			<td>
				<input type="file" name="upload3" class="form-control" multiple
				value="${dto.upload3}">
			
			</td>
		</tr>
		<tr>
			<th width="120" bgcolor="#ddd">추가 사진 3</th>
			<td>
				<input type="file" name="upload4" class="form-control" multiple
				value="${dto.upload4}">
			
			</td>
		</tr>
		<tr>
			<th width="120" bgcolor="#ddd">추가 사진 4</th>
			<td>
				<input type="file" name="upload5" class="form-control" multiple
				value="${dto.upload5}">
			
			</td>
		</tr>
		<tr>
			<td colspan="2" align="center">
				<button type="submit"
				class="btn btn-default" style="width: 100px;"
				>등록</button>
			</td>
			
			
			
		</tr>
		<tr>
		<td class="form_image_size_text" colspan="3">* 이미지는 442*258로 고정됩니다</td>
		</tr>
	</table>
</form>
</div>
