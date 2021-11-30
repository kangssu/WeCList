package data.service;

import data.dto.CartDTO;
import data.mapper.CartMapper;
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
   public List<CartDTO> listCart(int userIdx) {
       LOGGER.info("service-listCart");
        return mapper.listCart(userIdx);
    }

    // 카트 하나만 삭제
   public void deleteCart(CartDTO cartDTO) {
       LOGGER.info("service-deleteCart");
        mapper.deleteCart(cartDTO);
    }

    // 카트 모두 삭제
    public void deleteAllCart(int userIdx) {
        LOGGER.info("service-deleteAllCart");
        mapper.deleteAllCart(userIdx);
    }

}
