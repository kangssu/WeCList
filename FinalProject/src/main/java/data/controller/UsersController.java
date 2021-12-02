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
		// 이메일 형식으로 넣어주기
		mapper.insertUsers(udto);
		return "redirect:join";
	}


}
