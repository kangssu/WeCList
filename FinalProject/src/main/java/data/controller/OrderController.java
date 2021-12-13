package data.controller;

import data.dto.OrderDTO;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.PostMapping;

@Controller
public class OrderController {

  @PostMapping("/order/checkout")
  public String orderCheckout(OrderDTO orderDTO) {
    return "redirect:/";
  }
}
