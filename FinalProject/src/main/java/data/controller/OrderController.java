package data.controller;

import data.dto.OrderDTO;
import data.service.OrderService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.PostMapping;

@Controller
public class OrderController {

  @Autowired
  OrderService service;

  @PostMapping("/order/checkout")
  public String orderCheckout(OrderDTO orderDTO) {
    return "redirect:/";
  }
}
