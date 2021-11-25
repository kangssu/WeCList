<%@ page language="java" contentType="text/html; charset=utf-8"
    pageEncoding="utf-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<c:set var="root" value="<%=request.getContextPath()%>"/>
<script src="//t1.daumcdn.net/mapjsapi/bundle/postcode/prod/postcode.v2.js"></script>
<script type="text/javascript">
/* 이용약관 동의 팝업 */
function showPopup1() {
	const popup = document.querySelector('#popup1');
	 popup.classList.remove('hide');
}
function closePopup1() {
	const popup = document.querySelector('#popup1');
	popup.classList.add('hide');
}

/* 개인정보 취급방침 팝업 */
function showPopup2() {
	const popup = document.querySelector('#popup2');
	 popup.classList.remove('hide');
}
function closePopup2() {
	const popup = document.querySelector('#popup2');
	popup.classList.add('hide');
}

/* 하위 항목 숨기기 */


$(function(){    
	var pw_passed = true; // 유효성검사 확인처리용 변수  
	var pw1;
	var pw2;
    
	// 아이디 확인
	$("#id").blur(function(){
		
		var i = $("#id").val();
		
		if($("#id").val().length == 0) {
			alert("아이디를 입력해주세요");
	        return false;
	    } 
		
		// 아이디 유효성 검사
		var pattern1 = /[a-zA-Z]/;
	    var pattern2 = /[0-9]/;
		
	    if(!pattern1.test(i) || i.length<6 || !pattern1.test(i) && !pattern2.test(i) && i.length<6) {
	    	alert("아이디는 영문 또는 영문+숫자 조합으로 6자리 이상 입력해주세요.");
	    	return false;
	    } else {
	    	alert("아이디 중복확인을 진행해주세요.");
	    }
	});
	
	
	// 아이디 중복확인
	$("#idCheck").click(function(){
		alert("아이디 중복확인");
	});
	
	
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
	
	//약관 전체동의
	$("#agreeAll").click(function() {
		//체크 true
		 if($("#agreeAll").prop("checked")){
			$("#useterms").prop("checked",true);
			$("#personterms").prop("checked",true);
			$("#ageterms").prop("checked",true);
		} else{
			$("#useterms").prop("checked",false);
			$("#personterms").prop("checked",false);
			$("#ageterms").prop("checked",false);
		}
	});
	
	//하위 체크 해제
	$(".opt").click(function() {
		if(!$(this).prop("checked")){
			$("#agreeAll").prop("checked",false);
		}
	});
	
	
});

function check(f) {
	if(f.id.value.length == 0) {
		alert("아이디를 입력해주세요.");
		return false; //action이 호출되지 않음
	}
	if(f.pass1.value != f.pass2.value) {
		alert("비밀번호가 서로 다릅니다");
		f.pass1.value = "";
		f.pass2.value = "";
		return false;//action이 호출되지 않는다
	}
	if(f.useterms.checked == false) {
		alert("이용약관에 동의해주세요.");
		return false;
	}
	if(f.ageterms.checked == false) {
		alert("만 14세 이상만 가입하실 수 있습니다.");
		return false;
	}
	return true;
}
</script>

<!-- Breadcrumb Section Begin -->
<section class="breadcrumb-section" style="background:none; background-color:white; border:1px solid #ff7b27">
	<div class="container">
		<div class="row">
			<div class="col-lg-12 text-center">
				<div class="breadcrumb__text">
					<h2 style="color:#ff7b27">작가 회원가입</h2>
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
			<form action="insert" method="post" name="usersJoinForm" onsubmit="return check(this)">		
				<h4>작가 정보 입력<span class="view_buy_form_1_ex">※ 필수 입력 사항</span></h4>
				<table class="view_buy_form_1">
					<tr class="checkout__input">
						<td><span style="color:red">※</span>아이디</td>
						<td>
							<input type="text" name="id" id="id" placeholder="6자 이상의 영문 혹은 영문과 숫자를 조합" class="checkout__input__add">
							<button type="button" id="idCheck" class="addr-btn_rev" onclick="">중복확인</button><br>
							<p id="id_check">
								<i class="fa fa-hand-o-right" aria-hidden="true" style="font-size:13px; margin-right:5px"></i>
								<span style="font-size:13px; color:#6f6f6f">6자 이상의 영문 또는 영문과 숫자를 조합</span><br>
								<i class="fa fa-hand-o-right" aria-hidden="true" style="font-size:13px; margin-right:5px"></i>
								<span style="font-size:13px; color:#6f6f6f">아이디 중복확인</span>
							</p>
						</td>
					</tr>
					<tr class="checkout__input">
						<td><span style="color:red">※</span>비밀번호</td>
						<td>
							<input type="password" name="pass1" id="pass1" placeholder="비밀번호를 입력해주세요." class="checkout__input__add">
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
							<input type="password" name="pass2" id="pass2" placeholder="비밀번호를 한번 더 입력해주세요." class="checkout__input__add">
							<button type="button" id="passCheck" class="addr-btn_rev" onclick="pw_check()">일치확인</button><br>
							<p id="pw_check2">
								<i class="fa fa-hand-o-right" aria-hidden="true" style="font-size:13px; margin-right:5px"></i>
								<span style="font-size:13px; color:#6f6f6f">동일한 비밀번호를 입력해주세요.</span><br>
							</p>
						</td>
					</tr>
					<tr class="checkout__input">
						<td><span style="color:red">※</span>이름</td>
						<td>
							<input type="text" name="irum" id="irum" placeholder="이름을 입력해주세요." class="checkout__input__add">
						</td>
					</tr>
					<tr class="checkout__input">
						<td><span style="color:red">※</span>이메일</td>
						<td>
							<input type="text" name="email" id="email" placeholder="본인 이메일을 작성해주세요. 예: weclist@weclist.com" class="checkout__input__add">
							<button type="button" id="emailCheck" class="addr-btn_rev" onclick="">중복확인</button>
						</td>
					</tr>
					<tr class="checkout__input">
						<td><span style="color:red">※</span>휴대폰</td>
						<td>
							<input type="text" name="hp" id="hp" placeholder="숫자만 입력해주세요." class="checkout__input__add">
						</td>
					</tr>
					<tr class="checkout__input">
						<td><span style="color:red">※</span>주소</td>
						<td>
							<input type="text" name="addr1" id="addr1" placeholder="택배를 받을 주소를 입력해주세요." class="checkout__input__add">
							<button type="button" name="addrSearch" id="addrSearch" class="addr-btn_rev" onclick="">주소찾기</button>
						</td>
					</tr>
					<tr class="checkout__input">
						<td><span style="color:red">※</span>상세 주소</td>
						<td>
							<input type="text" name="addr2" id="addr2" placeholder="상세 주소를 입력해주세요." class="checkout__input__add">
						</td>
					</tr>
					<tr class="checkout__input">
						<td>프로필 사진</td>
						<td>
							<input type="text" readonly="readonly" id="profilename" placeholder="프로필 사진을 등록해주세요." 
							 class="checkout__input__add" value="">
							<input type="file" name="profileimg" id="profileimg" style="display: none;" 
							 onchange="javascript:document.getElementById('profilename').value=this.value">
							<button type="button" class="addr-btn_rev" onclick="jQuery('#profileimg').click()">사진선택</button>
						</td>
					</tr>
				</table>
				
				<br><br><br>
				<h4>이용약관동의</h4>
				<div class="view_order_ok_check_2">
					<input type="checkbox" name="agreeAll" id="agreeAll"><span class="view_order_ok_check_1_sm" style="font-size:22px">전체 동의합니다.</span><br>
					<span class="view_agree_form">선택항목에 동의하지 않은 경우도 회원가입 및 일반적인 서비스를 이용할 수 있습니다.</span><br>
					<input type="checkbox" class="opt" name="useterms" id="useterms"><span class="view_order_ok_check_1_sm">이용약관 동의</span>
					<span style="color:#6f6f6f">(필수)</span>
					<a onclick="showPopup1();" style="cursor:pointer">	
						<span style="margin-left:20px; color:#ff7b27">약관 보기 <i class="fa fa-angle-right"></i></span>
					</a>
					<br>
					<input type="checkbox" class="opt" name="personterms" id="personterms"><span class="view_order_ok_check_1_sm">개인정보 수집 및 이용 동의</span>
					<span style="color:#6f6f6f">(선택)</span>
					<a onclick="showPopup2();" style="cursor:pointer">	
						<span style="margin-left:20px; color:#ff7b27">약관 보기 <i class="fa fa-angle-right"></i></span>
					</a>
					<br>
					<input type="checkbox" class="opt" name="ageterms" id="ageterms"><span class="view_order_ok_check_1_sm">본인은 만 14세 이상입니다.</span>
					<span style="color:#6f6f6f">(필수)</span>
					<br>
				</div>

				<div class="view_order_btn">
					<button type="submit" class="buy-btn" onclick="">가입하기</button>
				</div>
			</form>
		</div>
	</div>
</section>
<!-- Checkout Section End -->

<!-- 이용약관 동의 -->
<div id="popup1" class="hide">
	<div class="content">
		<p class="popup_info_check">이용약관 동의</p>
		<span class="popup_info_check_2">WeCList 서비스 및 제품(이하 ‘서비스’)을 이용해 주셔서 감사합니다. 본 약관은 다양한 WeCList 서비스의 이용과 관련하여 WeCList 서비스를 제공하는 WeCList 주식회사(이하 ‘WeCList’)와 이를 이용하는 WeCList 서비스 회원(이하 ‘회원’) 또는 비회원과의 관계를 설명하며, 아울러 여러분의 WeCList 서비스 이용에 도움이 될 수 있는 유익한 정보를 포함하고 있습니다.<br><br>
		WeCList 서비스를 이용하시거나 WeCList 서비스 회원으로 가입하실 경우 여러분은 본 약관 및 관련 운영 정책을 확인하거나 동의하게 되므로, 잠시 시간을 내시어 주의 깊게 살펴봐 주시기 바랍니다.<br><br>
		다양한 WeCList 서비스를 즐겨보세요.
WeCList는 www.naver.com을 비롯한 WeCList 도메인의 웹사이트 및 응용프로그램(어플리케이션, 앱)을 통해 정보 검색, 다른 이용자와의 커뮤니케이션, 콘텐츠 제공, 상품 쇼핑 등 여러분의 생활에 편리함을 더할 수 있는 다양한 서비스를 제공하고 있습니다.
여러분은 PC, 휴대폰 등 인터넷 이용이 가능한 각종 단말기를 통해 각양각색의 WeCList 서비스를 자유롭게 이용하실 수 있으며, 개별 서비스들의 구체적인 내용은 각 서비스 상의 안내, 공지사항, WeCList 웹고객센터(이하 ‘고객센터’) 도움말 등에서 쉽게 확인하실 수 있습니다.<br><br>
WeCList는 기본적으로 여러분 모두에게 동일한 내용의 서비스를 제공합니다. 다만, '청소년보호법' 등 관련 법령이나 기타 개별 서비스 제공에서의 특별한 필요에 의해서 연령 또는 일정한 등급을 기준으로 이용자를 구분하여 제공하는 서비스의 내용, 이용 시간, 이용 횟수 등을 다르게 하는 등 일부 이용을 제한하는 경우가 있습니다. 자세한 내용은 역시 각 서비스 상의 안내, 공지사항, 고객센터 도움말 등에서 확인하실 수 있습니다.<br><br>
WeCList 서비스에는 기본적으로 본 약관이 적용됩니다만 WeCList가 다양한 서비스를 제공하는 과정에서 부득이 본 약관 외 별도의 약관, 운영정책 등을 적용하는 경우(예, WeCList페이, V LIVE 등)가 있습니다. 그리고 WeCList 계열사가 제공하는 특정 서비스의 경우에도(예, LINE, SNOW등) 해당 운영 회사가 정한 고유의 약관, 운영정책 등이 적용될 수 있습니다. 이러한 내용은 각각의 해당 서비스 초기 화면에서 확인해 주시기 바랍니다.<br><br>
회원으로 가입하시면 WeCList 서비스를 보다 편리하게 이용할 수 있습니다.
여러분은 본 약관을 읽고 동의하신 후 회원 가입을 신청하실 수 있으며, WeCList는 이에 대한 승낙을 통해 회원 가입 절차를 완료하고 여러분께 WeCList 서비스 이용 계정(이하 ‘계정’)을 부여합니다. 계정이란 회원이 WeCList 서비스에 로그인한 이후 이용하는 각종 서비스 이용 이력을 회원 별로 관리하기 위해 설정한 회원 식별 단위를 말합니다. 회원은 자신의 계정을 통해 좀더 다양한 WeCList 서비스를 보다 편리하게 이용할 수 있습니다. 이와 관련한 상세한 내용은 계정 운영정책 및 고객센터 내 WeCList 회원가입 방법 등에서 확인해 주세요.<br><br>
여러분이 제공한 콘텐츠를 소중히 다룰 것입니다.
WeCList는 여러분이 게재한 게시물이 WeCList 서비스를 통해 다른 이용자들에게 전달되어 우리 모두의 삶을 더욱 풍요롭게 해줄 것을 기대합니다. 게시물은 여러분이 타인 또는 자신이 보게 할 목적으로 WeCList 서비스 상에 게재한 부호, 문자, 음성, 음향, 그림, 사진, 동영상, 링크 등으로 구성된 각종 콘텐츠 자체 또는 파일을 말합니다.<br><br>
WeCList는 여러분의 생각과 감정이 표현된 콘텐츠를 소중히 보호할 것을 약속 드립니다. 여러분이 제작하여 게재한 게시물에 대한 지식재산권 등의 권리는 당연히 여러분에게 있습니다.<br><br>
한편, WeCList 서비스를 통해 여러분이 게재한 게시물을 적법하게 제공하려면 해당 콘텐츠에 대한 저장, 복제, 수정, 공중 송신, 전시, 배포, 2차적 저작물 작성(단, 번역에 한함) 등의 이용 권한(기한과 지역 제한에 정함이 없으며, 별도 대가 지급이 없는 라이선스)이 필요합니다.
게시물 게재로 여러분은 WeCList에게 그러한 권한을 부여하게 되므로, 여러분은 이에 필요한 권리를 보유하고 있어야 합니다.<br><br>
WeCList는 여러분이 부여해 주신 콘텐츠 이용 권한을 저작권법 등 관련 법령에서 정하는 바에 따라 WeCList 서비스 내 노출, 서비스 홍보를 위한 활용, 서비스 운영, 개선 및 새로운 서비스 개발을 위한 연구, 웹 접근성 등 법률상 의무 준수, 외부 사이트에서의 검색, 수집 및 링크 허용을 위해서만 제한적으로 행사할 것입니다.
만약, 그 밖의 목적을 위해 부득이 여러분의 콘텐츠를 이용하고자 할 경우엔 사전에 여러분께 설명을 드리고 동의를 받도록 하겠습니다.<br><br>
또한 여러분이 제공한 소중한 콘텐츠는 WeCList 서비스를 개선하고 새로운 WeCList 서비스를 제공하기 위해 인공지능 분야 기술 등의 연구 개발 목적으로 WeCList 및 WeCList 계열사에서 사용될 수 있습니다. WeCList는 지속적인 연구 개발을 통해 여러분께 좀 더 편리하고 유용한 서비스를 제공해 드릴 수 있도록 최선을 다하겠습니다.<br><br>
WeCList는 여러분이 자신이 제공한 콘텐츠에 대한 WeCList 또는 다른 이용자들의 이용 또는 접근을 보다 쉽게 관리할 수 있도록 다양한 수단을 제공하기 위해 노력하고 있습니다. 여러분은 WeCList 서비스 내에 콘텐츠 삭제, 비공개 등의 관리기능이 제공되는 경우 이를 통해 직접 타인의 이용 또는 접근을 통제할 수 있고, 고객센터를 통해서도 콘텐츠의 삭제, 비공개, 검색결과 제외 등의 조치를 요청할 수 있습니다.
다만, 일부 WeCList 서비스의 경우 삭제, 비공개 등의 처리가 어려울 수 있으며, 이러한 내용은 각 서비스 상의 안내, 공지사항, 고객센터 도움말 등에서 확인해 주시길 부탁 드립니다.<br><br>
여러분의 개인정보를 소중히 보호합니다.
WeCList는 서비스의 원활한 제공을 위하여 회원이 동의한 목적과 범위 내에서만 개인정보를 수집∙이용하며, 개인정보 보호 관련 법령에 따라 안전하게 관리합니다. WeCList가 이용자 및 회원에 대해 관련 개인정보를 안전하게 처리하기 위하여 기울이는 노력이나 기타 상세한 사항은 개인정보 처리방침에서 확인하실 수 있습니다.<br><br>
WeCList는 여러분이 서비스를 이용하기 위해 일정 기간 동안 로그인 혹은 접속한 기록이 없는 경우, 전자메일, 서비스 내 알림 또는 기타 적절한 전자적 수단을 통해 사전에 안내해 드린 후 여러분의 정보를 파기하거나 분리 보관할 수 있으며, 만약 이로 인해 서비스 제공을 위해 필수적인 정보가 부족해질 경우 부득이 관련 서비스 이용계약을 해지할 수 있습니다.<br><br>
타인의 권리를 존중해 주세요.
여러분이 무심코 게재한 게시물로 인해 타인의 저작권이 침해되거나 명예훼손 등 권리 침해가 발생할 수 있습니다. WeCList는 이에 대한 문제 해결을 위해 ‘정보통신망 이용촉진 및 정보보호 등에 관한 법률’ 및 ‘저작권법’ 등을 근거로 권리침해 주장자의 요청에 따른 게시물 게시중단, 원 게시자의 이의신청에 따른 해당 게시물 게시 재개 등을 내용으로 하는 게시중단요청서비스를 운영하고 있습니다. 보다 상세한 내용 및 절차는 고객센터 내 게시중단요청서비스 소개를 참고해 주세요.<br><br>
한편, WeCList 서비스를 통해 타인의 콘텐츠를 이용한다고 하여 여러분이 해당 콘텐츠에 대한 지식재산권을 보유하게 되는 것은 아닙니다. 여러분이 해당 콘텐츠를 자유롭게 이용하기 위해서는 그 이용이 저작권법 등 관련 법률에 따라 허용되는 범위 내에 있거나, 해당 콘텐츠의 지식재산권자로부터 별도의 이용 허락을 받아야 하므로 각별한 주의가 필요합니다.<br><br>
WeCList는 WeCList 서비스의 효율적 이용을 지원하거나 서비스 운영을 개선하기 위해 필요한 경우 사전에 여러분께 안내 드린 후 부득이 포인트의 일부 또는 전부를 조정할 수 있습니다. 그리고 포인트는 WeCList가 정한 기간에 따라 주기적으로 소멸할 수도 있으니 포인트가 부여되는 WeCList 서비스 이용 시 유의해 주시기 바랍니다.<br><br>
WeCList 서비스 이용과 관련하여 몇 가지 주의사항이 있습니다.
WeCList는 여러분이 WeCList 서비스를 자유롭고 편리하게 이용할 수 있도록 최선을 다하고 있습니다. 다만, 여러분이 WeCList 서비스를 보다 안전하게 이용하고 WeCList 서비스에서 여러분과 타인의 권리가 서로 존중되고 보호받으려면 여러분의 도움과 협조가 필요합니다. 여러분의 안전한 서비스 이용과 권리 보호를 위해 부득이 아래와 같은 경우 여러분의 게시물 게재나 WeCList 서비스 이용이 제한될 수 있으므로, 이에 대한 확인 및 준수를 요청 드립니다.<br><br>
회원 가입 시 이름, 생년월일, 휴대전화번호 등의 정보를 허위로 기재해서는 안 됩니다. 회원 계정에 등록된 정보는 항상 정확한 최신 정보가 유지될 수 있도록 관리해 주세요. 자신의 계정을 다른 사람에게 판매, 양도, 대여 또는 담보로 제공하거나 다른 사람에게 그 사용을 허락해서는 안 됩니다. 아울러 자신의 계정이 아닌 타인의 계정을 무단으로 사용해서는 안 됩니다. 이에 관한 상세한 내용은 계정 운영정책을 참고해 주시기 바랍니다.
타인에 대해 직접적이고 명백한 신체적 위협을 가하는 내용의 게시물, 타인의 자해 행위 또는 자살을 부추기거나 권장하는 내용의 게시물, 타인의 신상정보, 사생활 등 비공개 개인정보를 드러내는 내용의 게시물, 타인을 지속적으로 따돌리거나 괴롭히는 내용의 게시물, 성매매를 제안, 알선, 유인 또는 강요하는 내용의 게시물, 공공 안전에 대해 직접적이고 심각한 위협을 가하는 내용의 게시물은 제한될 수 있습니다.
관련 법령상 금지되거나 형사처벌의 대상이 되는 행위를 수행하거나 이를 교사 또는 방조하는 등의 범죄 관련 직접적인 위험이 확인된 게시물, 관련 법령에서 홍보, 광고, 판매 등을 금지하고 있는 물건 또는 서비스를 홍보, 광고, 판매하는 내용의 게시물, 타인의 지식재산권 등을 침해하거나 모욕, 사생활 침해 또는 명예훼손 등 타인의 권리를 침해하는 내용이 확인된 게시물은 제한될 수 있습니다.
자극적이고 노골적인 성행위를 묘사하는 등 타인에게 성적 수치심을 유발시키거나 왜곡된 성 의식 등을 야기할 수 있는 내용의 게시물, 타인에게 잔혹감 또는 혐오감을 일으킬 수 있는 폭력적이고 자극적인 내용의 게시물, 본인 이외의 자를 사칭하거나 허위사실을 주장하는 등 타인을 기만하는 내용의 게시물, 과도한 욕설, 비속어 등을 계속하여 반복적으로 사용하여 심한 혐오감 또는 불쾌감을 일으키는 내용의 게시물은 제한될 수 있습니다.
자동화된 수단을 활용하는 등 WeCList 서비스의 기능을 비정상적으로 이용하여 게재된 게시물, WeCList 각 개별 서비스의 제공 취지와 부합하지 않는 내용의 게시물은 다른 이용자들의 정상적인 WeCList 서비스 이용에 불편을 초래하고 더 나아가 WeCList의 원활한 서비스 제공을 방해하므로 역시 제한될 수 있습니다. 기타 제한되는 게시물에 관한 상세한 내용은 게시물 운영정책 및 각 개별 서비스에서의 약관, 운영정책 등을 참고해 주시기 바랍니다.
WeCList의 사전 허락 없이 자동화된 수단(예: 매크로 프로그램, 로봇(봇), 스파이더, 스크래퍼 등)을 이용하여 WeCList 서비스 회원으로 가입을 시도 또는 가입하거나, WeCList 서비스에 로그인을 시도 또는 로그인하거나, WeCList 서비스 상에 게시물을 게재하거나, WeCList 서비스를 통해 커뮤니케이션하거나(예: 전자메일, 쪽지 등), WeCList 서비스에 게재된 회원의 아이디(ID), 게시물 등을 수집하거나, WeCList 검색 서비스에서 특정 질의어로 검색하거나 혹은 그 검색결과에서 특정 검색결과를 선택(이른바 ‘클릭’)하는 등 이용자(사람)의 실제 이용을 전제로 하는 WeCList 서비스의 제공 취지에 부합하지 않는 방식으로 WeCList 서비스를 이용하거나 이와 같은 WeCList 서비스에 대한 어뷰징(남용) 행위를 막기 위한 WeCList의 기술적 조치를 무력화하려는 일체의 행위(예: IP를 지속적으로 바꿔가며 접속하는 행위, Captcha를 외부 솔루션 등을 통해 우회하거나 무력화 하는 행위 등)를 시도해서는 안 됩니다.
WeCList의 동의 없이 자동화된 수단에 의해 WeCList 서비스 상에 광고가 게재되는 영역 또는 그 밖의 영역에 부호, 문자, 음성, 음향, 그림, 사진, 동영상, 링크 등으로 구성된 각종 콘텐츠 자체 또는 파일을 삽입해서는 안 됩니다. 또한, WeCList 서비스 또는 이에 포함된 소프트웨어를 복사, 수정할 수 없으며, 이를 판매, 양도, 대여 또는 담보로 제공하거나 타인에게 그 이용을 허락해서는 안 됩니다. WeCList 서비스에 포함된 소프트웨어를 역 설계, 소스코드 추출 시도, 복제, 분해, 모방, 기타 변형하는 등의 행위도 금지됩니다(다만, 오픈소스에 해당되는 경우 그 자체 조건에 따릅니다). 그 밖에 바이러스나 기타 악성 코드를 업로드하거나 WeCList 서비스의 원활한 운영을 방해할 목적으로 서비스 기능을 비정상적으로 이용하는 행위 역시 금지됩니다.
WeCList는 본 약관의 범위 내에서 게시물 운영정책, 각 개별 서비스에서의 약관 또는 운영정책, 각 서비스 상의 안내, 공지사항, 고객센터 도움말 등을 두어, 여러분에게 안정적이고 원활한 서비스 이용이 가능하도록 지원하고 있습니다. 각 세부 정책에는 여러분이 참고할 수 있도록 보다 구체적인 유의사항을 포함하고 있으니, 본 약관 본문 및 구성 페이지 상의 링크 등을 통해 이를 확인해 주시기 바랍니다.<br><br>
부득이 서비스 이용을 제한할 경우 합리적인 절차를 준수합니다.
WeCList는 다양한 정보와 의견이 담긴 여러분의 콘텐츠를 소중히 다룰 것을 약속 드립니다만, 여러분이 게재한 게시물이 관련 법령, 본 약관, 게시물 운영정책, 각 개별 서비스에서의 약관, 운영정책 등에 위배되는 경우, 부득이 이를 비공개 또는 삭제 처리하거나 게재를 거부할 수 있습니다. 다만, 이것이 WeCList가 모든 콘텐츠를 검토할 의무가 있다는 것을 의미하지는 않습니다.<br><br>
또한 여러분이 관련 법령, 본 약관, 계정 및 게시물 운영정책, 각 개별 서비스에서의 약관, 운영정책 등을 준수하지 않을 경우, WeCList는 여러분의 관련 행위 내용을 확인할 수 있으며, 그 확인 결과에 따라 WeCList 서비스 이용에 대한 주의를 당부하거나, WeCList 서비스 이용을 일부 또는 전부, 일시 또는 영구히 정지시키는 등 그 이용을 제한할 수 있습니다. 한편, 이러한 이용 제한에도 불구하고 더 이상 WeCList 서비스 이용계약의 온전한 유지를 기대하기 어려운 경우엔 부득이 여러분과의 이용계약을 해지할 수 있습니다.<br><br>
부득이 여러분의 서비스 이용을 제한해야 할 경우 명백한 법령 위반이나 타인의 권리침해로서 긴급한 위험 또는 피해 차단이 요구되는 사안 외에는 위와 같은 단계적 서비스 이용제한 원칙을 준수 하겠습니다. 명백한 법령 위반 등을 이유로 부득이 서비스 이용을 즉시 영구 정지시키는 경우 서비스 이용을 통해 획득한 포인트 및 기타 혜택 등은 모두 소멸되고 이에 대해 별도로 보상하지 않으므로 유의해 주시기 바랍니다. 서비스 이용 제한의 조건, 세부 내용 등은 계정 운영정책 및 각 개별 서비스에서의 운영정책을 참고하시기 바랍니다.<br><br>
WeCList의 잘못은 WeCList가 책임집니다.
WeCList는 여러분이 WeCList 서비스를 이용함에 있어 WeCList의 고의 또는 과실로 인하여 손해를 입게 될 경우 관련 법령에 따라 여러분의 손해를 배상합니다. 다만, 천재지변 또는 이에 준하는 불가항력으로 인하여 WeCList가 서비스를 제공할 수 없거나 이용자의 고의 또는 과실로 인하여 서비스를 이용할 수 없어 발생한 손해에 대해서 WeCList는 책임을 부담하지 않습니다.<br><br>
그리고 WeCList가 손해배상책임을 부담하는 경우에도 통상적으로 예견이 불가능하거나 특별한 사정으로 인한 특별 손해 또는 간접 손해, 기타 징벌적 손해에 대해서는 관련 법령에 특별한 규정이 없는 한 책임을 부담하지 않습니다.<br><br>
한편, WeCList 서비스를 매개로 한 여러분과 다른 회원 간 또는 여러분과 비회원 간의 의견 교환, 거래 등에서 발생한 손해나 여러분이 서비스 상에 게재된 타인의 게시물 등의 콘텐츠를 신뢰함으로써 발생한 손해에 대해서도 WeCList는 특별한 사정이 없는 한 이에 대해 책임을 부담하지 않습니다.<br><br>
언제든지 WeCList 서비스 이용계약을 해지하실 수 있습니다.
WeCList에게는 참 안타까운 일입니다만, 회원은 언제든지 WeCList 서비스 이용계약 해지를 신청하여 회원에서 탈퇴할 수 있으며, 이 경우 WeCList는 관련 법령 등이 정하는 바에 따라 이를 지체 없이 처리하겠습니다.<br><br>
WeCList 서비스 이용계약이 해지되면, 관련 법령 및 개인정보처리방침에 따라 WeCList가 해당 회원의 정보를 보유할 수 있는 경우를 제외하고, 해당 회원 계정에 부속된 게시물 일체를 포함한 회원의 모든 데이터는 소멸됨과 동시에 복구할 수 없게 됩니다. 다만, 이 경우에도 다른 회원이 별도로 담아갔거나 스크랩한 게시물과 공용 게시판에 등록한 댓글 등의 게시물은 삭제되지 않으므로 반드시 해지 신청 이전에 삭제하신 후 탈퇴하시기 바랍니다.<br><br>
서비스 중단 또는 변경 시 꼭 알려드리겠습니다.
WeCList는 연중 무휴, 1일 24시간 안정적으로 서비스를 제공하기 위해 최선을 다하고 있습니다만, 컴퓨터, 서버 등 정보통신설비의 보수점검, 교체 또는 고장, 통신두절 등 운영상 상당한 이유가 있는 경우 부득이 서비스의 전부 또는 일부를 중단할 수 있습니다.<br><br>
한편, WeCList는 서비스 운영 또는 개선을 위해 상당한 필요성이 있는 경우 서비스의 전부 또는 일부를 수정, 변경 또는 종료할 수 있습니다. 무료로 제공되는 서비스의 전부 또는 일부를 수정, 변경 또는 종료하게 된 경우 관련 법령에 특별한 규정이 없는 한 별도의 보상을 하지 않습니다.<br><br>
이 경우 WeCList는 예측 가능한 경우 상당기간 전에 이를 안내하며, 만약 예측 불가능한 경우라면 사후 지체 없이 상세히 설명하고 안내 드리겠습니다. 또한 서비스 중단의 경우에는 여러분 자신의 콘텐츠를 백업할 수 있도록 합리적이고 충분한 기회를 제공하도록 하겠습니다.<br><br>
주요 사항을 잘 안내하고 여러분의 소중한 의견에 귀 기울이겠습니다.
WeCList는 서비스 이용에 필요한 주요사항을 적시에 잘 안내해 드릴 수 있도록 힘쓰겠습니다. 회원에게 통지를 하는 경우 전자메일, 서비스 내 알림 또는 기타 적절한 전자적 수단을 통해 개별적으로 알려 드릴 것이며, 다만 회원 전체에 대한 통지가 필요할 경우엔 7일 이상 www.naver.com을 비롯한 WeCList 도메인의 웹사이트 및 응용프로그램(어플리케이션, 앱) 초기 화면 또는 공지사항 등에 관련 내용을 게시하도록 하겠습니다.<br><br>
WeCList는 여러분의 소중한 의견에 귀 기울이겠습니다. 여러분은 언제든지 고객센터를 통해 서비스 이용과 관련된 의견이나 개선사항을 전달할 수 있으며, WeCList는 합리적 범위 내에서 가능한 그 처리과정 및 결과를 여러분께 전달할 수 있도록 하겠습니다.<br><br>
WeCList는 수시로 본 약관, 계정 및 게시물 운영정책을 개정할 수 있습니다만, 관련 법령을 위배하지 않는 범위 내에서 개정할 것이며, 사전에 그 개정 이유와 적용 일자를 서비스 내에 알리도록 하겠습니다. 또한 여러분에게 불리할 수 있는 중대한 내용의 약관 변경의 경우에는 최소 30일 이전에 해당 서비스 내 공지하고 별도의 전자적 수단(전자메일, 서비스 내 알림 등)을 통해 개별적으로 알릴 것입니다.<br><br>
WeCList는 변경된 약관을 게시한 날로부터 효력이 발생되는 날까지 약관 변경에 대한 여러분의 의견을 기다립니다. 위 기간이 지나도록 여러분의 의견이 WeCList에 접수되지 않으면, 여러분이 변경된 약관에 따라 서비스를 이용하는 데에 동의하는 것으로 간주됩니다. WeCList로서는 매우 안타까운 일이지만, 여러분이 변경된 약관에 동의하지 않는 경우 변경된 약관의 적용을 받는 해당 서비스의 제공이 더 이상 불가능하게 될 수 있습니다.<br><br>
WeCList 서비스에는 기본적으로 본 약관이 적용됩니다만, 부득이 각 개별 서비스의 고유한 특성을 반영하기 위해 본 약관 외 별도의 약관, 운영정책이 추가로 적용될 때가 있습니다. 따라서 별도의 약관, 운영정책에서 그 개별 서비스 제공에 관하여 본 약관, 계정 및 게시물 운영정책과 다르게 정한 경우에는 별도의 약관, 운영정책이 우선하여 적용됩니다. 이러한 내용은 각각의 개별 서비스 초기 화면에서 확인해 주시기 바랍니다.<br><br>
본 약관은 한국어를 정본으로 합니다. 본 약관 또는 WeCList 서비스와 관련된 여러분과 WeCList와의 관계에는 대한민국의 법령이 적용됩니다. 그리고 본 약관 또는 WeCList 서비스와 관련하여 여러분과 WeCList 사이에 분쟁이 발생할 경우, 그 분쟁의 처리는 대한민국 '민사소송법'에서 정한 절차를 따릅니다.
		
		</span>
		<div class="popup_info_btn">
			<button type="button" id="btn_submit_1" onclick="closePopup1()">확인</button>
		</div>
	</div>
</div>

<!-- 개인정보 내용 나오는 팝업! -->
<div id="popup2" class="hide">
	<div class="content">
		<p class="popup_info_check">개인정보 수집 및 이용 동의</p>
		<span class="popup_info_check_2">개인정보보호법에 따라 WeCList에 회원가입 신청하시는 분께 수집하는 개인정보의 항목, 개인정보의 수집 및 이용목적, 개인정보의 보유 및 이용기간, 동의 거부권 및 동의 거부 시 불이익에 관한 사항을 안내 드리오니 자세히 읽은 후 동의하여 주시기 바랍니다.<br><br>
		1. 수집하는 개인정보
이용자는 회원가입을 하지 않아도 정보 검색, 뉴스 보기 등 대부분의 WeCList 서비스를 회원과 동일하게 이용할 수 있습니다. 이용자가 메일, 캘린더, 카페, 블로그 등과 같이 개인화 혹은 회원제 서비스를 이용하기 위해 회원가입을 할 경우, WeCList는 서비스 이용을 위해 필요한 최소한의 개인정보를 수집합니다.<br><br>
		회원가입 시점에 WeCList가 이용자로부터 수집하는 개인정보는 아래와 같습니다.
- 회원 가입 시에 ‘아이디, 비밀번호, 이름, 생년월일, 성별, 휴대전화번호’를 필수항목으로 수집합니다. 만약 이용자가 입력하는 생년월일이 만14세 미만 아동일 경우에는 법정대리인 정보(법정대리인의 이름, 생년월일, 성별, 중복가입확인정보(DI), 휴대전화번호)를 추가로 수집합니다. 그리고 선택항목으로 이메일 주소를 수집합니다.
- 단체아이디로 회원가입 시 단체아이디, 비밀번호, 단체이름, 이메일주소, 휴대전화번호를 필수항목으로 수집합니다. 그리고 단체 대표자명을 선택항목으로 수집합니다.
서비스 이용 과정에서 이용자로부터 수집하는 개인정보는 아래와 같습니다.
- 회원정보 또는 개별 서비스에서 프로필 정보(별명, 프로필 사진)를 설정할 수 있습니다. 회원정보에 별명을 입력하지 않은 경우에는 마스킹 처리된 아이디가 별명으로 자동 입력됩니다.<br><br>
		- WeCList 내의 개별 서비스 이용, 이벤트 응모 및 경품 신청 과정에서 해당 서비스의 이용자에 한해 추가 개인정보 수집이 발생할 수 있습니다. 추가로 개인정보를 수집할 경우에는 해당 개인정보 수집 시점에서 이용자에게 ‘수집하는 개인정보 항목, 개인정보의 수집 및 이용목적, 개인정보의 보관기간’에 대해 안내 드리고 동의를 받습니다.<br><br>
		서비스 이용 과정에서 IP 주소, 쿠키, 서비스 이용 기록, 기기정보, 위치정보가 생성되어 수집될 수 있습니다. 또한 이미지 및 음성을 이용한 검색 서비스 등에서 이미지나 음성이 수집될 수 있습니다.
구체적으로 1) 서비스 이용 과정에서 이용자에 관한 정보를 자동화된 방법으로 생성하여 이를 저장(수집)하거나,
2) 이용자 기기의 고유한 정보를 원래의 값을 확인하지 못 하도록 안전하게 변환하여 수집합니다. 서비스 이용 과정에서 위치정보가 수집될 수 있으며,
WeCList에서 제공하는 위치기반 서비스에 대해서는 'WeCList 위치정보 이용약관'에서 자세하게 규정하고 있습니다.
이와 같이 수집된 정보는 개인정보와의 연계 여부 등에 따라 개인정보에 해당할 수 있고, 개인정보에 해당하지 않을 수도 있습니다.<br><br>
		  2. 수집한 개인정보의 이용
WeCList 및 WeCList 관련 제반 서비스(모바일 웹/앱 포함)의 회원관리, 서비스 개발・제공 및 향상, 안전한 인터넷 이용환경 구축 등 아래의 목적으로만 개인정보를 이용합니다.<br><br>
		  - 회원 가입 의사의 확인, 연령 확인 및 법정대리인 동의 진행, 이용자 및 법정대리인의 본인 확인, 이용자 식별, 회원탈퇴 의사의 확인 등 회원관리를 위하여 개인정보를 이용합니다.
- 콘텐츠 등 기존 서비스 제공(광고 포함)에 더하여, 인구통계학적 분석, 서비스 방문 및 이용기록의 분석, 개인정보 및 관심에 기반한 이용자간 관계의 형성, 지인 및 관심사 등에 기반한 맞춤형 서비스 제공 등 신규 서비스 요소의 발굴 및 기존 서비스 개선 등을 위하여 개인정보를 이용합니다.
- 법령 및 WeCList 이용약관을 위반하는 회원에 대한 이용 제한 조치, 부정 이용 행위를 포함하여 서비스의 원활한 운영에 지장을 주는 행위에 대한 방지 및 제재, 계정도용 및 부정거래 방지, 약관 개정 등의 고지사항 전달, 분쟁조정을 위한 기록 보존, 민원처리 등 이용자 보호 및 서비스 운영을 위하여 개인정보를 이용합니다.
- 유료 서비스 제공에 따르는 본인인증, 구매 및 요금 결제, 상품 및 서비스의 배송을 위하여 개인정보를 이용합니다.
- 이벤트 정보 및 참여기회 제공, 광고성 정보 제공 등 마케팅 및 프로모션 목적으로 개인정보를 이용합니다.
- 서비스 이용기록과 접속 빈도 분석, 서비스 이용에 대한 통계, 서비스 분석 및 통계에 따른 맞춤 서비스 제공 및 광고 게재 등에 개인정보를 이용합니다.
- 보안, 프라이버시, 안전 측면에서 이용자가 안심하고 이용할 수 있는 서비스 이용환경 구축을 위해 개인정보를 이용합니다.<br><br>
3. 개인정보의 보관기간
회사는 원칙적으로 이용자의 개인정보를 회원 탈퇴 시 지체없이 파기하고 있습니다.
단, 이용자에게 개인정보 보관기간에 대해 별도의 동의를 얻은 경우, 또는 법령에서 일정 기간 정보보관 의무를 부과하는 경우에는 해당 기간 동안 개인정보를 안전하게 보관합니다.<br><br>
이용자에게 개인정보 보관기간에 대해 회원가입 시 또는 서비스 가입 시 동의를 얻은 경우는 아래와 같습니다.
- 부정 가입 및 이용 방지
부정 이용자의 가입인증 휴대전화번호 또는 DI (만14세 미만의 경우 법정대리인DI) : 탈퇴일로부터 6개월 보관
탈퇴한 이용자의 휴대전화번호(복호화가 불가능한 일방향 암호화(해시처리)) : 탈퇴일로부터 6개월 보관
- QR코드 복구 요청 대응
QR코드 등록 정보:삭제 시점으로부터6개월 보관
- 스마트플레이스 분쟁 조정 및 고객문의 대응
휴대전화번호:등록/수정/삭제 요청 시로부터 최대1년
- WeCList 플러스 멤버십 서비스 혜택 중복 제공 방지
암호화처리(해시처리)한DI :혜택 제공 종료일로부터6개월 보관
- 지식iN eXpert 재가입 신청 및 부정 이용 방지
ID : 서비스 탈퇴 후 6개월 보관
eXpert 서비스 및 eXpert 센터 가입 등록정보 : 신청일로부터 6개월(등록 거절 시, 거절 의사 표시한 날로부터 30일) 보관
전자상거래 등에서의 소비자 보호에 관한 법률, 전자금융거래법, 통신비밀보호법 등 법령에서 일정기간 정보의 보관을 규정하는 경우는 아래와 같습니다. WeCList는 이 기간 동안 법령의 규정에 따라 개인정보를 보관하며, 본 정보를 다른 목적으로는 절대 이용하지 않습니다.
- 전자상거래 등에서 소비자 보호에 관한 법률
계약 또는 청약철회 등에 관한 기록: 5년 보관
대금결제 및 재화 등의 공급에 관한 기록: 5년 보관
소비자의 불만 또는 분쟁처리에 관한 기록: 3년 보관
- 전자문서 및 전자거래 기본법
공인전자주소를 통한 전자문서 유통에 관한 기록 : 10년 보관
- 통신비밀보호법
로그인 기록: 3개월<br><br>
참고로 WeCList는 ‘개인정보 유효기간제’에 따라 1년간 서비스를 이용하지 않은 회원의 개인정보를 별도로 분리 보관하여 관리하고 있습니다.<br><br>
4. 개인정보 수집 및 이용 동의를 거부할 권리
이용자는 개인정보의 수집 및 이용 동의를 거부할 권리가 있습니다. 회원가입 시 수집하는 최소한의 개인정보, 즉, 필수 항목에 대한 수집 및 이용 동의를 거부하실 경우, 회원가입이 어려울 수 있습니다.
		</span>
		<div class="popup_info_btn">
			<button type="button" id="btn_submit_1" onclick="closePopup2()">확인</button>
		</div>
	</div>
</div>