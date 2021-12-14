package data.mapper;


import data.dto.OrderDTO;
import java.util.List;
import java.util.Map;
import org.apache.ibatis.annotations.Mapper;

@Mapper
public interface OrderMapper {
 void insertOrder(OrderDTO orderDTO);
    void insertOrderDetails(Map<String, Object> map);
    void insetOrderDelivery(OrderDTO orderDTO);
    int countOrder(String user_idx);
    List<OrderDTO> listOrder(int order_num);
    List<OrderDTO> listOrderUser(int order_num);
}
