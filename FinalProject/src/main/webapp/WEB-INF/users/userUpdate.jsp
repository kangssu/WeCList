<%@ page language="java" contentType="text/html; charset=utf-8"
    pageEncoding="utf-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<c:set var="root" value="<%=request.getContextPath()%>"/>
<script src="//t1.daumcdn.net/mapjsapi/bundle/postcode/prod/postcode.v2.js"></script>
<script type="text/javascript">
$(function(){    
	var pw_passed = true; // 유효성검사 확인처리용 변수  
	var pw1;
	var pw2;	
	
	// 비밀번호 유효성 검사
	$("#pass1").blur(function(){
		pw_passed = true;
		pw1 = $("#pass1").val(); //비밀번호
		
		if(pw1.length == 0) {
			alert("비밀번호를 입력해주세요.");
	        return false;
	    }
/* 		if(pw1.length < 8) {
			alert("비밀번호는 8자리 이상 입력해주세요.");
			return false;
		} */
		if(pw1.indexOf($("#id").val()) > -1) {
            alert("비밀번호는 ID를 포함할 수 없습니다.");
            return false;
        }
		
		var pattern1 = /[a-zA-Z]/;
	    var pattern2 = /[0-9]/;
	    var pattern3 = /[~!@#$%^&*()?]/;
		
	    if(!pattern1.test(pw1) || !pattern2.test(pw1) || !pattern3.test(pw1) || pw1.length<8) {
	    	alert("비밀번호는 영문+숫자+특수문자 조합으로 8자리 이상 입력해주세요.");
	    	return false;
	    }
	    
	    var SamePass_0 = 0; //동일문자 카운트
	    var SamePass_1 = 0; //연속성(+) 카운드
	    var SamePass_2 = 0; //연속성(-) 카운드

	    for(var i=0; i < pw1.length; i++) {
            var chr_pass_0;
            var chr_pass_1;
            var chr_pass_2;

            if(i >= 2) {
                chr_pass_0 = pw1.charCodeAt(i-2); // 현재 글자 앞 두자리
                chr_pass_1 = pw1.charCodeAt(i-1); // 현재 글자 바로 앞자리
                chr_pass_2 = pw1.charCodeAt(i); // 현재 글자

                 //동일문자 카운트
                if((chr_pass_0 == chr_pass_1) && (chr_pass_1 == chr_pass_2)) {
               		// 현재글자와 앞글자가 같은 경우 - 두번 반복될 경우
               		SamePass_0++; // 동일문자 1
                } else {
                	SamePass_0 = 0; // 동일문자 0 
                }

                //연속성(+) 카운트
                if(chr_pass_0 - chr_pass_1 == 1 && chr_pass_1 - chr_pass_2 == 1) {
               		// 오름차순 연속성: 현재글자와 이전 글자의 차이가 1일때(연속된 글자이면 코드값 1 차이 나니까)
                    SamePass_1++; // 연속성 1
                } else {
                	SamePass_1 = 0; // 연속성 0
                }

                //연속성(-) 카운트
                if(chr_pass_0 - chr_pass_1 == -1 && chr_pass_1 - chr_pass_2 == -1) {
               	// 내림차순 연속성: 현재글자와 이전 글자의 차이가 -1일때(연속된 글자이면 코드값 1 차이 나니까)
                    SamePass_2++; // 연속성 1 
                } else {
                	SamePass_2 = 0; // 연속성 0
                }  

           }     

           if(SamePass_0 > 0) { // 동일문자 카운트 1일 때
              alert("동일문자를 3자 이상 연속 입력할 수 없습니다.");
              pw_passed=false; // 유효성검사 false
           }

           if(SamePass_1 > 0 || SamePass_2 > 0 ) { // 오름차순 또는 내림차순 연속성 0일 때
              alert("영문, 숫자는 3자 이상 연속 입력할 수 없습니다.");
              pw_passed=false; // 유효성검사 false
           } 

           if(!pw_passed) { // 유효성검사 false이면 넘어가지 않음            
                 return false;
                 //break;
           }
	    }
	});
	
	
	// 비밀번호 확인 요청
	$("#pass2").blur(function(){
		if($("#pass2").val().length > 0) {
			alert("비밀번호 확인을 진행해주세요.");	
		}
	});
	
	// 비밀번호 확인
	$("#passCheck").click(function(){

		if($("#pass1").val() != $("#pass2").val()) {
			 alert("비밀번호가 일치하지 않습니다.");
	    	 $("#pass2").val('');
	         $("#pass2").focus();
		} else {
			alert("비밀번호가 일치합니다.");
		}
	});
	
	
	// 핸드폰번호 숫자만 입력, '-' 입력받지 않음
	$("#hp").keyup(function(){
		var h = $("#hp").val();
		var h2;
		if(h.match("-")) {
			//h2 = h.replace("-", "");
			alert("숫자로만 입력해주세요.");
			//h = h2;
	        return false;
	    }
	});
	
	
	// 이메일 유효성 검사
	$("#email").blur(function(){
		var pattern1 = /[a-zA-Z]/;
	    var pattern2 = /[@]/;
	    var pattern3 = /[.]/;
	    var e = $("#email").val();
	    

		if($("#email").val().length == 0) {
			alert("이메일 주소를 입력해주세요.");	
		} 
		
	    if(!pattern1.test(e) || !pattern2.test(e) || !pattern3.test(e) || e.length<8) {
	    	alert("이메일 형식으로 입력해주세요.");
	    	return false;
	    } else {
	    	alert("이메일 중복확인을 진행해주세요.");
	    }
	});
	
	
	// 이메일 중복확인
	$("#emailCheck").click(function(){
		alert("이메일 중복확인");
	});
	
	
	// 주소 입력
	$("#addrSearch").click(function(){
		 new daum.Postcode({
		 	oncomplete: function(data) {
		 		$("#addr1").val(data.address); // 주소 넣기
                $("#addr2").focus(); //상세입력 포커싱
		    }
		 }).open();
	});
	
	
});

function check(f) {

	if(f.pass1.value != f.pass2.value) {
		alert("비밀번호가 서로 다릅니다");
		f.pass1.value = "";
		f.pass2.value = "";
		return false;//action이 호출되지 않는다
	}

	return true;
}
</script>

<!-- Breadcrumb Section Begin -->
<section class="breadcrumb-section" style="background:none; background-color:#ff7b27">
	<div class="container">
		<div class="row">
			<div class="col-lg-12 text-center">
				<div class="breadcrumb__text">
					<h2>회원 정보 수정</h2>
				</div>
			</div>
		</div>
	</div>
</section>
<!-- Breadcrumb Section End -->

<!-- Checkout Section Begin -->
<section class="checkout spad">
	<div class="container">
		<div class="checkout__form2">
			<form action="update" method="post" name="usersJoinForm" onsubmit="return check(this)">	
			<%-- <input type="hidden" name="myid" id="myid" value="${dto.id }">	 --%>
				<h4>회원 정보 입력<span class="view_buy_form_1_ex">※ 필수 입력 사항</span></h4>
				<table class="view_buy_form_1">
					<tr class="checkout__input">
						<td><span style="color:red">※</span>아이디</td>
						<td>
							<input type="hidden" name="category" id="category" value="1">
							<input type="text" name="id" id="id" class="checkout__input__add"
							 value="${dto.id }">${dto.id }
						</td>
					</tr>
					<tr class="checkout__input">
						<td><span style="color:red">※</span>비밀번호</td>
						<td>
							<input type="password" name="pass1" id="pass1" required="required"
							 placeholder="비밀번호를 입력해주세요." class="checkout__input__add">
							<p id="pw_check1">
								<i class="fa fa-hand-o-right" aria-hidden="true" style="font-size:13px; margin-right:5px"></i>
								<span style="font-size:13px; color:#6f6f6f">8자 이상 입력</span><br>
								<i class="fa fa-hand-o-right" aria-hidden="true" style="font-size:13px; margin-right:5px"></i>
								<span style="font-size:13px; color:#6f6f6f">영문+숫자+특수문자(공백 제외) 조합</span><br>
								<i class="fa fa-hand-o-right" aria-hidden="true" style="font-size:13px; margin-right:5px"></i>
								<span style="font-size:13px; color:#6f6f6f">동일한 숫자 3개 이상 연속 사용 불가</span>
							</p>
						</td>
					</tr>
					<tr class="checkout__input">
						<td><span style="color:red">※</span>비밀번호 확인</td>
						<td>
							<input type="password" name="pass2" id="pass2" required="required"
							 placeholder="비밀번호를 한번 더 입력해주세요." class="checkout__input__add">
							<button type="button" id="passCheck" class="addr-btn" onclick="pw_check()">일치확인</button><br>
							<p id="pw_check2">
								<i class="fa fa-hand-o-right" aria-hidden="true" style="font-size:13px; margin-right:5px"></i>
								<span style="font-size:13px; color:#6f6f6f">동일한 비밀번호를 입력해주세요.</span><br>
							</p>
						</td>
					</tr>
					<tr class="checkout__input">
						<td><span style="color:red">※</span>이름</td>
						<td>
							<input type="text" name="irum" id="irum" required="required"
							 placeholder="이름을 입력해주세요." class="checkout__input__add">
						</td>
					</tr>
					<tr class="checkout__input">
						<td><span style="color:red">※</span>이메일</td>
						<td>
							<input type="text" name="email" id="email" required="required"
							 placeholder="본인 이메일을 작성해주세요. 예: weclist@weclist.com" class="checkout__input__add">
							<button type="button" id="emailCheck" class="addr-btn" onclick="">중복확인</button>
						</td>
					</tr>
					<tr class="checkout__input">
						<td><span style="color:red">※</span>휴대폰</td>
						<td>
							<input type="text" name="hp" id="hp" required="required"
							 placeholder="숫자만 입력해주세요." class="checkout__input__add">
						</td>
					</tr>
					<tr class="checkout__input">
						<td><span style="color:red">※</span>주소</td>
						<td>
							<input type="text" name="addr1" id="addr1" required="required"
							 placeholder="택배를 받을 주소를 입력해주세요." class="checkout__input__add">
							<button type="button" name="addrSearch" id="addrSearch" class="addr-btn" onclick="">주소찾기</button>
						</td>
					</tr>
					<tr class="checkout__input">
						<td><span style="color:red">※</span>상세 주소</td>
						<td>
							<input type="text" name="addr2" id="addr2" required="required"
							 placeholder="상세 주소를 입력해주세요." class="checkout__input__add">
						</td>
					</tr>
					<tr class="checkout__input">
						<td>프로필 사진</td>
						<td>
							<input type="text" readonly="readonly" id="profilename" placeholder="프로필 사진을 등록해주세요." 
							 class="checkout__input__add" value="">
							<input type="file" name="profileimg" id="profileimg" style="display: none;" 
							 onchange="javascript:document.getElementById('profilename').value=this.value">
							<button type="button" class="addr-btn" onclick="jQuery('#profileimg').click()">사진선택</button>
						</td>
					</tr>
				</table>
				
				<div class="view_order_btn">
					<button type="submit" class="buy-btn" onclick="">수정하기</button>
				</div>
			</form>
		</div>
	</div>
</section>
<!-- Checkout Section End -->
