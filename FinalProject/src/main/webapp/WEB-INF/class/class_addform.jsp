<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<div class="container"> 
<form action="insert" method="post" enctype="multipart/form-data">
	<input type="hidden" name="num" value="${dto.num}">
	<table class="table table-bordered" style="margin:100px 100px; width: 700px;">
		<caption style="caption-side: top;"><b>작가의 Class 추가</b></caption>
		<tr>
			<th width="120" bgcolor="#ddd">옵 션</th>
			<td name="class_op">
				<select  style="width: 500px" class="class_op_select">
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
				<input type="text" name="subject" class="form-control"
				required="required" autofocus="autofocus">
			</td>
		</tr>
		<tr>
			<th width="120" bgcolor="#ddd">가 격</th>
			<td>
				<input type="text" name="class_price" class="form-control"
				required="required" autofocus="autofocus">
			
			</td>
		</tr>
		<tr>
			<th width="120" bgcolor="#ddd">준비물 선택</th>
			<td name="class_op">
				<select  style="width: 500px" class="class_op_detail_select">
					<option>기본 준비물 패키지</option>
					<option>올인원 준비물 패키지</option>
				</select>
			
			</td>
		</tr>
		<tr>
			<th width="120" bgcolor="#ddd" colspan="2">Class 소개</th>
		</tr>
		<tr>
			<td colspan="2">
				<textarea style="width: 700px;height: 200px;"
				class="form-control"
				name = "class_content" required="required"></textarea>
			</td>
		</tr>
		<tr>
			<th width="120" bgcolor="#ddd" colspan="2">진행 과정</th>
		</tr>

		<tr>
			<td colspan="2">
				<textarea style="width: 700px;height: 200px;"
				class="form-control"
				name = "class_process" required="required"></textarea>
			</td>
		</tr>
		<tr>
			<th width="120" bgcolor="#ddd">사진</th>
			<td>
				<input type="file" name="upload" class="form-control" multiple>
			
			</td>
		</tr>
		<tr>
			<td colspan="2" align="center">
				<button type="submit"
				class="btn btn-default" style="width: 100px;"
				>등록</button>
			</td>
		</tr>
	</table>
</form>
</div>


