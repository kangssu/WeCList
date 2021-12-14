package data.controller;

import data.dto.OrderDTO;
import data.service.OrderService;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.List;
import java.util.Map;
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
    List<OrderDTO> list = new ArrayList<>();
    Map<String, Object> map = new HashMap<>();
    for(OrderDTO dto : list){
      dto.setOrder_num(orderNum);
      dto.setShop_num(orderDTO.getShop_num());
      dto.setShop_option(orderDTO.getShop_option());
      dto.setShop_qty(orderDTO.getShop_qty());
      dto.setShop_price(orderDTO.getShop_price());

      list.add(dto);
    }
    map.put("list", list);

    service.insertOrderDetails(map);
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
