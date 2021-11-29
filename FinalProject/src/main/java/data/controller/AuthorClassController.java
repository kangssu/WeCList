package data.controller;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;

@Controller
public class AuthorClassController {

  @GetMapping("/mypage/class/list")
  public String list() {
    return "/1/author_mypage/m_class_list";
  }

}
