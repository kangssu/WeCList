package data.service;

import data.dto.OrderDTO;
import data.mapper.OrderMapper;
import java.util.List;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

@Service
public class OrderService {

  @Autowired
  OrderMapper mapper;

  public void insertOrder(OrderDTO orderDTO) { mapper.insertOrder(orderDTO); }
  public void insertOrderDetails(List<OrderDTO> orderDTO){ mapper.insertOrderDetails(orderDTO);}
  public void insetOrderDelivery(OrderDTO orderDTO){ mapper.insetOrderDelivery(orderDTO);}
  public int countOrder(String user_idx){ return mapper.countOrder(user_idx);}
  public List<OrderDTO> listOrder(int order_num){ return mapper.listOrder(order_num);}
  public List<OrderDTO> listOrderUser(int order_num){ return mapper.listOrderUser(order_num);}

  // orderNum = epochTime + user_idx
  public long createOrderNum(OrderDTO orderDTO){
    Long epochTime = System.currentTimeMillis();
    StringBuilder sb = new StringBuilder(epochTime.toString());
    sb.append(orderDTO.getUser_idx());

    return Long.valueOf(sb.toString());
  }
}
