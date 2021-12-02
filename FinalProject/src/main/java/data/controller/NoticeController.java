package data.controller;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;

@Controller
public class NoticeController {

  @GetMapping("/customer/notice")
  public String list() {
    return "/3/customer/notice_list";
  }
}
