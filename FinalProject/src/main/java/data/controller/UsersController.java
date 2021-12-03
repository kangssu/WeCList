package data.controller;

import java.util.HashMap;

import java.util.Map;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
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
	
//	@GetMapping("/users/update")
//	public ModelAndView updateform(@RequestParam String id) {
//		ModelAndView mview = new ModelAndView();
//		
//		// DB로부터 dto 얻기
//		UserDto dto = mapper.getMemberData(id);
//		
//		mview.addObject("dto",dto);
//		
//		mview.setViewName("/users/update");
//		
//		return mview;
//	}
	
	@GetMapping("/users/update")
	public String usersUpdate(@ModelAttribute UserDto udto) {
		mapper.updateMember(udto);
		return "/users/userUpdate";
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
	
}
