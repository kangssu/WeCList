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
    return "/2/class/class_view";
  }
  
  @GetMapping("/class/popul")
  public String popul() {
    return "/2/class/class_popular";
  }
  
  @GetMapping("/class/news")
  public String news() {
    return "/2/class/class_news";
  }
  
  @GetMapping("/class/addform")
  public String addform() {
    return "/2/class/class_addform";
  }
  
  @GetMapping("/class/view_news")
  public String view_news() {
    return "/2/class/class_view_news";
  }
}
