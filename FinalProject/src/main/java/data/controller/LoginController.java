package data.controller;

import java.util.HashMap;
import java.util.Map;

import javax.servlet.http.HttpSession;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.validation.BindingResult;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;

import data.mapper.UserMapper;

@Controller
public class LoginController {
	
	@Autowired
	UserMapper mapper;
	
//	@GetMapping("/login/main")
//	// Model : 값 저장소역할, 값을 저장하고 출력하는 기능
//	public String login(HttpSession session, Model model) {
//		String id = (String)session.getAttribute("id"); // id와 loginok의 세션값 얻어오기
//		String loginok = (String)session.getAttribute("loginok");
//		
//		if(loginok==null) {
//			return "/login/loginform";
//		} else {
//			// 로그인중일 경우 request에 로그인한 이름 저장하기
//			String irum = mapper.getName(id);
//			model.addAttribute("irum", irum);
//			
//			return "/login/logoutform";
//		}
//	}
	
	
	
	@GetMapping("/login/loginprocess")
	public String loginprocess(
			// login.jsp 파일의 아이디, 패스워드 값 받아오기
			// required = false 는 null값이 들어가도 읽을 수 있음(오류처리X)
			@RequestParam String id,
			@RequestParam String pass1,
			@RequestParam(value="category", required = false) String category,
			HttpSession session) {
		HashMap<String, String> map = new HashMap<String, String>();
		map.put("id", id);
		map.put("pass1", pass1);
		//map.put("category", category);
		
		int check = mapper.login(map); // UserSql에 있는 login함수, 리턴값 0 or 1
		if(check==1) { // 로그인 성공
			session.setAttribute("id", id);
			session.setAttribute("category", category);
			session.setAttribute("loginok", "yes");
			System.out.println("로그인 성공");
			System.out.println(category);
			return "/";
		} else {
			System.out.println("로그인 실패");
			return "/users/login";
		}
	}
	
	@GetMapping("/login/logoutprocess") // logoutform.jsp 파일
	public String logout(HttpSession session) {
		session.removeAttribute("loginok");
		
		return "/";
	}
}
