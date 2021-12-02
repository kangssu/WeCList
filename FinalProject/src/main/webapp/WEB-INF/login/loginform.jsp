<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
<div style="margin-lift: 130px;">
	<form action="loginprocess" method="post" class="form-inline">
		<table class="table table-bordered" style="width: 300px;">
			<caption><b>세션 로그인</b></caption>
			<tr>
				<td colspan="2" align="center">
					<input type="checkbox" name="cbsave"
					 ${sessionScope.saveok==null?"":"checked" }>아이디 저장
				</td>
			</tr>
			<tr>
				<th width="100" bgcolor="#fcc">아이디</th>
				<td>
					<input type="text" name="id" class="form-control"
					 autofocus="autofocus" required="required"
					 style="width: 120px;" value="${sessionScope.saveok==null?"":sessionScope.myid }">
					 <!-- 아이디저장 체크안하면(null) 아이디 값 "", 체크하면 로그인했던 아이디 출력 -->
				</td>
			</tr>
			<tr>
				<th width="100" bgcolor="#fcc">비밀번호</th>
				<td>
					<input type="password" name="pass" class="form-control"
					 required="required" style="width: 120px;">
				</td>
			</tr>
			<tr>
				<td colspan="2" align="center">
					<button type="submit" class="btn btn-success"
					 style="width: 100px;" onclick="login/logoutform.jsp">로그인</button>
				</td>
			</tr>
		</table>
	</form>
</div>
</body>
</html>