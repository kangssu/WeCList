package data.controller;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;

@Controller
public class EnquiryController {

  @GetMapping("/customer/enquiry")
  public String list() {
    return "/3/customer/enquiry_list";
  }
}
