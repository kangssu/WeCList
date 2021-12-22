package data.controller;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;

@Controller
public class SearchController {

  @GetMapping("/search/list")
  public String list() {
    return "/search/shop_search_list";
  }

  @GetMapping("/search/clist")
  public String clist() {
    return "/search/class_search_list";
  }
}
