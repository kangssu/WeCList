package data.controller;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;

@Controller
public class ClassController {

  @GetMapping("/class/list")
  public String list() {
    return "/2/class/class_list";
  }

  @GetMapping("/class/view")
  public String view() {
    return "/class/class_view";
  }

  @GetMapping("/class/all")
  public String all() {
    return "/class/class_all";
  }
}
