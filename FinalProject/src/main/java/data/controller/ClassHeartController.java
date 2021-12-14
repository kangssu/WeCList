package data.controller;

import javax.servlet.http.HttpSession;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.RestController;

import data.dto.HeartDto;
import data.service.ClassHeartService;

@RestController
public class ClassHeartController {

	@Autowired
	ClassHeartService service;

	@PostMapping("/class/hinsert")
	public void insert(@ModelAttribute HeartDto dto,
	        @RequestParam String class_heart,
	        @RequestParam(required=false) int num ,HttpSession session) {
		// insert
		String idx = dto.getIdx();
		int like_cnt = dto.getLike_cnt();

		like_cnt = service.getMaxLikeCnt(num)+1;

		dto.setLike_cnt(like_cnt);
		
		service.updateHeart(num);
		service.insertHeart(dto);
	}

	@PostMapping("/class/hdelete")
	public void delete(String class_heart, @RequestParam(required=false) int num, HttpSession session) {
		service.downdateHeart(num);
		service.deleteHeart(class_heart, num);
	}

}
