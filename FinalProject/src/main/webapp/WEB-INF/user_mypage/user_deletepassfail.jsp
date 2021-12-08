<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<script type="text/javascript">
	alert("비밀번호 오류입니다.");
	location.href="/users/mypage/deletepass?id=${sessionScope.id}";
	//history.back();
</script>
