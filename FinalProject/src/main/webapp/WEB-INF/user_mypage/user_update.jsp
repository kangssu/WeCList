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
	
	// 닉네임 확인요청
	$("#nickname").blur(function(){
		var nickname = $("#nickname").val();
		
		$.ajax({
            type:"get",
            dataType:"json",
            data:{"nickname":nickname},
            url:"/users/nickcheck",
            success:function(data){
               if(data.nickCheck!=0){
            	  $("#nick-compare-text").html(": <font color='red'>중복된 닉네임입니다.</font>");
                  return false;
               }else{
            	  $("#nick-compare-text").html(": <font color='green'>사용 가능한 닉네임입니다.</font>");
               }
            }
         });    
	});
	
	
	// 비밀번호 유효성 검사
	$("#pass1").blur(function(){
		pw_passed = true;
		pw1 = $("#pass1").val(); //비밀번호
		
		if(pw1.length == 0) {
			alert("비밀번호를 입력해주세요.");
	        return false;
	    }

		if(pw1.indexOf($("#id").val()) > -1) {
			$("#pass-ck1-text").html(": <font color='red'>포함</font>");
            return false;
        } else {
        	$("#pass-ck1-text").html(": <font color='green'>미포함</font>");
        }
		
		var pattern1 = /[a-zA-Z]/;
	    var pattern2 = /[0-9]/;
	    var pattern3 = /[~!@#$%^&*()?]/;
		
	    if(!pattern1.test(pw1) || !pattern2.test(pw1) || !pattern3.test(pw1) || pw1.length<8) {
	    	$("#pass-ck2-text").html(": <font color='red'>X</font>");
	    	return false;
	    } else {
        	$("#pass-ck2-text").html(": <font color='green'>O</font>");
        }
	    
	    var SamePass_0 = 0; //동일문자 카운트

	    for(var i=0; i < pw1.length; i++) {
            var chr_pass_0;
            var chr_pass_1;
            var chr_pass_2;

            if(i >= 1) {
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
           }     

           if(SamePass_0 > 0) { // 동일문자 카운트 1일 때
        	  $("#pass-ck3-text").html(": <font color='red'>O</font>");
              pw_passed=false; // 유효성검사 false
           } else {
           	  $("#pass-ck3-text").html(": <font color='green'>X</font>");
           }

           if(!pw_passed) { // 유효성검사 false이면 넘어가지 않음            
                 return false;
                 //break;
           }
	    }
	});
	
	
	// 비밀번호 확인 요청
	$("#pass2").blur(function(){
		if($("#pass1").val() != $("#pass2").val()) {
			$("#pass-compare-text").html(": <font color='red'>X</font>");
			return false;
		} else {
			$("#pass-compare-text").html(": <font color='green'>O</font>");
		}
	});
	
	
	
	// 핸드폰번호 숫자만 입력, '-' 입력받지 않음
	$("#hp").blur(function(){
		var hp_pattern =  /^\d{3}\d{3,4}\d{4}$/;
		// /^01([0|1|6|7|8|9]?)?([0-9]{3,4})?([0-9]{4})$/;
		var h = $("#hp").val();

		if(!hp_pattern.test(h)) {
			$("#hp-ck-text").html(": <font color='red'>X</font>");
	        return false;
	    } else {
	    	$("#hp-ck-text").html(": <font color='green'>O</font>");
	    }
	});
	
	
	// 이메일 유효성 검사
	$("#email").blur(function(){
	    var pattern1 = /^[0-9a-zA-Z]([-_\.]?[0-9a-zA-Z])*@[0-9a-zA-Z]([-_\.]?[0-9a-zA-Z])*\.[a-zA-Z]{2,3}$/i;
	    var e = $("#email").val();

	    if(!pattern1.test(e) || e.length==0) {
	    	$("#email-ck-text").html(": <font color='red'>X</font>");
	    	return false;
	    } else {
	    	$("#email-ck-text").html(": <font color='green'>O</font>");
	    }
	    
	    $.ajax({
            type:"get",
            dataType:"json",
            data:{"email":e},
            url:"/users/emailcheck",
            success:function(data){
               if(data.emailCheck!=0){
            	  $("#email-compare-text").html(": <font color='red'>중복된 이메일입니다.</font>");
            	  return false;
               }else{
            	  $("#email-compare-text").html(": <font color='green'>사용 가능한 이메일입니다.</font>");
               }
            }
         });
	});

	
	// 인증메일 전송 버튼
	$("#sendMail").click(function() {
		var mail = $("#email").val(); //사용자의 이메일 입력값.
		
		$.ajax({
			type : 'post',
			dataType :'json',
			url : '/users/CheckMail',
			data : {"mail":mail},
			success:function(data){
				console.log(email);
				key = data;
				alert("입력하신 메일로 인증번호가 전송되었습니다."); 
			}
		});
		
		isCertification=true; //추후 인증 여부를 알기위한 값
		$("#compare").on("propertychange change keyup paste input", function() {
			if ($("#compare").val() == key) {   //인증 키 값을 비교를 위해 텍스트인풋과 벨류를 비교
				$("#i-compare-text").html(": <font color='green'>일치</font>");
				isCertification = true;  //인증 성공여부 check
			} else {
				$("#i-compare-text").html(": <font color='red'>불일치</font>");
				isCertification = false; //인증 실패
			}
		});
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
	if(isCertification==false){
		alert("메일 인증이 완료되지 않았습니다.");
		return false;
	}
	return true;
}
</script>


<!-- Checkout Section Begin -->
<section class="checkout spad">
	<div class="container">
		<div class="checkout__form2">
			<form action="/users/update" method="post" onsubmit="return check(this)" enctype="multipart/form-data">	
				<h4>회원 정보 수정<span class="view_buy_form_1_ex">※ 필수 입력 사항</span></h4>
				<table class="view_buy_form_1">
					<tr class="checkout__input">
						<td><span style="color:red">※</span>아이디</td>
						<td>
							<input type="hidden" name="category" id="category" value="1">
							<input type="text" name="id" id="id" class="checkout__input__add"
							 value="${sessionScope.id }" readonly="readonly" >
						</td>
					</tr>
					<tr class="checkout__input">
						<td><span style="color:red">※</span>비밀번호</td>
						<td>
							<input type="password" name="pass1" id="pass1" required="required"
							 placeholder="비밀번호를 입력해주세요." class="checkout__input__add" required="required">
							<p id="pw_check1">
								<i class="fa fa-hand-o-right" aria-hidden="true" style="font-size:13px; margin-right:5px"></i>
								<span style="font-size:13px; color:#6f6f6f">비밀번호에 아이디 포함 여부</span>
								<span style="font-size:13px; color:#6f6f6f" id="pass-ck1-text"></span><br>
								<i class="fa fa-hand-o-right" aria-hidden="true" style="font-size:13px; margin-right:5px"></i>
								<span style="font-size:13px; color:#6f6f6f">영문+숫자+특수문자(공백 제외) 조합으로 8자 이상 입력</span>
								<span style="font-size:13px; color:#6f6f6f" id="pass-ck2-text"></span><br>
								<i class="fa fa-hand-o-right" aria-hidden="true" style="font-size:13px; margin-right:5px"></i>
								<span style="font-size:13px; color:#6f6f6f">동일한 숫자 3번 연속입력(불가능) 여부</span>
								<span style="font-size:13px; color:#6f6f6f" id="pass-ck3-text"></span>
							</p>
						</td>
					</tr>
					<tr class="checkout__input">
						<td><span style="color:red">※</span>비밀번호 확인</td>
						<td>
							<input type="password" name="pass2" id="pass2" required="required"
							 placeholder="비밀번호를 한번 더 입력해주세요." class="checkout__input__add">
							<p id="pw_check2">
								<i class="fa fa-hand-o-right" aria-hidden="true" style="font-size:13px; margin-right:5px"></i>
								<span style="font-size:13px; color:#6f6f6f">비밀번호 일치 여부</span>
								<span style="font-size:13px; color:#6f6f6f" id="pass-compare-text"></span>
							</p>
						</td>
					</tr>
					<tr class="checkout__input">
						<td><span style="color:red">※</span>이름</td>
						<td>
							<input type="text" name="irum" id="irum" required="required"
							 placeholder="이름을 입력해주세요." class="checkout__input__add"
							 value="${dto.irum}">
						</td>
					</tr>
					<tr class="checkout__input">
						<td><span style="color:red">※</span>닉네임</td>
						<td>
							<input type="text" name="nickname" id="nickname" placeholder="사용할 닉네임을 입력해주세요." 
							 class="checkout__input__add" required="required"
							 value="${dto.nickname }">
							<p id="nick_check">
								<i class="fa fa-hand-o-right" aria-hidden="true" style="font-size:13px; margin-right:5px"></i>
								<span style="font-size:13px; color:#6f6f6f">닉네임 중복 여부 </span>
								<span style="font-size:13px; color:#6f6f6f" id="nick-compare-text"></span>
							</p>
						</td>
					</tr>
					<tr class="checkout__input">
						<td><span style="color:red">※</span>이메일</td>
						<td>
							<input type="text" name="email" id="email" required="required"
							 placeholder="본인 이메일을 작성해주세요. 예: weclist@weclist.com" 
							 class="checkout__input__add" value="${dto.email }">
							<p id="email_check">
								<i class="fa fa-hand-o-right" aria-hidden="true" style="font-size:13px; margin-right:5px"></i>
								<span style="font-size:13px; color:#6f6f6f">이메일 형식 여부 </span>
								<span style="font-size:13px; color:#6f6f6f" id="email-ck-text"></span><br>
								<i class="fa fa-hand-o-right" aria-hidden="true" style="font-size:13px; margin-right:5px"></i>
								<span style="font-size:13px; color:#6f6f6f">이메일 중복 여부 </span>
								<span style="font-size:13px; color:#6f6f6f" id="email-compare-text"></span>
							</p>
						</td>
					</tr>
					<tr class="checkout__input">
						<td><span style="color:red">※</span>이메일 인증</td>
						<td>
							<input type="text" class="txtfriends2" id="compare" placeholder="인증메일전송 버튼을 누르시고 전송된 인증번호를 입력해주세요.">
							<button type="button" class="addr-btn" id="sendMail" style="font-size: 15px; margin:10px">인증메일전송</button><br>
							<p id="email_compare">
								<i class="fa fa-hand-o-right" aria-hidden="true" style="font-size:13px; margin-right:5px"></i>
								<span style="font-size:13px; color:#6f6f6f">인증문구 일치 여부</span>
								<span style="font-size:13px; color:#6f6f6f" id="i-compare-text"></span>
							</p>
						</td>
					</tr>
					<tr class="checkout__input">
						<td><span style="color:red">※</span>휴대폰</td>
						<td>
							<input type="text" name="hp" id="hp" required="required"
							 placeholder="본인 휴대폰 번호를 작성해주세요. 예: 01012345678" class="checkout__input__add"
							 value="${dto.hp }">
							<p id="hp_check">
								<i class="fa fa-hand-o-right" aria-hidden="true" style="font-size:13px; margin-right:5px"></i>
								<span style="font-size:13px; color:#6f6f6f">숫자로만 휴대폰번호 10자리 또는 11자리 입력 </span>
								<span style="font-size:13px; color:#6f6f6f" id="hp-ck-text"></span><br>
							</p>
						</td>
					</tr>
					<tr class="checkout__input">
						<td><span style="color:red">※</span>주소</td>
						<td>
							<input type="text" name="addr1" id="addr1" required="required"
							 placeholder="택배를 받을 주소를 입력해주세요." class="checkout__input__add"
							 value="${dto.addr1 }">
							<button type="button" name="addrSearch" id="addrSearch" class="addr-btn" onclick="">주소찾기</button>
						</td>
					</tr>
					<tr class="checkout__input">
						<td><span style="color:red">※</span>상세 주소</td>
						<td>
							<input type="text" name="addr2" id="addr2" required="required"
							 placeholder="상세 주소를 입력해주세요." class="checkout__input__add"
							 value="${dto.addr2 }">
						</td>
					</tr>
					<tr class="checkout__input">
						<td>프로필 사진</td>
						<td>
							<input type="text" readonly="readonly" id="profilename" placeholder="프로필 사진을 등록해주세요." 
							 class="checkout__input__add">
							<input type="file" name="file" id="profileimg" style="display: none;" 
							 onchange="javascript:document.getElementById('profilename').value=this.value">
							<button type="button" class="addr-btn" onclick="jQuery('#profileimg').click()">사진선택</button>
						</td>
					</tr>
				<%-- </c:forEach> --%>
				</table>			
				<div class="view_order_btn">
					<button type="submit" class="buy-btn" onclick="">수정하기</button>
				</div>
			</form>
		</div>
	</div>
</section>
<!-- Checkout Section End -->
