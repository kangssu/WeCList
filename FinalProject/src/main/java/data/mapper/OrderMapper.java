package data.mapper;


import data.dto.OrderDTO;
import org.apache.ibatis.annotations.Mapper;

@Mapper
public interface OrderMapper {
public String orderCheckout(OrderDTO orderDTO);
}
