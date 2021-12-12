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

import data.dto.AuthorProfileDto;
import data.dto.UserDto;
import data.service.AuthorProfileService;
import data.service.UserProfileService;

@Controller
public class MailController {
  
  @Autowired
  UserProfileService service;
  
  @Autowired
  private JavaMailSender javaMailSender;

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
  
  // 아이디 찾기용 메일 보내기(수정필요)
  @RequestMapping(value="/users/idMail", method = {RequestMethod.POST})
	@ResponseBody
	public String idMail(String mail) {

	  // DB에서 해당 이메일과 연결된 아이디 값 찾는 sql 작성한 뒤 매퍼에 추가
	  // 해당 메소드 실행... 변수에 담아서 메일로 보내주기
		String key = "";

		SimpleMailMessage message = new SimpleMailMessage();
		message.setTo(mail); // 스크립트에서 보낸 메일을 받을 사용자 이메일 주소
		message.setSubject("WE C LIST >> ??회원님의 아이디를 알려드립니다.");
		message.setText("아이디 : " + key);
		javaMailSender.send(message);
		Gson gson = new Gson();
		
		return gson.toJson(key);
	}
  
  
  //비밀번호 찾기용 메일 보내기(수정필요)
 @RequestMapping(value="/users/passMail", method = {RequestMethod.POST})
	@ResponseBody
	public String passMail(String mail) {

	 // 임시 비밀번호 만든 뒤 해당 아이디에 대한 비밀번호 DB값 변경 필요
	 
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
		message.setSubject("WE C LIST >> ??회원님의 임시 비밀번호를 알려드립니다.");
		message.setText("임시 비밀번호 : " + key);
		javaMailSender.send(message);
		Gson gson = new Gson();
		
		return gson.toJson(key);
	}					

}
