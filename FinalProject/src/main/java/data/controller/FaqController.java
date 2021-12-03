package data.controller;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;

@Controller
public class FaqController {


  @GetMapping("/customer/faq")
  public String list() {
    return "/3/customer/faq_list";
  }
}
