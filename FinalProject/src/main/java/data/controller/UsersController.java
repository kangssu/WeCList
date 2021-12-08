package data.controller;

import java.util.HashMap;
import java.util.List;
import java.util.Map;
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
		return "redirect:join";
	}
	
	// 정보 수정하기 메뉴 눌렀을 때 비밀번호 입력 폼 연결경로
	@GetMapping("/users/mypage/updatepass")
	public String updateMyInfo() {
		return "/1_2/user_mypage/user_updatepassform";
	}
	
	// 비밀번호 입력 폼에서 올바르게 입력했는지 체크
	@PostMapping("/users/updatepass")
	public ModelAndView updatepass(@RequestParam String id,
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
			mview.setViewName("/user_mypage/user_passfail");
			
			return mview;
		}
	}
	
	@RequestMapping(value = "/users/update", method = {RequestMethod.POST, RequestMethod.GET})
	public String update(@ModelAttribute UserDto dto) {	
		mapper.updateUsers(dto);
		
		return "/user_mypage/user_success";
	}

	
	
	@GetMapping("/users/delete")
	/* 컨트롤러를 일반 Controller 로 설정했기 때문에 ResponseBody를 선언해서 json 값을 가져온다 */
	public @ResponseBody HashMap<String, Integer> delete(
			@RequestParam String num, @RequestParam String pass
			) {
			// DB로부터 비번 맞는지 체크
			HashMap<String, String> map = new HashMap<String, String>();
			map.put("num", num);
			map.put("pass", pass);
				
			int check = mapper.getCheckPass(map);
			if(check==1) {
				// 비번이 맞을 경우 삭제
				mapper.deleteMember(num);
			}
			
			HashMap<String, Integer> rmap = new HashMap<String, Integer>();
			rmap.put("check", check); /* memberlist의 ajax 부분에서 check 라는 이름을 설정했기 때문에 */
			
			return rmap;
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
