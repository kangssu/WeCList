package data.controller;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;

@Controller
public class AuthorHomeController {

  @GetMapping("/author/home")
  public String home() {
    return "/author/author_home";
  }
}
