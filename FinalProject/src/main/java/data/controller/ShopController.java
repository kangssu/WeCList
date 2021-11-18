package data.controller;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;

@Controller
public class ShopController {

  @GetMapping("/shop/list")
  public String list() {
    return "/shop/shop_list";
  }

  @GetMapping("/shop/view")
  public String view() {
    return "/shop/shop_view";
  }

  @GetMapping("/shop/buy")
  public String buy() {
    return "/shop/shop_buy";
  }

  @GetMapping("/shop/hotlist")
  public String hotlist() {
    return "/shop/shop_hot_list";
  }
  
  @GetMapping("/shop/writeform")
  public String writeform() {
    return "/shop/shop_write_form";
  }
}
