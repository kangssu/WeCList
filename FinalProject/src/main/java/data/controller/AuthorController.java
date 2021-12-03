package data.controller;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;
import data.service.AuthorService;

@Controller
public class AuthorController {

  @Autowired
  AuthorService service;

  @GetMapping("/author/list")
  public String list() {
    return "/author/author_list";
  }

}
