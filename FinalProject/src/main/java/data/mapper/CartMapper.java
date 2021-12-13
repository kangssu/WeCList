package data.mapper;

import data.dto.CartDTO;
import java.util.HashMap;
import java.util.List;
import org.apache.ibatis.annotations.Mapper;

@Mapper
public interface CartMapper {
    void insertCart(CartDTO cartDTO);
    List<CartDTO> listCart(String userId);
    void deleteCart(HashMap<String, Object> map);
    void deleteAllCart(String userId);
}
