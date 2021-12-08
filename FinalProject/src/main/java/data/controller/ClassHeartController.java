package data.controller;

import javax.servlet.http.HttpSession;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RestController;
import data.dto.HeartDto;
import data.service.ClassHeartService;

@RestController
public class ClassHeartController {

	@Autowired
	ClassHeartService service;

	@PostMapping("/class/hinsert")
	public void insert(@ModelAttribute HeartDto dto, String num, HttpSession session) {
		// insert
		
		service.insertHeart(dto);
	}

	@PostMapping("/class/hdelete")
	public void delete(String class_heart, String num, HttpSession session) {
		service.deleteHeart(class_heart, num);
	}
}
