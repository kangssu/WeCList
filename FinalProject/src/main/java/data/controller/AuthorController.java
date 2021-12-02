package data.controller;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;

@Controller
public class AuthorController {

  @GetMapping("/author/list")
  public String list() {
    return "/author/author_list";
  }
}
