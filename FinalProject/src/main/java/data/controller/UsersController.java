package data.controller;

import java.util.HashMap;
import java.util.Map;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;

import data.dto.UsersJoinDto;
import data.mapper.UsersJoinMapper;

@Controller
public class UsersController {
	
	@Autowired
	UsersJoinMapper mapper;
	
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
	public String usersInsert(@ModelAttribute UsersJoinDto jdto) {
		// 이메일 형식으로 넣어주기
		mapper.insertUsers(jdto);
		return "redirect:join";
	}
	
	@GetMapping("/users/idcheck")
	public @ResponseBody Map<String, Integer> idCheckProcess(@RequestParam String id) {
		// id 체크
		int check = mapper.getIdCheck(id);
		
		Map<String, Integer> map = new HashMap<String, Integer>();
		map.put("check", check); // 0 or 1
		
		return map;
	}


}
