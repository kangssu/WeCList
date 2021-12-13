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
	
	//@GetMapping("/login/loginprocess")
	@RequestMapping(value = "/login/loginprocess", method = {RequestMethod.POST, RequestMethod.GET})
	public String loginprocess(
			// login.jsp 파일의 아이디, 패스워드 값 받아오기
			// required = false 는 null값이 들어가도 읽을 수 있음(오류처리X)
			@RequestParam String id,
			@RequestParam String pass1,
			@RequestParam(value="irum", required=false) String irum,
			@RequestParam(value="nickname", required=false) String nickname,
			@RequestParam(value="email", required=false) String email,
			@RequestParam(value="hp", required=false) String hp,
			@RequestParam(value="addr1", required=false) String addr1,
			@RequestParam(value="addr2", required=false) String addr2,
			@RequestParam(value="profileimg", required=false) String profileimg,
			@RequestParam(value="category", required = false) String category,
			HttpSession session, Model model) {
		
		nickname = mapper.getNickName(id);
		//System.out.println(nickname);
		model.addAttribute("nickname", nickname);
		
		category = mapper.getCategory(id);
		System.out.println(category);
		model.addAttribute("category", category);
		
		HashMap<String, String> map = new HashMap<String, String>();
		map.put("id", id);
		map.put("pass1", pass1);
		//map.put("irum", irum);
		//map.put("category", category);
		
		int check = mapper.login(map); // UserSql에 있는 login함수, 리턴값 0 or 1
		if(check==1) { // 로그인 성공
			session.setAttribute("id", id);
			session.setAttribute("irum", irum);
			session.setAttribute("nickname", nickname);
			session.setAttribute("email", email);
			session.setAttribute("hp", hp);
			session.setAttribute("addr1", addr1);
			session.setAttribute("addr2", addr2);
			session.setAttribute("profileimg", profileimg);
			session.setAttribute("category", category);
			session.setAttribute("loginok", "yes");
			
			System.out.println("로그인 성공");
			System.out.println("카테고리 구분: " + category);
			return "/users/login_success";
		} else {
			//System.out.println(check);
			//System.out.println("로그인 실패");
			return "/users/passfail";
		}
	}

	
	@GetMapping("/login/logoutprocess") // logoutform.jsp 파일
	public String logout(HttpSession session) {
		session.removeAttribute("loginok");
//		session.removeAttribute("id");
//		session.removeAttribute("nickname");
		
		return "/";
	}
}
