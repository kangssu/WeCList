package data.controller;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;

@Controller
public class MainController {

  @GetMapping("/")
  public String home() {
    return "/inc/main";
  }

  @GetMapping("/class")
  public String home2() {
    return "/2/inc/class";
  }
}
