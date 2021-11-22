package data.controller;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PostMapping;
import data.dto.AuthorProfileDto;
import data.service.AuthorProfileService;

@Controller
public class ProfileController {

  @Autowired
  AuthorProfileService service;

  @GetMapping("/mypage/profile")
  public String mypage() {
    return "/author_mypage/author_mypage_profile";
  }

  @PostMapping("/mypage/pinsert")
  public String profileInsert(@ModelAttribute AuthorProfileDto dto) {

    service.insertProfile(dto);
    return "/author_mypage/author_mypage_profile";
  }

}
