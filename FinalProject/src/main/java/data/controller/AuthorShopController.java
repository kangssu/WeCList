package data.controller;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;

@Controller
public class AuthorShopController {

  @GetMapping("/mypage/shop/list")
  public String list() {
    return "/1/author_mypage/m_shop_list";
  }
}
