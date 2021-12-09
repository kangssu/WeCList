package data.controller;

import java.util.HashMap;
import java.util.List;
import java.util.Map;

import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.servlet.ModelAndView;
import data.dto.UserDto;
import data.mapper.UserMapper;

@Controller
public class UsersController {
	
	@Autowired
	UserMapper mapper;
	
	@GetMapping("/users/login")
	public String login() {
		return "/users/login";
	}
	
	@GetMapping("/users/join")
	public String join() {
		return "/users/join";
	}
	
	@GetMapping("/users/userJoin")
	public String userJoin() {
		return "/users/userJoin";
	}
	
	@GetMapping("/users/authorJoin")
	public String authorJoin() {
		return "/users/authorJoin";
	}
	
	@PostMapping("/users/insert")
	public String usersInsert(@ModelAttribute UserDto udto) {
		mapper.insertUsers(udto);
		return "/users/join_success";
	}
	
	// 정보 수정하기 메뉴 눌렀을 때 비밀번호 입력 폼 연결경로
	@GetMapping("/users/mypage/updatepass")
	public String updateMyInfo(HttpSession session) {
		String nickname = (String)session.getAttribute("nickname");
		String category = (String)session.getAttribute("category");
		
		// 카테고리 세션값 얻어와서 1이면 일반회원, 2면 작가 페이지레이아웃 다르게 보이게
		if(category.equals("2")) {
			return "/1/user_mypage/user_updatepassform";
		} else {
			return "/1_2/user_mypage/user_updatepassform";
		}
	}
	
	// 정보수정 비밀번호 입력 폼에서 올바르게 입력했는지 체크
	@PostMapping("/users/updatepass")
	public ModelAndView updatepass(
			@RequestParam String id,
			@RequestParam String pass1) {
		
		ModelAndView mview = new ModelAndView();
		
		// DB로부터 비번 맞는지 체크
		HashMap<String, String> map = new HashMap<String, String>();
		map.put("id", id);
		map.put("pass1", pass1);
		
		int check = mapper.getCheckPass(map);
		if(check==1) { // 비번이 맞는 경우
			//return "/1_2/user_mypage/user_update";
			// DB로부터 dto 얻기
			UserDto dto = mapper.getUserData(id);
			
			mview.addObject("dto",dto);
			
			mview.setViewName("/1_2/user_mypage/user_update");
			
			return mview;
		} else { // 틀린 경우
			mview.setViewName("/user_mypage/user_updatepassfail");
			
			return mview;
		}
	}
	
	// 정보수정 비밀번호 올바르게 입력 시 정보수정 폼으로 넘어간 뒤 수정하기 누르면 DB로 전송
	@RequestMapping(value = "/users/update", method = {RequestMethod.POST, RequestMethod.GET})
	public String update(@ModelAttribute UserDto dto, HttpSession session) {	
		String nickname = (String)session.getAttribute("nickname");
		
		mapper.updateUsers(dto);
		
		return "/user_mypage/user_success";
	}

	
	// 회원 탈퇴 메뉴 눌렀을 때 비밀번호 입력 폼 연결경로
	@GetMapping("/users/mypage/deletepass")
	public String deleteMyInfo(HttpSession session) {
		String nickname = (String) session.getAttribute("nickname");
		String category = (String)session.getAttribute("category");
		
		// 카테고리 세션값 얻어와서 1이면 일반회원, 2면 작가 페이지레이아웃 다르게 보이게
		if(category.equals("2")) {
			return "/1/user_mypage/user_deletepassform";
		} else {
			return "/1_2/user_mypage/user_deletepassform";
		}
	}
		
	// 회원탈퇴 비밀번호 입력 폼에서 올바르게 입력했는지 체크	
	@RequestMapping(value = "/users/deletepass", method = {RequestMethod.POST, RequestMethod.GET})
	public String delete(@RequestParam String id, @RequestParam String pass1) {
		// DB로부터 비번 맞는지 체크
		HashMap<String, String> map = new HashMap<String, String>();
		map.put("id", id);
		map.put("pass1", pass1);

		int check = mapper.getCheckPass(map);
		if(check==1) {
			// 비번이 맞을 경우 삭제
			mapper.deleteUsers(id);
			
			return "/user_mypage/user_delete";
		} else { // 틀린 경우
			return "/user_mypage/user_deletepassfail";
		}
	}
	
	
	@GetMapping("/users/idcheck")
	@ResponseBody
	public Map<String, Integer> idCheck(@RequestParam String id){
		// ID 체크
        int check = mapper.getIdCheck(id);
        
        Map<String, Integer> map = new HashMap<String, Integer>();
		map.put("check", check); // 0 or 1
        
        return map;
    }
	
	@GetMapping("/users/nickcheck")
	@ResponseBody
	public Map<String, Integer> nickCheck(@RequestParam String nickname){
		// ID 체크
        int nickCheck = mapper.getNickCheck(nickname);
        
        Map<String, Integer> map = new HashMap<String, Integer>();
		map.put("nickCheck", nickCheck); // 0 or 1
        
        return map;
    }
	
	@GetMapping("/users/emailcheck")
	@ResponseBody
	public Map<String, Integer> emailCheck(@RequestParam String email){
		// ID 체크
        int emailCheck = mapper.getEmailCheck(email);
        
        Map<String, Integer> map = new HashMap<String, Integer>();
		map.put("emailCheck", emailCheck); // 0 or 1
        
        return map;
    }
	
}
