package data.controller;

import data.dto.OrderDTO;
import data.service.OrderService;
import java.util.ArrayList;
import java.util.List;
import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.servlet.ModelAndView;

@Controller
public class OrderController {

  private final Logger LOGGER = LoggerFactory.getLogger(OrderController.class);

  @Autowired
  OrderService service;

  @PostMapping("/order/checkout")
  public String Checkout(@ModelAttribute OrderDTO orderDTO) {
    Long orderNum = service.createOrderNum(orderDTO);
    orderDTO.setOrder_num(orderNum);

    // orders 테이블
    service.insertOrder(orderDTO);
    LOGGER.info("POST: /checkout:insertOrder");

    // order_details 테이블
    List<OrderDTO> orderDTOList = new ArrayList<>();
    service.insertOrderDetails(orderDTOList);
    LOGGER.info("POST: /checkout:insertOrderDetails");

    // order_delivery 테이블
    service.insetOrderDelivery(orderDTO);
    LOGGER.info("POST: /checkout:insetOrderDelivery");

    return "redirect:/order/result";
  }

  @GetMapping("/order/list")
  public List<OrderDTO> list(int order_num) {
    return service.listOrderUser(order_num);
  }

  @GetMapping("/order/result")
  public ModelAndView result(){
    ModelAndView mview = new ModelAndView();
    mview.setViewName("/shop/shop_receipt");
    return mview;
  }
}
