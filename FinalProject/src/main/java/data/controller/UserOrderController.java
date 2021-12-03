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
public class UserOrderController {
	
	@Autowired
	UserMapper mapper;
	
	@GetMapping("/mypage/order/list")
	public String login() {
		return "/1_2/user_mypage/user_order_list";
	}
	
	
}
