package data.controller;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;

@Controller
public class SearchController {

  @GetMapping("/search/shop")
  public String slist() {
    return "/search/shop_search";
  }
}
