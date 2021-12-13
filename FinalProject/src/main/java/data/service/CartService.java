package data.service;

import data.dto.CartDTO;
import data.mapper.CartMapper;
import java.util.HashMap;
import java.util.List;
import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

@Service
public class CartService {

    @Autowired
    CartMapper mapper;

    private final Logger LOGGER = LoggerFactory.getLogger(CartService.class);
    // 카트에 넣기
  public  void insertCart(CartDTO cartDTO) {
      LOGGER.info("service-insertCart");
        mapper.insertCart(cartDTO);
    }

    // 카트 리스트 출력
   public List<CartDTO> listCart(String userId) {
       LOGGER.info("service-listCart");
        return mapper.listCart(userId);
    }

    // 카트 하나만 삭제
   public void deleteCart(String user_id, int shop_num, String shop_option) {
       LOGGER.info("service-deleteCart");
     HashMap<String, Object> map = new HashMap<>();
     map.put("user_id",user_id);
     map.put("shop_num",shop_num);
     map.put("shop_option",shop_option);
        mapper.deleteCart(map);
    }

    // 카트 모두 삭제
    public void deleteAllCart(String userId) {
        LOGGER.info("service-deleteAllCart");
        mapper.deleteAllCart(userId);
    }
}
