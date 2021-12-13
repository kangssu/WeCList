package data.service;

import data.dto.OrderDTO;
import data.mapper.OrderMapper;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

@Service
public class OrderService {

  @Autowired
  OrderMapper mapper;
  public String orderCheckout(OrderDTO orderDTO) {return mapper.orderCheckout(orderDTO); }
}
