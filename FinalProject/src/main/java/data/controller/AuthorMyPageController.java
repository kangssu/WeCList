package data.controller;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;

@Controller
public class AuthorMyPageController {

  @GetMapping("/mypage/profile")
  public String mypage() {
    return "/author_mypage/author_mypage_profile";
  }
}
