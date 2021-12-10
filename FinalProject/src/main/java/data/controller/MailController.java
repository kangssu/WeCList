package data.controller;

import java.io.File;
import java.io.IOException;
import java.text.SimpleDateFormat;
import java.util.ArrayList;
import java.util.Date;
import java.util.Random;

import javax.servlet.http.HttpSession;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.mail.SimpleMailMessage;
import org.springframework.mail.javamail.JavaMailSender;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.multipart.MultipartFile;
import org.springframework.web.servlet.ModelAndView;

import com.google.gson.Gson;

import data.dto.UserDto;
import data.mapper.UserMapper;
import data.service.UserProfileService;

@Controller
public class MailController {
  
  @Autowired
  UserProfileService service;
  
  @Autowired
  private JavaMailSender javaMailSender;
  
  @Autowired
  UserMapper mapper;

  // 인증메일 보내기
  @RequestMapping(value="/users/CheckMail", method = {RequestMethod.POST})
	@ResponseBody
	public String SendMail(String mail) {

		Random random = new Random();
		String key = "";

		SimpleMailMessage message = new SimpleMailMessage();
		message.setTo(mail); // 스크립트에서 보낸 메일을 받을 사용자 이메일 주소
		// 입력 키를 위한 코드
		for (int i = 0; i < 3; i++) {
			int index = random.nextInt(25) + 65; // A~Z까지 랜덤 알파벳 생성
			key += (char) index;
		}
		int numIndex = random.nextInt(8999) + 1000; // 4자리 정수를 생성
		key += numIndex;
		message.setSubject("인증번호 입력을 위한 메일 전송");
		message.setText("인증 번호 : " + key);
		javaMailSender.send(message);
		Gson gson = new Gson();
		
		return gson.toJson(key);
	}
  
  // 아이디 찾기용 메일 보내기
  @RequestMapping(value="/users/idMail", method = {RequestMethod.POST})
	public String idMail(@RequestParam String email) {
	  
	  int emailcheck = mapper.getEmailCheck(email); // 등록된 메일인지 아닌지 체크
	  
	  if(emailcheck==1) {
		  String searchId = mapper.getEmailId(email);
		  
		  SimpleMailMessage message = new SimpleMailMessage();
		  message.setTo(email); // 스크립트에서 보낸 메일을 받을 사용자 이메일 주소
		  message.setSubject("WE C LIST >> 회원님의 아이디를 알려드립니다.");
		  message.setText("아이디 : " + searchId);
		  javaMailSender.send(message);
		  
		  return "/users/search_id_passsuccess";
	  } else {
		  return "/users/search_id_passfail";
	  }
	}
  
  
  //비밀번호 찾기용 메일 보내기
  @RequestMapping(value="/users/passMail", method = {RequestMethod.POST})
	public String passMail(@RequestParam String id, @RequestParam String email,
			@ModelAttribute UserDto dto) {

	 // 임시 비밀번호 만든 뒤 해당 아이디에 대한 비밀번호 DB값 변경하기
	  Random random = new Random();
	  String tempPass = "";
	  
	  int idcheck = mapper.getIdCheck(id); // 등록된 아이디인지 아닌지 체크
	  int emailcheck = mapper.getEmailCheck(email); // 등록된 메일인지 아닌지 체크
	  System.out.println(idcheck + " , " + emailcheck);

	  if(emailcheck + idcheck == 2) {
		  // 임시 비밀번호 만들기
		  for (int i = 0; i < 3; i++) {
			  int index = random.nextInt(25) + 65; // A~Z까지 랜덤 알파벳 생성
			  tempPass += (char) index;
		  }
		  int numIndex = random.nextInt(100000) + 1000; 
		  tempPass += numIndex;
		  
		  // tempPass값으로 기존 비밀번호 변경
		  dto.setPass1(tempPass);
		  mapper.updatePass(dto);
		  
		  SimpleMailMessage message = new SimpleMailMessage();
		  message.setTo(email); // 스크립트에서 보낸 메일을 받을 사용자 이메일 주소
		  message.setSubject("WE C LIST >> " + id + "회원님의 임시 비밀번호를 알려드립니다.");
		  message.setText("임시 비밀번호 : " + tempPass + "\n임시 비밀번호를 이용해 로그인 한 뒤, 비밀번호를 바꿔주세요.");
		  javaMailSender.send(message);

		  return "/users/search_pass_passsuccess";
	  } else {
		  return "/users/search_pass_passfail";
	  }
  	}					

}
