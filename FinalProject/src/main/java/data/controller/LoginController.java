package data.controller;

import java.util.HashMap;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;

@Controller
@RequestMapping("/login")
public class LoginController {

	@PostMapping("")
	public @ResponseBody HashMap<String, String> login(@RequestParam String id, @RequestParam String pass) {
		System.out.print("????");
		HashMap<String, String> result = new HashMap<String, String>();
		// todo: checkValidation
		// result.put("responseCode", "0002");
		// todo: idExists
		// result.put("responseCode", "0003");
		// todo: isCorrectPassword
		// result.put("responseCode", "0003");
		
		// todo: createSession
		result.put("responseCode", "0001");
		return result;
	}
	
//	private boolean checkValidation(String id, String pass) {
//			pw_passed = true;
//			
//			if(pass.length == 0) {
//		        return false;
//		    }
//
//			if(pass.indexOf($("#id").val()) > -1) {
//	            return false;
//	        }
//			
//			var pattern1 = /[a-zA-Z]/;
//		    var pattern2 = /[0-9]/;
//		    var pattern3 = /[~!@#$%^&*()?]/;
//			
//		    if(!pattern1.test(pass) || !pattern2.test(pass) || !pattern3.test(pw1) || pw1.length<8) {
//		    	alert("비밀번호는 영문+숫자+특수문자 조합으로 8자리 이상 입력해주세요.");
//		    	return false;
//		    }
//		    
//		    var SamePass_0 = 0; //동일문자 카운트
//		    var SamePass_1 = 0; //연속성(+) 카운드
//		    var SamePass_2 = 0; //연속성(-) 카운드
//
//		    for(var i=0; i < pw1.length; i++) {
//	            var chr_pass_0;
//	            var chr_pass_1;
//	            var chr_pass_2;
//
//	            if(i >= 2) {
//	                chr_pass_0 = pw1.charCodeAt(i-2); // 현재 글자 앞 두자리
//	                chr_pass_1 = pw1.charCodeAt(i-1); // 현재 글자 바로 앞자리
//	                chr_pass_2 = pw1.charCodeAt(i); // 현재 글자
//
//	                 //동일문자 카운트
//	                if((chr_pass_0 == chr_pass_1) && (chr_pass_1 == chr_pass_2)) {
//	               		// 현재글자와 앞글자가 같은 경우 - 두번 반복될 경우
//	               		SamePass_0++; // 동일문자 1
//	                } else {
//	                	SamePass_0 = 0; // 동일문자 0 
//	                }
//
//	                //연속성(+) 카운트
//	                if(chr_pass_0 - chr_pass_1 == 1 && chr_pass_1 - chr_pass_2 == 1) {
//	               		// 오름차순 연속성: 현재글자와 이전 글자의 차이가 1일때(연속된 글자이면 코드값 1 차이 나니까)
//	                    SamePass_1++; // 연속성 1
//	                } else {
//	                	SamePass_1 = 0; // 연속성 0
//	                }
//
//	                //연속성(-) 카운트
//	                if(chr_pass_0 - chr_pass_1 == -1 && chr_pass_1 - chr_pass_2 == -1) {
//	               	// 내림차순 연속성: 현재글자와 이전 글자의 차이가 -1일때(연속된 글자이면 코드값 1 차이 나니까)
//	                    SamePass_2++; // 연속성 1 
//	                } else {
//	                	SamePass_2 = 0; // 연속성 0
//	                }  
//
//	           }     
//
//	           if(SamePass_0 > 0) { // 동일문자 카운트 1일 때
//	              alert("동일문자를 3자 이상 연속 입력할 수 없습니다.");
//	              pw_passed=false; // 유효성검사 false
//	           }
//
//	           if(SamePass_1 > 0 || SamePass_2 > 0 ) { // 오름차순 또는 내림차순 연속성 0일 때
//	              alert("영문, 숫자는 3자 이상 연속 입력할 수 없습니다.");
//	              pw_passed=false; // 유효성검사 false
//	           } 
//
//	           if(!pw_passed) { // 유효성검사 false이면 넘어가지 않음            
//	                 return false;
//	                 //break;
//	           }
//		    }
//	}
}
